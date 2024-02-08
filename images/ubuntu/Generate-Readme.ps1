using module ..\..\helpers\software-report-base\SoftwareReport.psm1
$json = Get-Content -Path .\Ubuntu2204-Report.json -Raw
$report = [SoftwareReport]::FromJson($json)
$report.ToMarkdown() | Out-File .\Ubuntu2204-Readme.md
