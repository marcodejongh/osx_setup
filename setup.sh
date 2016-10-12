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


echo "Change default dir for screenshots to ~/Screenshots"
defaults write com.apple.screencapture location ~/Screenshots 

echo "Change screenshot format to jpg to save space"
defaults write com.apple.screencapture type jpg

# source: https://gist.github.com/brandonb927/3195465
echo "Disable Photos.app from starting everytime a device is plugged in"
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

echo "Increasing sound quality for Bluetooth headphones/headsets"
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

echo "Show hidden files in Finder by default"
defaults write com.apple.Finder AppleShowAllFiles -bool true

echo "Show dotfiles in Finder by default"
defaults write com.apple.finder AppleShowAllFiles TRUE

echo "Show all filename extensions in Finder by default"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Display full POSIX path as Finder window title"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

echo "Disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "Avoid creation of .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "Prevent Time Machine from prompting to use new hard drives as backup volume"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

killall SystemUIServer
