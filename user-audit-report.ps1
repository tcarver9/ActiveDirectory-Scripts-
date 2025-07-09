#Generate AD User Audit Report
Get-ADUser -Filter * -Properties LastLogonDate, Enabled |
Select-Object Name, SamAccountName, Enabled, LastLogonDate |
Export-Csv "AD_User_Audit.csv" -NoTypeInformation
