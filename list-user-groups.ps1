#List Group Memberships for a User
Get-ADUser -Identity "tcarver" -Properties MemberOf |
Select-Object -ExpandProperty MemberOf
