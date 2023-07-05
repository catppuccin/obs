#!/usr/bin/env bash
set -euo pipefail

source="$(dirname "$0")/themes/"

# Set the destination path based on the OSTYPE variable
if [ "$OSTYPE" = "linux-gnu" ]; then
  destination="$HOME/.config/obs-studio/themes/"

  if command -v flatpak &>/dev/null; then
    if flatpak list --columns=application | grep -q "com.obsproject.Studio"; then
      echo "Found Flatpak installation of OBS Studio, installing for Flatpak"
      destination="$HOME/.var/app/com.obsproject.Studio/config/obs-studio/themes/"
    fi
  fi
elif [[ "$OSTYPE" = darwin* ]]; then
  destination="$HOME/Library/Application Support/obs-studio/themes/"
else
  echo "Error: Unsupported operating system"
  exit 1
fi

# Check if the destination folder exists. If not, create it.
if [ ! -d "$destination" ]; then
  mkdir -p "$destination"
  echo "The destination folder does not exist. Creating it now..."
fi

# Copy the files from the source to the destination, overwriting any existing files
cp -rf "$source/"* "$destination"
echo "Theme installed successfully!"
read -r -p "Press Enter to exit"
