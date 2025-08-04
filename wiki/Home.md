# 📦 Dotfiles Documentation Index

Welcome to the documentation for this dotfiles repository, a fully reproducible and secure system for configuring developer environments across macOS, Linux, and WSL using [chezmoi](https://www.chezmoi.io).

---

## 📚 Sections

- [[Setup-Instructions]]: How to install chezmoi and initialize your environment.
- [[Managed-Tools]]: Overview of what’s managed—shell, git, editor, terminal, etc.
- [[Secret-Management]]: How encrypted secrets are handled using `age`.
- [[Templates-&-OS-Detection]]: How to use chezmoi templates for cross-platform compatibility.
- [[Philosophy-&-Design]]: Guiding principles behind this dotfiles system.
- [[FAQ]]: Quick answers to common questions.
- [[Cheat-Sheet]]: Quick reference for chezmoi and dotfiles commands.
- [[Setup-Instructions#-backups--recovery]]: How to restore your dotfiles and secrets.

---

## ❓ FAQ

**Q: How do I add a new dotfile?**  
A: Use `chezmoi add ~/.yourfile` and then `chezmoi apply`.

**Q: How do I exclude a file from chezmoi?**  
A: Add it to `.chezmoiignore`.

**Q: How do I manage secrets?**  
A: See [[Secret-Management]].

**Q: How do I update my dotfiles?**  
A: Run `chezmoi update` to pull and apply the latest changes.

---

Start with the [[Setup-Instructions]] if you're bootstrapping a new machine, or browse the other sections to understand the inner workings.
