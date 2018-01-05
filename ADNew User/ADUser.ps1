<# 

Creating a new user. 
This is a simple New-ADUser with a pre-set password, and details filled in. 

This new user: Password is Jan2018!, Change Password @ Logon is set as False so that we can set the users software up.
Remember: 
New-ADUser Property Name - AD Property on GUI (ADAC) - LDAP Attribute
DisplayName                 Display Name                displayName
GivenName                   First name                  givenName
Initials                    Middle Initials             initials
Name                        Full Name                   name
OtherName                   -                           middleName
SamAccountName              UserSamAccountNameLogon     sAMAccountName
Surname                     Last name                   sn

So for this we have:
DisplayName: Test User
Name: Test User
GivenName: Test
Surname: User

#>

New-ADUser -AccountPassword (ConvertTo-SecureString "Jan2018!" -AsPlainText -Force) -ChangePasswordAtLogon  $false  -City Edmonton  -Company "CompuVision Test" -DisplayName "Test User" -Enabled $true -MobilePhone "+1 11 222 3333" -Name "User, Test" -SamAccountName tuser -Title CFO -Path "OU=Users,OU=Company,DC=home,DC=local" -GivenName "Test" -Surname "User" -UserPrincipalName ("tuser" + "@compuvision.local") -Department "Test Department" -Description "Test User" -Office "HQ"