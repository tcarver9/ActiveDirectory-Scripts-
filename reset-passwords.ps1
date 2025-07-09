#Reset Passwords for Multiple Users
Get-Content "./sample-data/UsersToReset.txt" | ForEach-Object {
    Set-ADAccountPassword -Identity $_ -Reset -NewPassword (ConvertTo-SecureString "TempP@ss123" -AsPlainText -Force)
}
