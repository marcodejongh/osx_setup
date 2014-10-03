#!/bin/sh

# Only show active apps in dock
defaults write com.apple.dock static-only -bool TRUE

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install brew packages
brew install android-sdk autoconf casperjs coreutils findutils gawk gdbm gettext git git-extras glib gmp gnu-indent gnu-sed gnu-tar gnutls grep hub libevent libffi libpng libssh2 libtasn1 maven midnight-commander mongodb ncdu nettle nmap node openssh openssl pcre phantomjs pkg-config reattach-to-user-namespace s-lang ssh-copy-id tmux wget xz zsh
