# .zshrc - Zsh configuration for macOS and Linux

# If Zsh is not running interactively, exit
[[ $- != *i* ]] && return

# History options
HISTSIZE=10000
SAVEHIST=20000
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS

# Prompt
PROMPT='%n@%m:%~%# '

# Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'

# Source custom overrides if present
if [[ -f ~/.custom.zsh ]]; then
    source ~/.custom.zsh
fi
