# .bashrc - Bash configuration for Linux and macOS

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# History settings
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoredups:erasedups
shopt -s histappend

# Prompt
export PS1="\u@\h:\w$ "

# Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'

# Source custom overrides if present
if [ -f ~/.custom.sh ]; then
    source ~/.custom.sh
fi
