alias bashrc="vim ~/.bashrc"
alias vimrc="vim ~/.vimrc"
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
alias resrc="source ~/.bashrc"

alias vi="vim"

function taile
{
    tail -f /var/log/apache2/error_log
}

function killall {
    ps aux | grep $1 | while read p; do
        if [[ ! $p =~ ^.*grep.*$ ]] ; then 
            PID=$(echo $p | awk '{ print $2   }')
            echo "Killing PID $PID"
            kill $PID 2>/dev/null
        fi
    done;
}
