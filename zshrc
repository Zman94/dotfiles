# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/zach/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
 ENABLE_CORRECTION="true"

 DEFAULT_USER="zach"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
 HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    #docker
    #docker-compose
    alias-tips
    brew
    colored-man-pages
    colorize
    command-time
    git
    gitgo
    helm
    kubectl
    minikube
    osx
    pip
    python
    ssh-agent
    vi-mode
    zsh-256color
    zsh-apple-touchbar
    zsh-autopair
    zsh-autosuggestions
    zsh-dircolors-solarized
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source $HOME/.abbr_pwd

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
#
export PATH=.:$PATH
export HELM_HOME=/Users/zach/.helm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:."

# added by travis gem
[ -f /Users/Zach/.travis/travis.sh ] && source /Users/Zach/.travis/travis.sh

#####################   .bash_profile   ########################
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=~/Envs
export GOPATH=~/go

### Vim Mode Updates ###
bindkey -e

## Vi mode settings
## Better searching in command mode
#bindkey -M vicmd '?' history-incremental-search-forward
#bindkey -M vicmd '/' history-incremental-search-backward

## Beginning search with arrow keys
#bindkey "^[OA" up-line-or-beginning-search
#bindkey "^[OB" down-line-or-beginning-search
#bindkey -M vicmd "k" up-line-or-beginning-search
#bindkey -M vicmd "j" down-line-or-beginning-search
#bindkey "${terminfo[khome]}" beginning-of-line
#bindkey "${terminfo[kend]}" end-of-line

## Easier, more vim-like editor opening
## `v` is already mapped to visual mode, so we need to use a different key to
## open Vim
#bindkey -M vicmd "^V" edit-command-line

## Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
#export KEYTIMEOUT=1

### END Vim Mode Updates ###


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias subl="sublime3"
alias zgsal="gsa_login zachg57"
alias pdf="evince"
alias volume="alsamixer"
alias flux="redshift -t 3700:3700"
alias ml="cd ~/Projects/cs446/final"
alias re="cd ~/Projects/Research-SP18"
#alias python="python3"
alias vim="mvim"
alias kc="kubectl"
alias kw="kubectl --namespace=wcra"
alias bxli="bx pr login -u admin -p admin -a https://zachgleason.icp.ibmcsf.net:8443 --skip-ssl-validation -c id-zachgleason-account; bx pr cluster-config zachgleason"
alias wcrali="bx login --apikey @~/.apikeys/apiKey.json"
alias wrsli="bx login --apikey @~/.apikeys/apiKey_redsonja.json"
alias reload="source ~/.zshrc"
alias tf="terraform"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source ~/.iterm2_shell_integration.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/zach/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/zach/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/zach/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/zach/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Updates editor information when the keymap changes.
function zle-keymap-select() {
  zle reset-prompt
  zle -R
}

zle -N zle-keymap-select

function vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/[% NORMAL]%}/(main|viins)/[% INSERT]%}"
}

# define right prompt, regardless of whether the theme defined it
RPS1='$(vi_mode_prompt_info)'
RPS2=$RPS1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /Users/zach/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# asdf
. /usr/local/opt/asdf/asdf.sh

##################
### MS Aliases ###
##################

alias azuredev='az account set --subscription "PromoteIQTest"; az account show | jq .name'
alias azureshared='az account set --subscription "PromoteIQ-SharedServices"; az account show | jq .name'
alias azurenonprod='az account set --subscription "PromoteIQ-NonProd"; az account show | jq .name'
alias azureprod='az account set --subscription "PromoteIQ-Production"; az account show | jq .name'
alias azlistsub='az account list | grep Promote'
alias azswitchsub='az account set --subscription'
alias azdefault="az account list --query '[?isDefault]' -o yaml"
defaults write .GlobalPreferences com.apple.mouse.scaling -1
