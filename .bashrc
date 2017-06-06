alias bashrc="vi ~/.bashrc"
alias vimrc="vi ~/.vimrc"
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
alias resrc="source ~/.bashrc"

function taile
{
    tail -f /var/log/apache2/error_log
}
