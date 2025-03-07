#!/bin/sh

# function to check if a command is installed
check_command() {
  if ! command -v "$1" >/dev/null 2>&1; then
    echo "'$1' command not found. Please install it first."
    exit 1
  fi
}

# check if 'unzip' and 'wget' are installed
check_command unzip
check_command wget

# the fonts directory
fontsDir="$HOME/.local/share/font"

# function to install a font
install_font() {
  local font_name=$1
  local font_url=$2

  echo "Installing $font_name..."

  # create the font directory
  mkdir -p "$fontsDir/$font_name" || { echo "Failed to create directory $fontsDir/$font_name"; exit 1; }

  # download the font zip file into the font directory
  wget "$font_url" -O "$fontsDir/$font_name/$font_name.zip" || { echo "Failed to download $font_name"; exit 1; }

  # unzip the downloaded font file
  unzip "$fontsDir/$font_name/$font_name.zip" -d "$fontsDir/$font_name" || { echo "Failed to unzip $font_name"; exit 1; }

  echo "$font_name font downloaded and extracted successfully!"
}

# Create the fonts directory if it doesn't exist
mkdir -p "$fontsDir" || { echo "Failed to create directory $fontsDir"; exit 1; }

# install FantasqueSansMono font
install_font "FantasqueSansMono" "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FantasqueSansMono.zip"

echo "All fonts installed successfully!"
