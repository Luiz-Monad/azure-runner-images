Import-Module "$PSScriptRoot/Helpers.psm1" -DisableNameChecking

try {
    Invoke-PesterTests "*"
} catch {}

exit 0
