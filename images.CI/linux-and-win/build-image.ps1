param(
    [String] [Parameter (Mandatory=$true)] $TemplatePath,
    [String] [Parameter (Mandatory=$true)] $ClientId,
    [String] [Parameter (Mandatory=$true)] $ClientSecret,
    [String] [Parameter (Mandatory=$true)] $Location,
    [String] [Parameter (Mandatory=$true)] $ImageSharedGallery,
    [String] [Parameter (Mandatory=$true)] $ImageName,
    [String] [Parameter (Mandatory=$true)] $ImageVersion,
    [String] [Parameter (Mandatory=$true)] $ImageResourceGroupName,
    [String] [Parameter (Mandatory=$true)] $TempResourceGroupName,
    [String] [Parameter (Mandatory=$true)] $SubscriptionId,
    [String] [Parameter (Mandatory=$true)] $TenantId,
    [String] [Parameter (Mandatory=$false)] $VirtualNetworkName,
    [String] [Parameter (Mandatory=$false)] $VirtualNetworkSubnet,
    [String] [Parameter (Mandatory=$false)] $VirtualNetworkRG,
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

packer validate -syntax-only $TemplatePath

$SensitiveData = @(
    'OSType',
    'StorageAccountLocation',
    'OSDiskUri',
    'OSDiskUriReadOnlySas',
    'TemplateUri',
    'TemplateUriReadOnlySas',
    ':  ->'
)

Write-Host "Show Packer Version"
packer --version

Write-Host "Build $ImageName ($ImageVersion) VM"
packer build    -var "client_id=$ClientId" `
                -var "client_secret=$ClientSecret" `
                -var "location=$Location" `
                -var "image_shared_gallery=$ImageSharedGallery" `
                -var "image_name=$ImageName" `
                -var "image_version=$ImageVersion" `
                -var "image_resource_group_name=$ImageResourceGroupName" `
                -var "temp_resource_group_name=$TempResourceGroupName" `
                -var "subscription_id=$SubscriptionId" `
                -var "tenant_id=$TenantId" `
                -var "virtual_network_name=$VirtualNetworkName" `
                -var "virtual_network_subnet_name=$VirtualNetworkSubnet" `
                -var "virtual_network_resource_group_name=$VirtualNetworkRG" `
                -var "ngrok_token=$($NgrokToken | ConvertTo-Base64)" `
                -var "ngrok_ssh_pubkey=$($NgrokSSHPubKey | ConvertTo-Base64)" `
                -var "run_validation_diskspace=$env:RUN_VALIDATION_FLAG" `
                -var "install_password=$InstallPassword" `
                -color=false `
                $TemplatePath `
        | Where-Object {
            #Filter sensitive data from Packer logs
            $currentString = $_
            $sensitiveString = $SensitiveData | Where-Object { $currentString -match $_ }
            $sensitiveString -eq $null
        }
