# Script to disable accounts that have not logged in for 90+ days

$Threshold = (Get-Date).AddDays(-90)

Search-ADAccount -AccountInactive -UsersOnly -TimeSpan 90.00:00:00 |
Where-Object { $_.LastLogonDate -lt $Threshold -and $_.Enabled -eq $true } |
ForEach-Object {
    Disable-ADAccount -Identity $_.SamAccountName
    Write-Host "Disabled account:" $_.SamAccountName
}
