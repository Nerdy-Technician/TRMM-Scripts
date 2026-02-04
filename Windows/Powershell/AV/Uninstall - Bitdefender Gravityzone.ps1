$RemoveKey = $env:RemoveKey

if (-not $RemoveKey) {
    Write-Output "RemoveKey environment variable not set"
    exit 1
}

$Url  = "https://download.bitdefender.com/SMB/Hydra/release/bst_win/uninstallTool/BEST_uninstallTool.exe"
$Path = "$env:TEMP\BEST_uninstallTool.exe"


Invoke-WebRequest -Uri $Url -OutFile $Path -UseBasicParsing

Start-Process -FilePath $Path `
    -ArgumentList "/bdparams", "/noWait", "/password=$RemoveKey" `
    -NoNewWindow -Wait

exit 0