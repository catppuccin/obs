_default:
  @just --list

build:
  whiskers obs.tera

install: build
  #!/usr/bin/env bash
  set -euo pipefail
  if [[ "$OSTYPE" == "linux"* ]]; then
    dest="${XDG_CONFIG_HOME:-$HOME/.config}/obs-studio/themes"
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    dest="$HOME/Library/Application Support/obs-studio/themes"
  else
    echo "Unsupported OS: $OSTYPE" >&2
    exit 1
  fi
  mkdir -p "$dest"
  cp themes/Catppuccin.obt themes/Catppuccin_*.ovt "$dest/"
  echo "Installed to $dest"
