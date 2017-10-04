if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
source ~/.bashrc

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
alias ls='ls -GFh'
HISTFILESIZE=5000
