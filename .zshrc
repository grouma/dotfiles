# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

plugins=(git history-substring-search)

# User configuration

source $ZSH/oh-my-zsh.sh

bindkey -v

# Case insensitive searching, more detailed status line, and colors in less
export LESS='-i -M -r'


# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind UP and DOWN arrow keys (compatibility fallback
# for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# Export path
export PATH=$PATH:$HOME/.cabal/bin
export ELM_HOME=/usr/local/lib/node_modules/elm/share
