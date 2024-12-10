#Funny cyber logo
get-content C:\OHS_WIN\ohs.txt

# Specify the path to the registry file (.reg)
$regFilePath = "C:\OHS_WIN\Implementing rn\Hardening.reg"

# Import the registry settings
Merge-Item -Path $regFilePath -Force

#This all has to be reorder i think
& $env:SystemDrive\OHS_WIN\Modules\01-Users\users.ps1
& $env:SystemDrive\OHS_WIN\Modules\TBD-Services\enable.bat
& $env:SystemDrive\OHS_WIN\Modules\TBD-Services\disable.bat
& $env:SystemDrive\OHS_WIN\Modules\TBD-SecPol\SecPol.ps1

# This should import the firewall
# Specify the path to the exported firewall rule file
$ruleFilePath = "C:\OHS_WIN\Implementing rn\firewall.wfw"
#Import the firewall rule
Import-NetFirewallRule -Filepath $ruleFilePath

#This works but barely lmao
get-content C:\OHS_WIN\Goodbye\Goodbye.txt