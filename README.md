```
echo .myconfig >> .gitignore
echo README.md >> .gitignore
git clone --bare https://github.com/zachjustice/myconfig.git ~/.myconfig
function config {
   /usr/bin/git --git-dir=$HOME/.myconfig/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no

# Remove this README since you don't want that in your home directory
rm README.md

# Set up Vundle and install plugins.
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```
