# dotfiles

Welcome! This repository contains my personal dotfiles, managed with [chezmoi](https://www.chezmoi.io/). Dotfiles are configuration files for your shell, editor, and other tools, allowing you to personalize your development environment across machines.

## What is chezmoi?

[chezmoi](https://www.chezmoi.io/) is a powerful tool for managing your dotfiles securely and reproducibly across multiple systems. It keeps your home directory in sync and makes it easy to apply updates or changes.

## Features

- Version-controlled dotfiles
- Easy setup on new machines
- Secure management of secrets
- Cross-platform support (Linux, macOS, Windows)

## Getting Started

### 1. Install chezmoi

- macOS: `brew install chezmoi`
- Linux: `sh -c "$(curl -fsLS get.chezmoi.io)"`
- Windows: [See official docs](https://www.chezmoi.io/install/)

### 2. Initialize chezmoi with this repo

```sh
chezmoi init --apply <your-github-username>
```
Or, if you already have the repo cloned:
```sh
chezmoi apply
```

### 3. Edit and manage your dotfiles

- To add a new dotfile: `chezmoi add ~/.yourfile`
- To edit a dotfile: `chezmoi edit ~/.yourfile`
- To apply changes: `chezmoi apply`

## Customization

- Update files in the `dot_` prefixed files and directories.
- Use chezmoi templates for machine-specific or secret data.
- Store secrets securely using [chezmoi's secret management](https://www.chezmoi.io/user-guide/secrets/).

## Useful Commands

- `chezmoi status` – See what will change
- `chezmoi diff` – Preview changes
- `chezmoi update` – Pull latest changes from the repo
- `chezmoi doctor` – Diagnose issues

## Resources

- [chezmoi documentation](https://www.chezmoi.io/docs/)
- [chezmoi templates](https://www.chezmoi.io/user-guide/templates/)

## 🤝 Contributing

Contributions, suggestions, and improvements are welcome! To contribute:

- Fork this repository
- Create a new branch for your changes
- Submit a pull request with a clear description

For questions or ideas, open an issue or discussion.

---

Feel free to fork or adapt these dotfiles for your own use!