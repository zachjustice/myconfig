#! /usr/bin/bash

# fix file permissions on half installed machines
# sudo chown -R $(whoami) /usr/local/share/zsh /usr/local/share/zsh/site-functions
xcode-select --install

#######
# Brew and Dev tools installation
#######

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew tap homebrew/cask-versions
brew update

# brew UI apps
brew install cask \
    docker \
    iterm2 \
    google-chrome \
    firefox \
    intellij-idea \
    shiftit \
    spotify \
    sublime-text \
    flux \
    postman \
    transmission \
    vlc \
    nordvpn \
    calibre \
    the-unarchiver \
    adoptopenjdk8

# CLIs
brew install \
    broot \
    clojure \
    cmake \
    cowsay \
    docker \
    fortune \
    git \
    gnupg \ 
    go \
    gradle \
    htop \
    jq \
    kafka \
    kubernetes-cli \
    leiningen \
    maven \
    nginx \
    opencv \
    postgresql \
    pypy \
    python \
    sbt \
    scala \
    scipy \
    the_silver_searcher \
    thefuck \
    tmux \
    tree \
    vegeta \
    vim \
    wget \
    yarn \
    zsh

# golang dev tools
go get golang.org/x/tools/cmd/godoc
go get github.com/golang/lint/golint

# aws cli stuff via python
pip3 install awscli awsebcli
echo "export PATH=\"$(brew --prefix python)/libexec/bin:$PATH\"" >> ~/.zshrc

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

vim +PluginInstall +qall
(
    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --clang-completer --java-completer --ts-completer
)

# mac configuration
defaults write -g ApplePressAndHoldEnabled -bool false
mkdir Code

######
## Steps w/ manual intervention
######

# ssh
mkdir ~/.ssh
ssh-keygen -t rsa -b 4096 -C "zach.j.justice@gmail.com"
echo """
Host *
    AddKeysToAgent yes
    UseKeychain yes
    IdentityFile ~/.ssh/id_rsa>  UseKeychain yes
    IdentityFile ~/.ssh/id_rsa
""" > ~/.ssh/config
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa

# gpg and pass conf
git clone git@bitbucket.org:zachjustice123/harpocrates.git ~/.password-store/
pass init zach.j.justice@gmail.com

touch ~/.gnupg/gpg-agent.conf
echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
gpg-connect-agent reloadagent /bye

set VERSION 1.2.1
curl -sSL https://github.com/passff/passff-host/releases/download/$VERSION/install_host_app.sh | bash -s -- firefox

open /Applications/ShiftIt.app

