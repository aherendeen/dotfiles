# Dotfiles

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/64b82ab35f5946f7907bd071f0ae6d76)](https://app.codacy.com/gh/aherendeen/dotfiles/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade)
[![GitHub License](https://img.shields.io/github/license/aherendeen/dotfiles)](LICENSE)

> Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/), keeping my development environment consistent, secure, and portable.

---

## Overview

This repository contains configuration files for my shell, editor, and other tools.
Using **chezmoi**, these files are version-controlled, reproducible, and can be deployed across any machine I use.

---

## Features

- Version-controlled dotfiles for easy synchronization
- Cross-platform support (macOS, Linux, Windows)
- Secure secret management with chezmoi’s encryption & template features
- Rapid setup for new machines

---

## Getting Started

### 1. Install chezmoi

```sh
# macOS
brew install chezmoi

# Linux
sh -c "$(curl -fsLS get.chezmoi.io)"

# Windows
# See: https://www.chezmoi.io/install/
```

### 2. Initialize with this repository

```sh
chezmoi init --apply aherendeen
```

Or, if already cloned:

```sh
chezmoi apply
```

### 3. Managing dotfiles

```sh
chezmoi add ~/.yourfile      # Track a new file
chezmoi edit ~/.yourfile     # Edit tracked file
chezmoi diff                 # Preview changes
chezmoi apply                # Apply changes
```

---

## Secrets

Secrets are never stored in plaintext.
I use chezmoi with [Bitwarden](https://bitwarden.com/) and [age](https://github.com/FiloSottile/age) for secure secret management.

- Add a secret:

  ```sh
  chezmoi secret add my_secret
  ```

- Use it in a template:

  ```go
  {{ (chezmoi.secret "my_secret") }}
  ```

---

## Documentation

- [Dotfiles Documentation Index](./docs/index.md)
- [chezmoi official docs](https://www.chezmoi.io/docs/)
- [Template usage guide](https://www.chezmoi.io/user-guide/templates/)

---

## Useful Commands

| Command             | Description                          |
|---------------------|--------------------------------------|
| `chezmoi status`    | Show pending changes                 |
| `chezmoi diff`      | Preview what will change              |
| `chezmoi update`    | Pull + apply changes from the repo    |
| `chezmoi doctor`    | Run diagnostics                      |

---

## Contributing

PRs and suggestions are welcome.

1. Fork this repository
2. Create a feature branch
3. Commit and push your changes
4. Open a pull request

---

### License

This project is licensed under the [MIT License](LICENSE).

---

> Tip: Fork freely — but be mindful of how you handle secrets. Never commit unencrypted sensitive files.
