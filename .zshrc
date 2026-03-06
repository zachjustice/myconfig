export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY
setopt APPEND_HISTORY

setopt AUTO_CD
setopt COMPLETE_ALIASES
zstyle ':completion:*' menu select

alias ohmyzsh="vi ~/.oh-my-zsh"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias resrc="source ~/.zshrc"

alias vi="vim"
alias cfg="/usr/bin/git --git-dir=$HOME/.myconfig/ --work-tree=$HOME"
alias cl="clear"
alias ls='ls -GFh'

# Make vim the default editor. (git commit won't error on merges)
export VISUAL=vim
export EDITOR="$VISUAL"

# Put homebrew programs first in $PATH
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$HOME/bin:$HOME/.local/bin:$PATH"

# pyenv (lazy-loaded)
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
pyenv() {
  unfunction pyenv
  eval "$(command pyenv init -)"
  pyenv "$@"
}
export SAM_CLI_TELEMETRY=0

# rbenv (lazy-loaded)
if (( $+commands[rbenv] )); then
  rbenv() {
    unfunction rbenv
    eval "$(command rbenv init -)"
    rbenv "$@"
  }
fi

function jrnl () {
    DIR=$(date +"$HOME/Code/mimir/personal/%Y/%m/")
    FILE=${DIR}$(date +"%d_%a.md" | tr '[:upper:]' '[:lower:]')
    if [ ! -f "${FILE}" ]; then
        TITLE=$(date +"%A, %B %d, %Y")
        mkdir -p "${DIR}"
        touch "${FILE}"
        printf "# %s\n\n" "${TITLE}" > "${FILE}"
        git add "${FILE}"
    fi
    vi "${FILE}"
}

function todo () {
    DIR=$(date +"$HOME/Code/mimir/journal/work/todos/%Y/%m/")
    FILE=${DIR}$(date +"%d_%a.md" | tr '[:upper:]' '[:lower:]')
    if [ ! -f "${FILE}" ]; then
        TITLE=$(date +"%A, %B %d, %Y")
        mkdir -p "${DIR}"
        touch "${FILE}"
        printf "# %s\n\n## TODO\n\n## IN PROGRESS\n\n## DONE\n" "${TITLE}" > "${FILE}"
        git add "${FILE}"
    fi
    vi "${FILE}"
}
