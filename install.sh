#!/bin/bash

source="./themes/*"

# Set the destination path based on the OSTYPE variable
if [ "$OSTYPE" = "linux-gnu" ]; then
  destination="~/.config/obs-studio/themes/"
elif [ "$OSTYPE" = "darwin"* ]; then
  destination="~/Library/Application Support/obs-studio/themes/"
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
cp -rf "$source" "$destination"
echo "Theme installed successfully!"
read -p "Press Enter to exit"
