#Find Locked-Out Accounts
Search-ADAccount -LockedOut -UsersOnly |
Select-Object Name, SamAccountName, LockedOut
