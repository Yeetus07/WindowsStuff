$ProgressPreference = "SilentlyContinue"
#Install-Module -Name PSMenu
$ProgressPreference = "Continue"



class MyMenuOption {
    [String]$DisplayName
    [ScriptBlock]$Script

    [String]ToString() {
        Return $This.DisplayName
    }
}

function New-MenuItem([String]$DisplayName, [ScriptBlock]$Script) {
    $MenuItem = [MyMenuOption]::new()
    $MenuItem.DisplayName = $DisplayName
    $MenuItem.Script = $Script
    Return $MenuItem
}

$Opts = @(
    $(New-MenuItem -DisplayName "01 - User Management" -Script { Write-Host "1" }),
    $(New-MenuItem -DisplayName "02 - Applications" -Script { Write-Host "1" })
)

$Chosen = Show-Menu -MenuItems $Opts

& $Chosen.Script

Write-Host $Option