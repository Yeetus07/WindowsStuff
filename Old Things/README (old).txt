How to use:

Extract OHS.zip and copy OHS folder to the C: directory

Open Powershell as administrator

Run set-executionpolicy remotesigned

Type "a" and press enter

Run "cd C:\OHS"

Now type each of the following into powershell (one at a time) in this order

Prep.ps1
Install.bat
PostInstall.ps1
Hardening.reg

Reboot

After reboot, open group policy and navigate to
Local Computer Policy > Computer Configuration > Windows Settings > Security Settings > Windows Defender Firewall...
On the "Windows Defender Firewall" option under the folder (the one with the icon), right click and press import policy
Find "firewall.wfw" in C:\OHS and press open to apply