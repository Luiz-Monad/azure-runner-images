param(
    [String] [Parameter (Mandatory=$true)] $TemplatePath,
    [String] [Parameter (Mandatory=$true)] $Location,
    [String] [Parameter (Mandatory=$true)] $TenantId,
    [String] [Parameter (Mandatory=$true)] $SubscriptionId,
    [String] [Parameter (Mandatory=$true)] $ClientId,
    [String] [Parameter (Mandatory=$true)] $ClientSecret,
    [String] [Parameter (Mandatory=$true)] $ImageResourceGroupName,
    [String] [Parameter (Mandatory=$true)] $ImageGallery,
    [String] [Parameter (Mandatory=$false)] $ImageName,
    [String] [Parameter (Mandatory=$false)] $ImageVersion,
    [String] [Parameter (Mandatory=$false)] $TempResourceGroupName,
    [String] [Parameter (Mandatory=$false)] $VirtualNetworkRG,
    [String] [Parameter (Mandatory=$false)] $VirtualNetworkName,
    [String] [Parameter (Mandatory=$false)] $VirtualNetworkSubnet,
    [String] [Parameter (Mandatory=$false)] $AllowedInboundIpAddresses = "[]",
    [String] [Parameter (Mandatory=$false)] $NgrokToken,
    [String] [Parameter (Mandatory=$false)] $NgrokSSHPubKey
)

function ConvertTo-Base64 {
    param (
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [string]$input
    )

    $bytes = [System.Text.Encoding]::UTF8.GetBytes($input)
    return [System.Convert]::ToBase64String($bytes)
}

if (-not (Test-Path $TemplatePath))
{
    Write-Error "'-TemplatePath' parameter is not valid. You have to specify correct Template Path"
    exit 1
}

$InstallPassword = [System.GUID]::NewGuid().ToString().ToUpper()

$SensitiveData = @(
    'StorageAccountLocation',
    'OSDiskUri',
    'OSDiskUriReadOnlySas',
    'TemplateUri',
    'TemplateUriReadOnlySas',
    ':  ->'
)

Write-Host "Show Packer Version"
packer --version

Write-Host "Download packer plugins"
packer init $TemplatePath

Write-Host "Validate packer template"
packer validate -syntax-only $TemplatePath

Write-Host "Build $ImageName ($ImageVersion) VM"
packer build `
            -var "location=$Location" `
            -var "tenant_id=$TenantId" `
            -var "subscription_id=$SubscriptionId" `
            -var "client_id=$ClientId" `
            -var "client_secret=$ClientSecret" `
            -var "image_resource_group_name=$ImageResourceGroupName" `
            -var "image_gallery=$ImageGallery" `
            -var "image_name=$ImageName" `
            -var "image_version=$ImageVersion" `
            -var "temp_resource_group_name=$TempResourceGroupName" `
            -var "virtual_network_resource_group_name=$VirtualNetworkRG" `
            -var "virtual_network_name=$VirtualNetworkName" `
            -var "virtual_network_subnet_name=$VirtualNetworkSubnet" `
            -var "allowed_inbound_ip_addresses=$($AllowedInboundIpAddresses)" `
            -var "install_password=$InstallPassword" `
            -var "ngrok_token=$($NgrokToken | ConvertTo-Base64)" `
            -var "ngrok_ssh_pubkey=$($NgrokSSHPubKey | ConvertTo-Base64)" `
            -color=false `
            $TemplatePath `
    | Where-Object {
        #Filter sensitive data from Packer logs
        $currentString = $_
        $sensitiveString = $SensitiveData | Where-Object { $currentString -match $_ }
        $sensitiveString -eq $null
    }
