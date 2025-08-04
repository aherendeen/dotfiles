# 🧠 Philosophy & Design Principles

This dotfiles repo is designed around clarity, portability, and minimalism. It avoids overengineering while supporting deep customization.

## 🔁 Reproducibility

- Every machine should converge to a known state with one command: `chezmoi apply`
- Installation steps are declarative and trackable

## 🧼 Minimalism

- Only critical tools are installed
- Defaults are respected unless explicitly overwritten
- Commented configs help onboard future you (or others)

## 🔐 Security

- No secrets are stored in plain text
- Encrypted secrets use `age` and are kept outside of Git tracking
- System- or user-specific configs are gated by templates

## 🛠 Maintainability

- Uses `chezmoi diff`, `chezmoi edit`, and `chezmoi apply` as core tools
- Split config by purpose (shell, git, editor) instead of lumping into `.bashrc`

## 🌐 Portability

- Works across macOS, WSL, and Linux
- Conditional logic adapts files to each host
- Secrets, symlinks, ignored files, and packages are environment-aware

---
