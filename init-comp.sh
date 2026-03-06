#! /usr/bin/bash

# fix file permissions on half installed machines
xcode-select --install

#######
# Brew and Dev tools installation
#######

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew tap homebrew/cask-versions
brew update

  # brew UI apps
  brew install --cask \
      1password \
      ghostty \
      firefox \
      google-chrome \
      iterm2 \
      obsidian \
      the-unarchiver \
      transmission \
      vlc \
      discord \
      claude-code \
      private-internet-access \
      visual-studio-code \
      rectangle \
      flycut

  # CLIs
  brew install \
      node \
      git \
      gnupg \
      htop \
      jq \
      python \
      the_silver_searcher \
      tmux \
      tree \
      vim \
      wget \
      yarn \
      zsh

# python
pip install --upgrade pip
pip install --user pipenv
pip install virtualenv

# node packages
yarn global add typescript

# Git and Dotfiles
bash <(curl -s https://gist.githubusercontent.com/zachjustice/2af3d5de17762d8478e7d58aff2bcf4c/raw/80362b70bab1366a61913a8f5ec7376e4ea88cce/setup_dotfiles.sh)
git config --global user.name "Zach Justice"
git config --global user.email "zach.j.justice@gmail.com"

#######
## Vim and Tmux configuration
#######

# add prepatched powerline fonts for vim-airline
pip3 install --user powerline-status
git clone https://github.com/powerline/fonts.git --depth=1
( 
    cd fonts 
    ./install.sh 
)

rm -rf fonts

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# mac configuration
defaults write -g ApplePressAndHoldEnabled -bool false
mkdir Code

######
## Steps w/ manual intervention
######
ssh-keygen 
echo """
Host *
    AddKeysToAgent yes
    UseKeychain yes
    IdentityFile ~/.ssh/id_rsa
""" > ~/.ssh/config
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
