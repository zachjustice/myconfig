alias ls='ls -GFh'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
source ~/.bashrc

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export VISUAL=vim
export EDITOR="$VISUAL"
export PATH=~/Library/Python/2.7/bin:$PATH
