# Dotfiles for macOS, Linux & Windows  

This repository provides a robust, cross‑platform dotfiles setup inspired by some of the most popular dotfiles on GitHub. It uses a Git repository to store configuration for Bash, Zsh and PowerShell, along with package lists and an installation script that works across macOS, Linux and Windows.  

## Philosophy  

These dotfiles aim to deliver a consistent developer environment across all your machines. They draw inspiration from open‑source dotfile repositories like holman/dotfiles, mathiasbynens/dotfiles and paulirish/dotfiles [The Ultimate Guide to Mastering Dotfiles](https://www.daytona.io/dotfiles/ultimate-guide-to-dotfiles#:~:text=1,Repository%3A%C2%A0holman%2Fdotfiles) as well as modern dotfile managers such as chezmoi [chezmoi - chezmoi](https://chezmoi.io/#:~:text=chezmoi%20,What%20does%20chezmoi%20do) and Punktf ([Shemnei/punktf: ⚡ A cross-platform multi-target dotfiles ...](https://github.com/Shemnei/punktf#:~:text=Shemnei%2Fpunktf%3A%20%E2%9A%A1%20A%20cross,again%21%20Yet%20another%20dotfile%20manager)). The guiding principles are:  

- **Cross‑platform compatibility**: All configuration files are organised for macOS, Linux and Windows. The install script detects your OS and applies the right configuration.  
- **Templated configuration**: Using tools like `chezmoi`, you can create templates that adjust settings based on the OS or host ([chezmoi - chezmoi](https://chezmoi.io/#:~:text=chezmoi%20,What%20does%20chezmoi%20do)).  
- **Automated package installation**: Package lists for Homebrew (`Brewfile`), APT (`apt-packages.txt`) and Windows (`winget-packages.ps1`) enable one‑command installation of common CLI tools.  
- **Secrets & encryption ready**: If you need to store secrets, tools like `chezmoi` support encrypted dotfiles with `age` or integration with password managers ([chezmoi - chezmoi](https://chezmoi.io/#:~:text=chezmoi%20,What%20does%20chezmoi%20do)).  
- **Easy bootstrap**: A single `install.sh` script bootstraps your environment; it backs up existing dotfiles, creates symlinks or copies as appropriate, and runs package installations.  

## Usage  

1. **Clone the repository** into a directory, e.g.:  

```
git clone https://github.com/aherendeen/dotfiles.git ~/.dotfiles
```  

2. **Review & customise**: Open the files (e.g., `.bashrc`, `.zshrc`, `.gitconfig`, `Microsoft.PowerShell_profile.ps1`) and adjust any aliases, environment variables or paths to suit your preferences. You can also modify the package lists.  

3. **Install chezmoi (optional)**: For advanced templating and secrets management, install [chezmoi](https://chezmoi.io) by following the instructions on their site ([chezmoi - chezmoi](https://chezmoi.io/#:~:text=chezmoi%20,What%20does%20chezmoi%20do)).  

4. **Run the installer**:  

```
cd ~/.dotfiles
chmod +x install.sh
./install.sh
```  

This script will detect your operating system via `uname` and:  

- Back up any existing dotfiles into `backup/`.  
- Create symlinks or copies for `.bashrc`, `.zshrc`, `.gitconfig` and the PowerShell profile.  
- Optionally run `brew bundle`, `apt-get install` or `winget` to install packages listed in the repository.  

5. **Reload your shell** to apply the changes.  

## File overview  

- `Brewfile` – list of Homebrew packages for macOS.  
- `apt-packages.txt` – list of APT packages for Debian/Ubuntu.  
- `winget-packages.ps1` & `packages.ps1` – PowerShell scripts to install Windows packages via `winget`.  
- `.bashrc` – Bash configuration with history, prompt and aliases.  
- `.zshrc` – Zsh configuration with history options, prompt and aliases.  
- `.gitconfig` – Git global configuration (edit `[user]` section with your name & email).  
- `Microsoft.PowerShell_profile.ps1` – PowerShell profile with aliases and prompt customisation.  
- `install.sh` – install script to set up symlinks/copies and run package installations.  

Feel free to explore other dotfile repositories for inspiration; some excellent examples include **holman/dotfiles**, **mathiasbynens/dotfiles** and **paulirish/dotfiles**, which have been widely recommended by guides like *The Ultimate Guide to Mastering Dotfiles* ([The Ultimate Guide to Mastering Dotfiles](https://www.daytona.io/dotfiles/ultimate-guide-to-dotfiles#:~:text=1,Repository%3A%C2%A0holman%2Fdotfiles)). Tools like **chezmoi** provide powerful templating and encryption features to take your dotfiles to the next level ([chezmoi - chezmoi](https://chezmoi.io/#:~:text=chezmoi%20,What%20does%20chezmoi%20do)). 
