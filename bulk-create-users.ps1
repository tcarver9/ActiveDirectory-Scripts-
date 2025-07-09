Import-Csv "./sample-data/NewUsers.csv" | ForEach-Object {
    New-ADUser -Name $_.Name `
               -GivenName $_.FirstName `
               -Surname $_.LastName `
               -SamAccountName $_.Username `
               -UserPrincipalName "$($_.Username)@yourdomain.com" `
               -AccountPassword (ConvertTo-SecureString $_.Password -AsPlainText -Force) `
               -Enabled $true `
               -Path "OU=Users,DC=yourdomain,DC=com"
}
