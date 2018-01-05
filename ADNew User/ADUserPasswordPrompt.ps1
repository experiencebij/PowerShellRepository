<# First off, creating new user in AD.
 Saul advises ending with a -whatIf to ensure I don't break absolutely everything. 
 First off we want to store a password for this user so that when we create them, that's the password they get.
#>

$pw = Read-Host -Prompt 'Enter a Password for this user' -AsSecureString

# We have now stored $pw as a secure string, this means that New-ADUser will accept this password. 

New-ADUser TestUser -GivenName Test -Surname User -OtherAttributes @{Title="Director of Test";telephoneNumber="1-800-5050";mail="jinnes@compuvision.biz";department="Testers Anonymous";description="Test Account Please Ignore";Manager1="Better Call Saul";Office="Remote"} -AccountPassword $pw -ChangePasswordAtLogon $True -Enabled $True -whatIf

# So we've created a new user with a bunch of other attributes, taken the password from $pw and inserted it into the ADUser TestUser, and forced it so that when they attempt to logon, they will have to change their password. We've also added -whatIf because James cannot be trusted around machines.

