#Bulk Disable Users from List
Get-Content "./sample-data/UserList.txt" | ForEach-Object {
    Disable-ADAccount -Identity $_
}
