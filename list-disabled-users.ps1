# Script to list all disabled user accounts in Active Directory

Get-ADUser -Filter 'Enabled -eq $false' -Properties Name, Enabled |
Select-Object Name, Enabled |
Out-GridView -Title "Disabled AD Users"

# | Export-Csv -Path "disabled_users.csv" -NoTypeInformation
