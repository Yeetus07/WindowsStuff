@echo off

REM ActiveX
sc stop "AxInstSV"
sc config "AxInstSV" start= disabled

REM AdobeLM Service
sc stop "adobelmsvc"
sc config "adobelmsvc" start= disabled

REM Alerter Service
sc stop "Alerter"
sc config "Alerter" start= disabled

REM Alljoyn Router Service
sc stop "AJRouter"
sc config "AJRouter" start= disabled

REM Application Layer Gateway
sc stop "ALG"
sc config "ALG" start= disabled

REM Application Management
sc stop "AppMgmt"
sc config "AppMgmt" start= disabled

REM ASP State Service
sc stop "aspnet_state"
sc config "aspnet_state" start= disabled

REM Bluetooth Support Service
sc stop "bthserv"
sc config "bthserv" start= disabled

REM Bluetooth User Support Service
sc stop "BluetoothUserService"
sc config "BluetoothUserService" start= disabled

REM Capture Service
sc stop "CaptureService"
sc config "CaptureService" start= disabled

REM Clip Book
sc stop "ClipSrv"
sc config "ClipSrv" start= disabled

REM Contact Data
sc stop "PimIndexMaintenanceSvc"
sc config "PimIndexMaintenanceSvc" start= disabled

REM Cryptographic Services
REM sc stop "CryptSvc"
REM sc config "CryptSvc" start= disabled

REM Distributed Transaction Services
sc stop "MSDTC"
sc config "MSDTC" start= disabled

REM dmwappushsvc
sc stop "dmwappushsvc"
sc config "dmwappushsvc" start= disabled

REM Downloaded Maps Manager
sc stop "MapsBroker"
sc config "MapsBroker" start= disabled

REM Microsoft FTP
sc stop "FTPSVC"
sc config "FTPSVC" start= disabled

REM Geolocation Service
sc stop "lfsvc"
sc config "lfsvc" start= disabled

REM GameDVR and Broadcast User Service
sc stop "BcastDVRUserService"
sc config "BcastDVRUserService" start= disabled

REM Internet Connection Sharing (ICS)
sc stop "SharedAccess"
sc config "SharedAccess" start= disabled

REM KtmRm for Distributed Transaction Coordinator
sc stop "KtmRm"
sc config "KtmRm" start= disabled

REM Link-Layer Topology Discovery Mapper
sc stop "lltdsvc"
sc config "lltdsvc" start= disabled

REM Microsoft Account Sign-in Assistant
sc stop "wlidsvc"
sc config "wlidsvc" start= disabled

REM Microsoft App-V Client
sc stop "AppVClient"
sc config "AppVClient" start= disabled

REM Microsoft Passport
sc stop "NgcSvc"
sc config "NgcSvc" start= disabled

REM Microsoft Passport Container
sc stop "NgcCtnrSvc"
sc config "NgcCtnrSvc" start= disabled

REM Network Connection Broker
sc stop "NcbService"
sc config "NcbService" start= disabled

REM Phone Service
sc stop "PhoneSvc"
sc config "PhoneSvc" start= disabled

REM Plug and Play
sc stop "PlugPlay"
sc config "PlugPlay" start= disabled

REM Print Spooler
sc stop "Spooler"
sc config "Spooler" start= disabled

REM Printer Extensions and Notifications
sc stop "PrintNotify"
sc config "PrintNotify" start= disabled

REM Program Compatibility Assistant Service
sc stop "PcaSvc"
sc config "PcaSvc" start= disabled

REM Quality Windows Audio Video Experience
sc stop "QWAVE"
sc config "QWAVE" start= disabled

REM Radio Management Service
sc stop "RmSvc"
sc config "RmSvc" start= disabled

REM Remote Access Auto Connection Manager
sc stop "RasAuto"
sc config "RasAuto" start= disabled

REM Remote Access Connection Manager
sc stop "RasMan"
sc config "RasMan" start= disabled

REM Remote Desktop Configuration
sc stop "SessionEnv"
sc config "SessionEnv" start= disabled

REM Remote Desktop Services
sc stop "TermService"
sc config "TermService" start= disabled

REM Remote Desktop Services UserMode Port Redirector
sc stop "UmRdpService"
sc config "UmRdpService" start= disabled

REM Remote Procedure Call (RPC) Locator
sc stop "RpcLocator"
sc config "RpcLocator" start= disabled

REM Remote Registry
sc stop "RemoteRegistry"
sc config "RemoteRegistry" start= disabled

REM Routing and Remote Access
sc stop "RemoteAccess"
sc config "RemoteAccess" start= disabled

REM Secure Socket Tunneling Protocol Service
sc stop "SstpSvc"
sc config "SstpSvc" start= disabled

REM Sensor Data Service
sc stop "SensorDataService"
sc config "SensorDataService" start= disabled

REM Sensor Monitoring Service
sc stop "SensrSvc"
sc config "SensrSvc" start= disabled

REM Sensor Service
sc stop "SensorService"
sc config "SensorService" start= disabled

REM Shell Hardware Detection
sc stop "ShellHWDetection"
sc config "ShellHWDetection" start= disabled

REM Simple TCP IP Services
sc stop "simptcp"
sc config "simptcp" start= disabled

REM Smart Card Device Enumeration Service
sc stop "ScDeviceEnum"
sc config "ScDeviceEnum" start= disabled

REM Smart Card Removal Policy
sc stop "SCPolicySvc"
sc config "SCPolicySvc" start= disabled

REM Special Administration Console Helper
sc stop "sacsvr"
sc config "sacsvr" start= disabled

REM Still Image Acquisition Events
sc stop "WiaRpc"
sc config "WiaRpc" start= disabled

REM Sync Host
sc stop "OneSyncSvc"
sc config "OneSyncSvc" start= disabled

REM Telephony
sc stop "TapiSrv"
sc config "TapiSrv" start= disabled

REM Telnet
DISM /online /disable-feature /featurename:TelnetClient
DISM /online /disable-feature /featurename:TelnetServer
sc stop "TlntSvr"
sc config "TlntSvr" start= disabled

REM Touch Keyboard and Handwriting Panel Service
sc stop "TabletInputService"
sc config "TabletInputService" start= disabled

REM UPnP Device Host
sc stop "upnphost"
sc config "upnphost" start= disabled

REM User Data Access
sc stop "UserDataSvc"
sc config "UserDataSvc" start= disabled

REM WalletService
sc stop "WalletService"
sc config "WalletService" start= disabled

REM Windows Camera Frame Server
sc stop "FrameServer"
sc config "FrameServer" start= disabled

REM Windows Image Acquisition (WIA)
sc stop "stisvc"
sc config "stisvc" start= disabled

REM Windows Insider Service
sc stop "wisvc"
sc config "wisvc" start= disabled

REM Windows Mobile Hotspot Service
sc stop "icssvc"
sc config "icssvc" start= disabled

REM Windows Remote Management (WS-Management)
sc stop "WinRM"
sc config "WinRM" start= disabled

REM Xbox Live Auth Manager
sc stop "XblAuthManager"
sc config "XblAuthManager" start= disabled

REM Xbox Live Game Save
sc stop "XblGameSave"
sc config "XblGameSave" start= disabled