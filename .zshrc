# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Custom exports
export PATH=~/.npm-global/bin:$PATH

# Theme
ZSH_THEME="clean" # set by `omz`

# Plugins
plugins=(git zsh-autosuggestions command-not-found)

# Sourced Configs
source $ZSH/oh-my-zsh.sh

# Aliases
alias vim=nvim
alias ls=lsd
alias cat=bat
alias neofetch=fastfetch

# Functions
function reload () {
    killall $1
    hyprctl dispatch exec $1
}

# Run fastfetch on startup
fastfetch
echo ""

# bun completions
[ -s "/home/riley/.bun/_bun" ] && source "/home/riley/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
