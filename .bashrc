alias bashrc="vim ~/.bashrc"
alias vimrc="vim ~/.vimrc"
alias resrc="source ~/.bashrc"

alias vi="vim"
alias config="/usr/bin/git --git-dir=$HOME/.myconfig/ --work-tree=$HOME"

function taile
{
    tail -f /var/log/apache2/error_log
}

# exports env vars for mom diary backend
source ~/.saturday_env

alias psql-saturday-db="psql -h saturday-db.cn5cfkwaqjgw.us-east-1.rds.amazonaws.com -d triturus -p 5432 -U saturday_db_user"
