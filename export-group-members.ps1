#Export All Group Members to CSV
Get-ADGroup -Filter * | ForEach-Object {
    Get-ADGroupMember $_.Name | Select-Object Name, SamAccountName, @{Name="Group";Expression={$_.Name}}
} | Export-Csv "GroupMembers.csv" -NoTypeInformation
