Import-Module ActiveDirectory
Import-Csv users.csv | ForEach-Object {New-ADUser -AccountPassword (ConvertTo-SecureString $_.Password -AsPlainText -Force) -SamAccountName $_.SamAccountName -GivenName $_.FirstName -Surname $_.LastName -Name $_.Name -UserPrincipalName $_.UPN -Enabled $true}
