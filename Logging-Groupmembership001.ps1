#Logging-Groupmembership.ps1
#This script is used in WinTaskScheduler for logging security group memberships
#It contains input parameters for launching other script Get-UsersAndGroups.ps1
# Written by Alexey Yustyuzhenkov 24-04-2024
D:\AD_scripts\Get-UsersAndGroups.ps1 -SearchLocation 'OU=Developers,OU=Users,DC=practicum,DC=grp' | Export-CSV D:\LoggingFldAccessChanges\Report_Dev_user_groups_$((Get-Date).ToShortDateString().Replace("/","-")).csv -NoTypeInformation