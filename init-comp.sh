#! /usr/bin/bash

# TODO chron job to update this brew cask leaves or whatever
# TODO warning at some useful point

# fix file permissions on half installed machines
# sudo chown -R $(whoami) /usr/local/share/zsh /usr/local/share/zsh/site-functions
xcode-select --install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew tap caskroom/versions
brew update

# brew UI apps
brew cask install \
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
    cmake \
    clojure \
    docker \
    git \
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
    zsh \
    cmake

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

# Vim and Tmux configuration
git clone https://github.com/powerline/fonts.git --depth=1
( 
    cd fonts 
    ./install.sh 
)

rm -rf fonts

vim +PluginInstall +qall
(
    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --clang-completer --java-completer --go-completer --rust-completer
)

# mac configuration
defaults write -g ApplePressAndHoldEnabled -bool false
mkdir Code

# steps w/ manual intervention
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

open /Applications/ShiftIt.app
