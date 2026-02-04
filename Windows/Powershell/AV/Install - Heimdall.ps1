param (
    [string]$HeimdalLicenseKey = $env:HEIMDALKEY    

)
if (-not $HeimdalLicenseKey) {
    Write-Error "Heimdal License Key is required. Please provide it as a parameter."
    exit 1
}
$installerUrl = "https://prodcdn.heimdalsecurity.com/setup/HeimdalLatestVersion.msi"
$installerPath = "$env:TEMP\HeimdalLatestVersion.msi"
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

Start-Process msiexec -ArgumentList "/qn", "/i", $installerPath, "HEIMDALKEY=$env:HEIMDALKEY" -NoNewWindow -Wait

Remove-Item -Path $installerPath -Force
