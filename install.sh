#!/usr/bin/env bash

set -e

# Determine OS
OS="$(uname -s)"

install_bash() {
  ln -sf "$PWD/.bashrc" "$HOME/.bashrc"
}

install_zsh() {
  ln -sf "$PWD/.zshrc" "$HOME/.zshrc"
}

install_powershell() {
  # Windows uses PowerShell; copy to appropriate directory
  PROFILE_DIR="$HOME/Documents/PowerShell"
  mkdir -p "$PROFILE_DIR"
  cp "$PWD/Microsoft.PowerShell_profile.ps1" "$PROFILE_DIR/Microsoft.PowerShell_profile.ps1"
}

install_gitconfig() {
  ln -sf "$PWD/.gitconfig" "$HOME/.gitconfig"
}

case "$OS" in
  Linux*)
    install_bash
    install_zsh
    ;;
  Darwin*)
    install_zsh
    install_bash
    ;;
  MINGW*|CYGWIN*|MSYS*)
    install_powershell
    ;;
esac

install_gitconfig

echo "Dotfiles installed for $OS"
