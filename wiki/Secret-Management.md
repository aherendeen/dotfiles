# 🔐 Managing Secrets

Secrets (like API tokens, SSH passwords, etc.) are managed securely using [chezmoi's](https://www.chezmoi.io) secret management system backed by [age](https://age-encryption.org/).

## 📦 How it Works

- Secrets are stored encrypted in the dotfiles repo
- Decryption occurs locally at apply-time
- No plain text secrets in Git

## 🔑 Setup age Key

Ensure your encryption key exists at:
```bash
~/.config/chezmoi/age/keys.txt
```
To generate one:
```bash
age-keygen -o ~/.config/chezmoi/age/keys.txt
```

## 🧪 Add & Edit Secrets

To add a new secret:
```bash
chezmoi secret add ~/.secrets/my_token
```
To edit an existing one:
```bash
chezmoi secret edit ~/.secrets/my_token
```

## 🔓 Apply Secrets

Chezmoi will automatically decrypt secrets when running:
```bash
chezmoi apply
```
If secrets are referenced via `{{ (decryptSecret ...) }}` in templates.

## 🔐 Example Template Usage

```handlebars
api_key = "{{ (decryptSecret "~/.secrets/api_key") }}"
```

## 🔒 Security

- Never commit unencrypted secrets or private keys to your repository.
- Always back up your age key (`~/.config/chezmoi/age/keys.txt`) securely.
- Use `.chezmoiignore` to prevent sensitive files from being tracked.
- Review templates for accidental secret exposure.
