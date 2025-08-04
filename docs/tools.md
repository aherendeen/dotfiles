# 🧰 Managed Tools

This dotfiles setup manages the configuration of the following tools:

## 🐚 Shell: Zsh

- `~/.zshrc`, `~/.zprofile`, `~/.zshenv`
- Aliases, completions, `PATH` management
- Works with [oh-my-zsh](https://ohmyz.sh/) or pure Zsh

## 🧪 Git

- `~/.gitconfig` with contextual includes
- `~/.gitignore_global`
- Aliases for clean workflows

## 📝 Editor: VSCode

- Configs in `~/.config/Code/User/settings.json`
- Extensions managed via Brewfile or `code --install-extension`
- Workspace and user settings, keybindings, and snippets

## 🖥 Terminal

- iTerm2: preferences can be synced or exported (e.g., `com.googlecode.iterm2.plist`)
- Mac-specific keyboard tweaks (optional)

## 🧵 CLI Utilities

- Managed via `brew bundle` or `apt install`
- Examples: `bat`, `ripgrep`, `fzf`, `fd`, `tldr`, etc.

## 🔐 SSH

- `~/.ssh/config`
- Host-based identities and port configs

---

All tools are optional—you can comment out or `.chezmoiignore` anything you don’t use.