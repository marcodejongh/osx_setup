#!/bin/sh

# Only show active apps in dock
defaults write com.apple.dock static-only -bool TRUE

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install brew packages
brew install autoconf casperjs coreutils findutils gawk gdbm gettext git git-extras glib gmp gnu-indent gnu-sed gnu-tar gnutls grep hub libevent libffi libpng libssh2 libtasn1 maven midnight-commander mongodb ncdu nettle nmap node openssh openssl pcre phantomjs pkg-config reattach-to-user-namespace s-lang ssh-copy-id tmux wget xz zsh

gem install travis
brew cask install macdown

wget https://raw.github.com/beardedspice/beardedspice/distr/publish/releases/BeardedSpice-latest.zip
unzip BeardedSpice-latest.zip -d /Applications

mkdir ~/Screenshots

# Change default dir for screenshots
defaults write com.apple.screencapture location ~/Screenshots 

# Change screenshot format to jpg
defaults write com.apple.screencapture type jpg
killall SystemUIServer
