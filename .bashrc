alias bashrc="vim ~/.bashrc"
alias vimrc="vim ~/.vimrc"
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
alias resrc="source ~/.bashrc"

alias config="/usr/bin/git --git-dir=$HOME/.myconfig/ --work-tree=$HOME"

function taile
{
    tail -f /var/log/apache2/error_log
}
