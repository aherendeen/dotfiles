# --- Docker ---
alias dcu="docker compose up -d"
alias dcd="docker compose down"
alias dcr="docker compose restart"

# --- Tailscale ---
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/tailscale"

# --- Homebrew ---
alias b="brew"
alias bi="brew install"
alias bu="brew update && brew upgrade"
alias bup="brew update && brew upgrade && brew doctor && brew cleanup"
alias bl="brew list"
alias br="brew remove"
alias bfresh="brew update && brew upgrade && brew cleanup --prune=all && brew doctor"
alias bs="brew search"

# --- VS Code ---
alias v="code"

# --- Git ---
alias g="git"
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git log --oneline --graph --decorate"
alias gd="git diff"
alias gco="git checkout"
alias gb="git branch"

# --- Navigation ---
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"

# --- File operations (with safety) ---
alias rm="command rm -i"
alias cp="command cp -i"
alias mv="command mv -i"
alias mkdir="mkdir -pv"

# --- Utilities ---
alias c="clear"
alias ll="ls -la"
alias l="ls -l"
alias la="ls -A"
alias p="pwd"
alias j="jobs"
alias e="exit"
alias s="source ~/.zshrc"
alias h="history"
alias hgrep="history | grep"

# --- Misc ---
alias please="sudo"
alias path='echo -e ${PATH//:/\\n}'

# --- Networking ---
alias myip="curl ifconfig.me"

# --- Safety: Confirm before overwriting files ---
setopt noclobber
