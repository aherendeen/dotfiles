# 🚀 Dotfiles Setup Guide

## 📑 Table of Contents

- [[Setup-Instructions]]
- [[Managed-Tools]]
- [[Secret-Management]]
- [[Templates-&-OS-Detection]]
- [[Philosophy-&-Design]]
- [[Cheat-Sheet]]
- [[FAQ]]

This guide walks you through setting up your environment using the dotfiles in this repository.

## 📥 Prerequisites

- macOS, Linux, or WSL
- Git installed
- (macOS only) [Homebrew](https://brew.sh/)

## 🛠 Install chezmoi

macOS:
```bash
brew install chezmoi
```
Linux (Debian/Ubuntu):
```bash
sudo apt install chezmoi
```
Other platforms: [See chezmoi install docs](https://www.chezmoi.io/install/)

## 🌀 Bootstrap Dotfiles

```bash
chezmoi init git@github.com:aherendeen/dotfiles.git --apply
```

This:
- Clones the dotfiles repo
- Applies tracked files to `$HOME`
- Runs any `run_once_*.sh` or setup scripts (if present)

## 🔒 Decrypt Secrets (if using `age`)

Chezmoi can manage secrets securely using [age](https://age-encryption.org/), a simple, modern encryption tool. If you use secrets, ensure your age key exists:

```bash
~/.config/chezmoi/age/keys.txt
```
To generate one:
```bash
age-keygen -o ~/.config/chezmoi/age/keys.txt
```

Decrypt all secrets with:
```bash
chezmoi secret decrypt
```

## 🧪 Verify Installation

Use:
```bash
chezmoi doctor
```
to confirm chezmoi setup and environment health.

---

## 🔄 Update Dotfiles

To pull the latest changes and re-apply your dotfiles:
```bash
chezmoi update
```

## 🛠️ Troubleshooting

- **chezmoi not found:** Ensure chezmoi is installed and in your PATH.
- **Permission denied:** Check file permissions and ownership in your home directory.
- **Secrets not decrypted:** Make sure your age key exists and is readable.
- **Homebrew issues:** Run `brew doctor` and check for errors.
- **Dotfiles not applied:** Run `chezmoi apply` and check for errors in the output.

## 🛠️ Customization & Machine-specific Config

- Use `.chezmoiignore` to skip files on certain machines or OSes.
- Use templates (see [[Templates-&-OS-Detection]]) for per-host, per-OS, or per-user configs.
- Example: `dot_gitconfig.tmpl` can include logic for work vs. personal machines.

## 💾 Backups & Recovery

- Your dotfiles are version-controlled in git. To recover, clone the repo and run `chezmoi init --apply <repo>`.
- For secrets, ensure you have a backup of your age key (`~/.config/chezmoi/age/keys.txt`).
- To restore, re-import your age key and run `chezmoi apply`.

Your system is now fully provisioned. See [[Managed-Tools]] for more.
