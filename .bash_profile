alias ls='ls -GFh'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# make vim the default editor.
# helps git commit merges not fail
export VISUAL=vim
export EDITOR="$VISUAL"

# required by android studio / ionic
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk

# required by elasticbeanstalk cli
export PATH=~/Library/Python/2.7/bin:$PATH

# more history is always useful
HISTFILESIZE=5000

source ~/.bashrc
export PATH=$HOME/bin:$PATH
