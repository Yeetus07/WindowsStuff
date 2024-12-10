@echo off

REM Background Intelligent Transfer Service
sc config "BITS" start= automatic
sc start "BITS"

REM DNS Client
sc config "Dnscache" start= automatic
sc start "Dnscache"

REM Windows Defender Advanced Threat Protection Service
sc config "Sense" start= automatic
sc start "Sense"

REM Windows Defender Antivirus Network Inspection Service
sc config "WdNisSvc" start= automatic
sc start "WdNisSvc"

REM Windows Defender Antivirus Service
sc config "WinDefend" start= automatic
sc start "WinDefend"

REM Windows Defender Firewall
sc config "mpssvc" start= automatic
sc start "mpssvc"

REM Windows Event Collector
sc config "Wecsvc" start= automatic
sc start "Wecsvc"

REM Windows Event Log
sc config "EventLog" start= automatic
sc start "EventLog"

REM Windows Push Notifications
sc config "WpnService" start= automatic
sc start "WpnService"

REM Windows Search
sc config "WSearch" start= automatic
sc start "WSearch"

REM Windows Update
sc config "wuauserv" start= automatic
sc start "wuauserv"

REM Windows Update Medic Service
sc config "WaaSMedicSvc" start= automatic
sc start "WaaSMedicSvc"