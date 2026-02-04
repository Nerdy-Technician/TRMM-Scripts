$HostsFile = "$env:SystemRoot\System32\drivers\etc\hosts"

$IP       = $env:IP
$Hostname = $env:Hostname

if (-not $IP -or -not $Hostname) {
    Write-Output "IP or Hostname environment variable not set"
    exit 1
}

$Entry = "$IP`t$Hostname"

if (Select-String -Path $HostsFile -Pattern "^\s*$IP\s+$Hostname" -Quiet) {
    Write-Output "Entry already exists in hosts file."
    exit 2
}
else {
    Add-Content -Path $HostsFile -Value $Entry
    Write-Output "Entry added successfully:"
    Write-Output $Entry
    exit 0
}