#List Users in a Specific OU
Get-ADUser -Filter * -SearchBase "OU=Accounting,DC=yourdomain,DC=com" `
  -Properties DisplayName, EmailAddress |
Select-Object DisplayName, EmailAddress
