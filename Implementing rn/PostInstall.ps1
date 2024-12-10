#Disable Online Tips
$RegPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer"
$OnlineTips = "AllowOnlineTips"
New-ItemProperty -Path $RegPath -Name $OnlineTips -Value "0" -PropertyType DWord

#Set 'NetBIOS node type' to 'P-node' (Ensure NetBT Parameter 'NodeType' is set to '0x2 (2)')
$NodeType = "NodeType"
$RegPathNodeType = "HKLM:\System\CurrentControlSet\Services\NetBT\Parameters"
New-ItemProperty -Path $RegPathNodeType -Name NodeType -Value "0x2" -PropertyType DWord

#Remote host allows delegation of non-exportable credentials' is set to 'Enabled
$RegPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows"
$CredentialDelegation = "CredentialsDelegation"
New-Item -Path $RegPath -Name $CredentialDelegation
New-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\CredentialsDelegation -Name AllowProtectedCreds -Value "1" -PropertyType DWord

#Ensure 'Configure Authenticated Proxy usage for the Connected User Experience and Telemetry service' is set to 'Enabled: Disable Authenticated Proxy usage'
$RegPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection"
$DisableAuthProxy = "DisableEnterpriseAuthProxy"
New-ItemProperty -Path $RegPath -Name $DisableAuthProxy -Value "1" -PropertyType DWord

#Ensure 'Allow Message Service Cloud Sync' is set to 'Disabled' (Scored)
$RegPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\"
$Messaging = "Messaging"
New-Item -Path $RegPath -Name $Messaging
New-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Messaging -Name AllowMessageSync -Value "0" -PropertyType DWord

#Ensure 'Block all consumer Microsoft account user authentication' is set to 'Enabled'
$RegPath = "HKLM:\SOFTWARE\Policies\Microsoft\"
$MicrosoftAccount = "MicrosoftAccount"
New-Item -Path $RegPath -Name $MicrosoftAccount
New-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftAccount -Name DisableUserAuth -Value "1" -PropertyType DWord

#Ensure 'Allow Cloud Search' is set to 'Enabled: Disable Cloud Search'
$RegPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\"
$WindowsSearch = "Windows Search"
New-Item -Path $RegPath -Name $WindowsSearch
New-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name AllowCloudSearch -Value "0" -PropertyType Dword