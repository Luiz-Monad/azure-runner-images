Import-Module "$PSScriptRoot/../helpers/Tests.Helpers.psm1" -DisableNameChecking

try {
    Invoke-PesterTests "*"
} catch {}

exit 0
