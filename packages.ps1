# Windows packages installation using winget
# Run this script in an elevated PowerShell session.
$packages = @(
  "Git.Git",
  "Microsoft.WindowsTerminal",
  "JanDeDobbeleer.OhMyPosh",
  "Starship.Starship",
  "Neovim.Neovim",
  "junegunn.fzf",
  "sharkdp.bat",
  "BurntSushi.ripgrep",
  "7zip.7zip",
  "Python.Python.3",
  "OpenJS.NodeJS"
)
foreach ($pkg in $packages) {
  winget install --id=$pkg -e --source winget
}
# Install chezmoi
winget install --id=twpayne.chezmoi -e --source winget
