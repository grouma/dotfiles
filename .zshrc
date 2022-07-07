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

# Do not display remote git repositories
zstyle :completion::complete:git-checkout:argument-rest:headrefs command "git for-each-ref --format='%(refname)' refs/heads 2>/dev/null"

# Ignore files in CitC
export G4NOTHAVEFILTER='(\.iml|\.idea|compass\.rb)'

# Export Path
if [[ $PWD =~ "google3" ]]; then
        export PATH=/usr/lib/google-dartlang/bin:${PATH}
else
        export PATH=/usr/local/google/home/grouma/dart-sdk/bin:${PATH}
fi

export PATH=/usr/local/google/home/grouma/.local/bin:${PATH}
export PATH=/usr/local/google/home/grouma/local/bin:${PATH}
export PATH=/usr/local/google/home/grouma/depot_tools:${PATH}
export PATH="${PATH}:/usr/local/google/home/grouma/Projects/depot_tools"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH:/usr/local/google/home/grouma/projects/flutter/bin"

# Git Aliases
alias gbr="git branch | grep -v "master" | xargs git branch -D"

# Dart Aliases
alias pbr="pub run build_runner"

# Google3 Aliases
alias blaze-run='/google/src/head/depot/google3/devtools/blaze/scripts/blaze-run.sh'
alias copybara='/google/data/ro/teams/copybara/copybara'
alias show_required_libs="blaze-bin/dart/tools/required_libs/show_required_libs"
alias launchpad='/google/data/ro/teams/ads-engprod/ap/tools/launchpad/launchpad_web.par'

# Google3 history go/hi
source /etc/bash.bashrc.d/shell_history_forwarder.sh

# Google3 Completion
source /etc/bash_completion.d/g4d
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

complete -F _blaze::complete_test_target_wrapper -o nospace dart-dev-runner


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
