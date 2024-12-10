# Set the root folder
$path = "C:\"

# Prompt the user for the search term
$term = Read-Host "Enter the search term"

# Recursive search function
Write-Host "Results:"
function Search-Folder($FilePath, $SearchTerm) {
    # Get children
    $children = Get-ChildItem -Path $FilePath
    # For each child, see if it matches the search term, and if it is a folder, search it too.
    foreach ($child in $children) {
        $name = $child.Name
        if ($name -match $SearchTerm) {
            Write-Host "$FilePath\$name"
        }
        $isdir = Test-Path -Path "$FilePath\$name" -PathType Container
        if ($isdir) {
            Search-Folder -FilePath "$FilePath\$name" -SearchTerm $SearchTerm
        }
    }
}

# Call the search function with the specified values
Search-Folder -FilePath $path -SearchTerm $term
