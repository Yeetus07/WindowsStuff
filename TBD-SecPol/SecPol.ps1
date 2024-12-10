If (Test-Path -Path $env:SystemDrive\OHS_WIN\Modules\TBD-SecPol\AdmPwd.adml ) {
    #Copy ADMX & ADML File to %SystemRoot%\PolicyDefination
    Get-ChildItem -Path $env:SystemDrive\OHS_WIN\Modules\TBD-SecPol | ? Name -like "*.admx" | ForEach-Object {Move-Item $env:SystemDrive\OHS_WIN\Modules\TBD-SecPol\$_ -Destination $env:SystemDrive\Windows\PolicyDefinitions}
    Get-ChildItem -Path $env:SystemDrive\OHS_WIN\Modules\TBD-SecPol | ? Name -like "*.adml" | ForEach-Object {Move-Item $env:SystemDrive\OHS_WIN\Modules\TBD-SecPol\$_ -Destination $env:SystemDrive\Windows\PolicyDefinitions\en-US}
    Write-Host "[TBD - Security Policies] " -Foregroundcolor Cyan -BackgroundColor DarkBlue -NoNewline
    Write-Host "Added ADMX and ADML Policy Definitions" -ForegroundColor White
    #Silent Install LAPS 
    msiexec.exe /i $env:SystemDrive\OHS_WIN\Modules\TBD-SecPol\LAPS.x64.msi /quiet
    Write-Host "[TBD - Security Policies] " -Foregroundcolor Cyan -BackgroundColor DarkBlue -NoNewline
    Write-Host "Installed Local Administrator Password Solution" -ForegroundColor White
    }

$LGPO = $env:SystemDrive+"\OHS_WIN\Modules\TBD-SecPol\LGPO.exe"

#Apply Local Security Policies
& $env:SystemDrive\OHS_WIN\Modules\TBD-SecPol\LGPO.exe /s "$env:SystemDrive\OHS_WIN\Modules\TBD-SecPol\OHS.inf"
& $env:SystemDrive\OHS_WIN\Modules\TBD-SecPol\LGPO.exe /ac "$env:SystemDrive\OHS_WIN\Modules\TBD-SecPol\OHS.csv"
Write-Host "[TBD - Security Policies]" -Foregroundcolor Cyan -BackgroundColor DarkBlue -NoNewline 
Write-Host " Installed Local Security Policies" -ForegroundColor White -BackgroundColor DarkBlue
#Apply Group Policies
& $env:SystemDrive\OHS_WIN\Modules\TBD-SecPol\LGPO.exe /m "$env:SystemDrive\OHS_WIN\Modules\TBD-SecPol\Machine.pol"
& $env:SystemDrive\OHS_WIN\Modules\TBD-SecPol\LGPO.exe /u "$env:SystemDrive\OHS_WIN\Modules\TBD-SecPol\user.pol"
Write-Host "[TBD - Security Policies]" -Foregroundcolor Cyan -BackgroundColor DarkBlue -NoNewline
Write-Host " Installed Group Policies" -ForegroundColor White -BackgroundColor DarkBlue