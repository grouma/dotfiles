# Path to your oh-my-zsh installation.
export ZSH=/usr/local/google/home/grouma/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Load plugins
plugins=(git history-substring-search tmux)

source $ZSH/oh-my-zsh.sh

bindkey -v

# Case insensitive searching, more detailed status line, and colors in less
export LESS='-i -M -r'

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# Do not display remote git repositories
zstyle :completion::complete:git-checkout:argument-rest:headrefs command "git for-each-ref --format='%(refname)' refs/heads 2>/dev/null"

# Ignore files in CitC
export G4NOTHAVEFILTER='(\.iml|\.idea|compass\.rb)'

# Export Path
export PATH=/usr/lib/google-dartlang/bin:${PATH}
export PATH=/usr/local/google/home/grouma/.local/bin:${PATH}
export PATH=/usr/local/google/home/grouma/local/bin:${PATH}
export PATH=/usr/local/google/home/grouma/depot_tools:${PATH}

source /etc/bash_completion.d/g4d
alias copybara='/google/data/ro/teams/copybara/copybara'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


