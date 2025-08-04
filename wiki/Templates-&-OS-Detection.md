# 🧩 Templates & Conditional Logic

Chezmoi supports [Go template syntax](https://pkg.go.dev/text/template) to enable OS-, host-, and user-specific behavior across your dotfiles.

## 🖥️ OS Detection

```handlebars
{{ if eq .chezmoi.os "darwin" }}
# macOS-specific config
{{ else if eq .chezmoi.os "linux" }}
# Linux-specific config
{{ end }}
```

## 👤 Hostname or Username

```handlebars
{{ if eq .chezmoi.hostname "macbook-pro" }}
# Only on my laptop
{{ end }}

{{ if eq .chezmoi.username "andrew" }}
# Personal configs
{{ end }}
```

## 🔁 Looping Example

```handlebars
{{ range $k, $v := .env }}
export {{$k}}={{$v}}
{{ end }}
```

## 🧼 Filtering Files

Use `.chezmoiignore` to skip applying some files on specific systems:
```handlebars
{{ if ne .chezmoi.os "darwin" }}
.gitconfig
{{ end }}
```

---

Templating lets you reuse the same dotfiles across multiple platforms without needing branches or overrides. Keep templates minimal, readable, and well-commented.
