$filePath = Read-Host "Enter the path to the file"


if (Test-Path $filePath -PathType Leaf) {
    # Calculate SHA-256 hash
    $hash = Get-FileHash -Path $filePath -Algorithm SHA256

    # Display the hash value
    Write-Output "SHA-256 Hash of '$filePath': $($hash.Hash)"
} else {
    Write-Output "File not found at '$filePath'"
}