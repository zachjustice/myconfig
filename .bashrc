# Run this to set up dotfiles https://gist.github.com/zachjustice/2af3d5de17762d8478e7d58aff2bcf4c

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
source ~/.advent_of_code_session

alias psql-saturday-db="psql -h saturday-db.cn5cfkwaqjgw.us-east-1.rds.amazonaws.com -d triturus -p 5432 -U saturday_db_user"
