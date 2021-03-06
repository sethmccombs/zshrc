# ------------------------------
#  zsh config
#  
#  1. zsh template config
#  2. PATHs 
#  3. BREw
#  4. lapussh source
#  5. virtualenvwrapper
#
# -----------------------------

# If you come from bash you might have to change your $PATH.

# Path to your oh-my-zsh installation.
export ZSH="/Users/seth/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

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
COMPLETION_WAITING_DOTS="true"

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
plugins=(
  aws
  colored-man-pages
  colorize
  git
  python
  pylint
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ---------------
# 2. PATH config
# ---------------

export PATH=/usr/local/bin/python3.6:/usr/local/bin/apache-maven-3.5.4/bin:$HOME/.linkerd2/bin:$PATH # added python for AWS CLI
#export PATH=/Users/seth/Library/Python/3.6/bin:/usr/local/bin/python3.6:$PATH # added python for AWS CLI
export PYTHONPATH=.:"${PYTHONPATH}" # Python Path in Current DIR (Laputrop Bug)
export GOPATH=$HOME/Code/go
export GOBIN=/Users/seth/code/go/bin

 #---------------
# 3. BREW completion
# ---------------

zstyle ':completion:::git:*' script /usr/local/etc/bash_completion.d/git-completion.bash

fpath=(/usr/local/share/zsh/site-functions $fpath)

#complete -C /usr/local/bin/vault vault

#complete -C /usr/local/Cellar/terraform/0.11.7/bin/terraform terraform


# ---------------
# 4. lapussh config
# ---------------

if [ -f $HOME/.laputa ]; then
source $HOME/.laputa
else
Echo "no file found"
fi

# -----------------
#   5. Node Config
# ------------------


#export NVM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh

# -----------------
#   Kubectl Alias 
# ------------------

alias k1='kubectl --context=ops1'
alias k2='kubectl --context=o2'
alias k3='kubectl --context=ops3'
alias ho2='helm --kube-context=o2'
alias ka1='kubectl --context=ops1 get --all-namespaces'
alias ka2='kubectl --context=o2 get --all-namespaces'
alias ka3='kubectl --context=ops3 get --all-namespaces'
alias k='kubectl'



eval "$(rbenv init -)"
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
