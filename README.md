# Dotfiles for Mac, Linux, and Windows

These dotfiles provide a complete set of configuration files and scripts to bootstrap a development environment on **macOS**, **Linux**, and **Windows**. They include shell configurations, Git settings, editor preferences, and installation scripts that detect your operating system and apply the appropriate configurations.

## Features
- Cross-platform: separate configuration files for Bash, Zsh, and PowerShell to support macOS, Linux, and Windows.
- Automated setup: a single install script detects your OS, symlinks or copies files into place, and installs common tools.
- Custom aliases and functions: includes navigation aliases such as ll and la, Git shortcuts, and other utilities. You can extend or override these in a custom.sh file.
- Modular structure: each OS-specific config is isolated in its own folder (macos/, linux/, windows/) so you can easily maintain and add new settings.
- Extensible: add your own dotfiles and update the install script to deploy them.

## Usage
1. Clone this repository into a safe location, such as `~/.dotfiles`:
   git clone https://github.com/aherendeen/dotfiles.git ~/.dotfiles
2. Run the installer to set up your environment:
   cd ~/.dotfiles
   chmod +x install.sh
   ./install.sh
3. The script will:
   - Detect whether you are on macOS, Linux, or Windows (via WSL or PowerShell).
   - Back up any existing dotfiles into a backup/ directory.
   - Symlink or copy the new configuration files into your home directory.
4. Restart your shell or terminal to load the new configurations.

## Contents
- bashrc — base Bash configuration.
- zshrc — Zsh configuration.
- gitconfig — global Git configuration with sensible defaults.
- Microsoft.PowerShell_profile.ps1 — PowerShell profile for Windows.
- install.sh — installer script that orchestrates the setup process.

Feel free to customize these files to suit your workflow. Check each file for comments describing how to adjust settings for your preferences.
