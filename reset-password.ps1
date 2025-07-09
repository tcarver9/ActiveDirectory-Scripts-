# Script to reset a user's password and unlock the account

$Username = "tcarver"
$NewPassword = ConvertTo-SecureString "N3wP@ssword!" -AsPlainText -Force

Set-ADAccountPassword -Identity $Username -Reset -NewPassword $NewPassword
Unlock-ADAccount -Identity $Username

Write-Host "Password reset and account unlocked for $Username."
