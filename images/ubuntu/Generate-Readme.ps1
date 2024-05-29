using module ..\..\helpers\software-report-base\SoftwareReport.psm1

function gen ($ver) {
    $json = Get-Content -Path .\Ubuntu$ver-Report.json -Raw
    $report = [SoftwareReport]::FromJson($json)
    $report.ToMarkdown() | Out-File .\Ubuntu$ver-Readme.md
}

gen 2204
gen 2404
