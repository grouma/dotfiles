# Google3?
if [ -d "/usr/local/google/home/grouma" ]; then
  # Path to oh-my-zsh installation.
  export ZSH="/usr/local/google/home/grouma/.oh-my-zsh"

  # Google3 PATHS
  export PATH=/usr/local/google/home/grouma/.local/bin:${PATH}
  export PATH=/usr/local/google/home/grouma/local/bin:${PATH}
  export PATH=/usr/local/google/home/grouma/depot_tools:${PATH}
  export PATH=/usr/local/google/home/grouma/flutter/bin:${PATH}
  export PATH="${PATH}:/usr/local/google/home/grouma/Projects/depot_tools"

  # Google3 Aliases
  alias blaze-run='/google/src/head/depot/google3/devtools/blaze/scripts/blaze-run.sh'
  alias copybara='/google/data/ro/teams/copybara/copybara'
  alias show_platforms="blaze-bin/dart/tools/platforms/show_platforms"

  # G4d completion
  source /etc/bash_completion.d/g4d
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh  
  
  # Ignore files in CitC
  export G4NOTHAVEFILTER='(\.iml|\.idea|compass\.rb)'
else
  # Path to oh-my-zsh installation.
  export ZSH="/home/grouma/.oh-my-zsh"
fi

# Theme 
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

# Export Dart Path 
if [[ $PWD =~ "google3" ]]; then
  export PATH=/usr/lib/google-dartlang/bin:${PATH}
else
  export PATH=/usr/local/google/home/grouma/dart-sdk/bin:${PATH}    
  export PATH=/home/grouma/dart-sdk/bin:${PATH}
fi

# Dart Aliases
alias pbr="pub run build_runner"

# Git Aliases
alias gbr="git branch | grep -v "master" | xargs git branch -D"

# Google3 Aliases
alias blaze-run='/google/src/head/depot/google3/devtools/blaze/scripts/blaze-run.sh'
alias copybara='/google/data/ro/teams/copybara/copybara'
alias show_platforms="blaze-bin/dart/tools/platforms/show_platforms"
