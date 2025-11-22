# Windows PowerShell profile for customizing environment
# Navigate to home directory
Set-Location $HOME

# Aliases
Set-Alias ll Get-ChildItem
Set-Alias la "Get-ChildItem -Force"
Set-Alias gs git status
Set-Alias gc git commit
Set-Alias gp git push

# Prompt shows current path
function Prompt {
    "$(Get-Location)> "
}
