# Script to export all users with key properties to a CSV file

Get-ADUser -Filter * -Property Name, EmailAddress, Department |
Select-Object Name, EmailAddress, Department |
Export-Csv -Path "C:\ADUsers.csv" -NoTypeInformation

Write-Host "Exported all users to C:\ADUsers.csv"
