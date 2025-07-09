#Move Users to New OU
Get-Content "./sample-data/UsersToMove.txt" | ForEach-Object {
    Move-ADObject -Identity (Get-ADUser -Identity $_).DistinguishedName -TargetPath "OU=NewOU,DC=yourdomain,DC=com"
}
