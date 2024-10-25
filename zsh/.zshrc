# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

if [[ `uname` == "Darwin" ]]; then
    # MacOS
    if [[ "$(uname -m)" == "arm64" ]]; then
        # M1 Mac
        export SHELL="/opt/homebrew/bin/zsh"
    else
        export SHELL="/usr/local/bin/zsh"
    fi
else
    # Linux
    export SHELL=/usr/bin/zsh
    export PATH="/usr/local/go/bin:$PATH"
fi


# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

SPACESHIP_CHAR_SYMBOL=󱞪
SPACESHIP_CHAR_PREFIX=''
SPACESHIP_CHAR_SUFFIX=' '
SPACESHIP_VENV_PREFIX='('
SPACESHIP_VENV_SUFFIX=') '
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_KUBECTL_VERSION_SHOW=false
SPACESHIP_KUBECTL_SHOW=true

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# autoenv
if [ ! -d ~/.autoenv ]
then
    git clone https://github.com/hyperupcall/autoenv.git ~/.autoenv
fi
source ~/.autoenv/activate.sh

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# NVM (For Node.js) settings
if [ ! -d ~/.nvm ]
then
    git clone https://github.com/nvm-sh/nvm.git $HOME/.nvm
fi
export NVM_DIR=$HOME/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/etc/bash_completion.d/nvm" ] && . "$NVM_DIR/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# gem & colorls
if type ruby > /dev/null 2>&1; then
  export PATH="$(ruby -e 'puts Gem.bindir'):$PATH"
  source $(dirname $(gem which colorls))/tab_complete.sh
  alias lc='colorls'
fi

# Go settings
export PATH="$HOME/go/bin:$PATH"

# Pyenv settings
# Running before autoenv setup to prevent messing up python venv activation
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Neovim
if type nvim > /dev/null 2>&1; then
  alias v='nvim'
fi

# tmux
if type tmux > /dev/null 2>&1; then
    alias t="tmux"
    alias ta="t a -t"
    alias tls="t ls"
    alias tn="t new -t"
fi

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Lazygit
export LG_CONFIG_FILE=~/.config/lazygit/config.yml

# kubectl autocomplete
if type switcher > /dev/null 2>&1; then
  source <(kubectl completion zsh)
fi

# kubectl context switcher
if type switcher > /dev/null 2>&1; then
  source <(switcher init zsh)
fi

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/lance.wenglin/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
