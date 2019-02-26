# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(
  git
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
 alias zshconfig="vi ~/.zshrc"
 alias ohmyzsh="vi ~/.oh-my-zsh"
SAVEHIST=100000
HISTFILESIZE=5000

alias bashrc="vim ~/.bashrc"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias resrc="source ~/.zshrc"
alias vim-install="vim +PluginInstall +qall"

alias vi="vim"
alias vim-install="vim +PluginInstall +qall"
alias cfg="/usr/bin/git --git-dir=$HOME/.myconfig/ --work-tree=$HOME"
alias cl="clear"

# Secureworks workflow aliases
alias ylca="yarn lint && git commit --amend"
alias gcp="git add . && git commit --amend && git pohm"

# gcloud aliases
alias gc="gcloud"
alias gcc="gc compute"
alias gccf="gcc firewall-rules"

# kubernetes
alias k="kubectl"
alias kc="kubectl config"

# Make vim the default editor. (git commit won't error on merges)
export VISUAL=vim
export EDITOR="$VISUAL"

# Put homebrew programs first in $PATH
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export PATH="$HOME/Library/Python/3.6/bin/:$PATH"
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH=~/Library/Python/2.7/bin:$PATH # required by elasticbeanstalk cli
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
eval $(thefuck --alias)

# nvm stuff
#export NVM_DIR="$HOME/.nvm" 
#. "/usr/local/opt/nvm/nvm.sh"

# brew glcoud auto completion
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

alias ls='ls -GFh'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# required by android studio / ionic
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
# export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
# golang
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

# dumb cobol stuff
alias cfx="cobc -free -x"

# jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
export PATH="$HOME/.jenv/shims:$PATH"

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
