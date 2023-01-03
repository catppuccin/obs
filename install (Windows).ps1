$source = ".\themes\*"
$destination = "$env:APPDATA\obs-studio\themes"

# Check if the destination folder exists. If not, create it.
if (!(Test-Path -Path $destination))
{
    Write-Host "The destination folder does not exist. Creating it now..."
    New-Item -ItemType Directory -Path $destination | Out-Null
}

# Copy the files from the source to the destination, overwriting any existing files
Copy-Item -Path $source -Destination $destination -Recurse -Force
Write-Host "Theme installed successfully!"
Read-Host "Press Enter to exit"
