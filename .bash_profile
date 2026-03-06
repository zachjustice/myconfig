alias ls='ls -Fh'

if command -v rbenv &>/dev/null; then eval "$(rbenv init -)"; fi

PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# make vim the default editor.
# helps git commit merges not fail
export VISUAL=vim
export EDITOR="$VISUAL"

HISTSIZE=5000
HISTFILESIZE=5000
HISTCONTROL=ignoreboth
shopt -s histappend
shopt -s cdspell checkwinsize

source ~/.bashrc
