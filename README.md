Set up dotfiles in .myconfig directory
```
$ curl -Lks https://gist.githubusercontent.com/zachjustice/2af3d5de17762d8478e7d58aff2bcf4c/raw/534f8d81b58d8b23eceaf114ac75ae838f8640b1/setup_dotfiles.sh | /bin/bash
```

Or do it manually
```
$ git clone --bare https://bitbucket.org/zachjustice/myconfig.git $HOME/.myconfig
$ function config {
$    /usr/bin/git --git-dir=$HOME/.myconfig/ --work-tree=$HOME $@
$ }
$ mkdir -p .config-backup
$ config checkout
$ if [ $? = 0 ]; then
$   echo "Checked out config.";
$   else
$     echo "Backing up pre-existing dot files.";
$     config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
$ fi;
$ config checkout
$ config config status.showUntrackedFiles no
```

Install vundle and install plugins
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
$ vim +PluginInstall +qall
```
