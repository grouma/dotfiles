# Path to your oh-my-zsh installation.
export ZSH=/usr/local/google/home/grouma/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="kardan"

# Load plugins
plugins=(git history-substring-search tmux)

source $ZSH/oh-my-zsh.sh

bindkey -v

# Case insensitive searching, more detailed status line, and colors in less
export LESS='-i -M -r'

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
