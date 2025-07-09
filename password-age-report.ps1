#Users Who Haven't Changed Password in X Days
Get-ADUser -Filter * -Properties PasswordLastSet |
Where-Object { $_.PasswordLastSet -lt (Get-Date).AddDays(-90) } |
Select-Object Name, SamAccountName, PasswordLastSet
