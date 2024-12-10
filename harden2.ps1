# Read content from the file
Get-Content "C:\OHS_WIN\ohs.txt"

# Menu loop
do {
    # Display menu options
    Write-Host "A. All Modules"
    Write-Host "1. Services"
    Write-Host "2. Users"
    Write-Host "3. Local Security Policy"
    Write-Host "4. Firefox Installer/Updater"
    Write-Host "5. SHA256 Finder"
    Write-Host "6. File Size Finder"
    Write-Host "7. User List"
    Write-Host "8. Exit"

    # Get user input
    $userChoice = Read-Host "Enter the number or letter of your choice"

    # Process user choice
    switch ($userChoice) {
        'A' {
            Write-Host "You selected all modules"
            . "$env:SystemDrive\OHS_WIN\Modules\01-Users\users.ps1"
            . "$env:SystemDrive\OHS_WIN\Modules\TBD-Services\enable.bat"
            . "$env:SystemDrive\OHS_WIN\Modules\TBD-Services\disable.bat"
            . "$env:SystemDrive\OHS_WIN\Modules\TBD-SecPol\SecPol.ps1"
            # Add the logic for other modules as needed
        }
        '1' {
            Write-Host "You selected Services" 
            . "$env:SystemDrive\OHS_WIN\Modules\TBD-Services\enable.bat"
            . "$env:SystemDrive\OHS_WIN\Modules\TBD-Services\disable.bat"
        }
        '2' {
            Write-Host "You selected users" 
            . "$env:SystemDrive\OHS_WIN\Modules\01-Users\users.ps1"  
        }
        '3' {
            Write-Host "You selected local security policy" 
            . "$env:SystemDrive\OHS_WIN\Modules\TBD-SecPol\SecPol.ps1"   
        }
        '4' {
            Write-Host "You selected firefox installer/updater"
            . "$env:SystemDrive\OHS_WIN\Modules\02-Applications\firefox.ps1"
        }
        '5' {
            Write-Host "You selected SHA256 finder"
            $filePath = Read-Host "Enter the path to the file"
            if (Test-Path $filePath -PathType Leaf) {
                $hash = Get-FileHash -Path $filePath -Algorithm SHA256
                Write-Output "SHA-256 Hash of '$filePath': $($hash.Hash)"
            } else {
                Write-Output "File not found at '$filePath'"
            }
        }
        '6' {
            Write-Host "You selected File Size Finder"
            $filePath = Read-Host "Enter the path to the file"
            $sizeUnit = Read-Host "Enter the desired size unit (MB, GB, TB, etc.)"
            if (Test-Path $filePath -PathType Leaf) {
                $fileSize = (Get-Item $filePath).length
                $formattedSize = switch -Regex ($sizeUnit.ToUpper()) {
                    "MB" { "{0:N2} MB" -f ($fileSize / 1MB) }
                    "GB" { "{0:N2} GB" -f ($fileSize / 1GB) }
                    "TB" { "{0:N2} TB" -f ($fileSize / 1TB) }
                    default { "Invalid size unit" }
                }
                Write-Output "Size of '$filePath': $formattedSize"
            } else {
                Write-Output "File not found at '$filePath'"
            }
        }
        '7' {
            Write-Host "You selected User List"
            # Add logic to get a list of all active users and admins
            $userList = Get-LocalUser | Select-Object Name, FullName, Description
            $userList | Format-Table -AutoSize

            # Save user information to a Notepad file
            $userList | Out-File "$env:USERPROFILE\Downloads\UserList.txt"
            Write-Host "User List and Passwords saved to Downloads\UserList.txt"
        }
        '8' {
            Write-Host "Exiting..."
            get-content "C:\OHS_WIN\exiting....txt"
            break
        }
        default {
            Write-Host "Invalid selection. Please enter a number between 1 and 8."
        }
    }
} while ($userChoice -ne '8')
