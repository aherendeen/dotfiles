#!/usr/bin/env zsh

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
alias gaa="git add --all"
alias gcm="git commit -m"
alias gcb="git checkout -b"
alias gf="git fetch"
alias gpl="git pull"
alias gst="git stash"
alias gstp="git stash pop"

# --- Navigation ---
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"
alias -- -="cd -"

# --- Enhanced ls commands ---
alias ls="ls --color=auto"
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
alias lh="ls -lah"

# --- File operations (with safety) ---
alias rm="command rm -i"
alias cp="command cp -i"
alias mv="command mv -i"
alias mkdir="mkdir -pv"

# --- System shortcuts ---
alias h="history"
alias j="jobs -l"
alias which="type -a"
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

# --- Networking ---
alias myip="curl -4 ifconfig.me"
alias localip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias ping="ping -c 5"

# --- Development shortcuts ---
alias code.="code ."
alias c="code"
alias py="python3"
alias pip="pip3"
alias serve="python3 -m http.server"
alias jsonpp="python3 -m json.tool"

# --- Docker shortcuts ---
alias d="docker"
alias dc="docker-compose"
alias dps="docker ps"
alias di="docker images"
alias dex="docker exec -it"
alias dlogs="docker logs -f"

# --- Brew shortcuts ---
alias brewup="brew update && brew upgrade"
alias brewclean="brew cleanup"

# --- Productivity ---
alias weather="curl wttr.in"
alias cheat="curl cheat.sh/"
alias reload="source ~/.zshrc"
alias edit="$EDITOR"

# --- File finder shortcuts ---
alias fd="find . -type d -name"
alias ff="find . -type f -name"

# --- Process management ---
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias topcpu="ps auxf | sort -nr -k 3 | head -5"
alias topmem="ps auxf | sort -nr -k 4 | head -5"

# --- Chezmoi shortcuts ---
alias cm="chezmoi"
alias cma="chezmoi apply"
alias cme="chezmoi edit"
alias cms="chezmoi status"
alias cmd="chezmoi diff"

# --- Safety: Confirm before overwriting files ---
setopt noclobber
