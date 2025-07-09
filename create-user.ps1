# Script to create a new user in Active Directory

# Set user details
$FirstName = "Tyler"
$LastName = "Carver"
$Username = "tcarver"
$DisplayName = "$FirstName $LastName"
$Password = ConvertTo-SecureString "P@ssword123" -AsPlainText -Force
$OU = "OU=Users,DC=yourdomain,DC=com" # Change this to match your environment

# Create the user
New-ADUser -Name $DisplayName `
  -GivenName $FirstName `
  -Surname $LastName `
  -SamAccountName $Username `
  -UserPrincipalName "$Username@yourdomain.com" `
  -AccountPassword $Password `
  -DisplayName $DisplayName `
  -Enabled $true `
  -Path $OU

Write-Host "User $DisplayName created successfully."
