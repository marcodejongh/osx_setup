#!/bin/sh

# Only show active apps in dock
defaults write com.apple.dock static-only -bool TRUE

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install brew packages
brew update
brew install mas
mas signin

brew cask install java java6 java7 jce-unlimited-strength-policy macdown vagrant 
brew install aalib ack adns atk atlassian-plugin-sdk autoconf automake babl cairo cctools chromedriver clojure cmake coreutils cowsay curl d-bus dbusaalib ack adns atk atlassian-plugin-sdk autoconf automake babl cairo casperjs cctools chromedriver clojure cmake coreutils cowsay curl d-bus dbus diff-so-fancy dirmngr docker docker-machine ffmpeg findutils fontconfig fortune freetype gawk gd gdbm gdk-pixbuf gettext gifsicle git git-extras glib gmp gnu-indent gnu-sed gnu-tar gnupg gnupg2 gnutls gobject-introspection gpg-agent gradle graphite2 gsettings-desktop-schemas gtk+ gtk+3 gtk-mac-integration harfbuzz hicolor-icon-theme hub icu4c jenv jpeg jruby laas-cli lame leiningen libassuan libcroco libepoxy libevent libffi libgcrypt libgpg-error libksba libpng librsvg libssh2 libtasn1 libtiff libtool libunistring libusb libusb-compat libwmf libyaml lynx maven midnight-commander mongodb mpfr mvnvm ncdu nettle nmap node npth nvm nyancat openssl openssl@1.1 p11-kit pango pcre perl phantomjs pinentry pixman pkg-config postgresql pth py2cairo pygobject pygtk python python3 readline reattach-to-user-namespace rlwrap ruby rustup-init s-lang shared-mime-info shellcheck sl sqlite ssh-copy-id tmux tomcat utf8proc vim webp wget wifi-password x264 xvid xz zsh zsh-history-substring-search  python3 readline reattach-to-user-namespace rlwrap ruby rustup-init s-lang shared-mime-info shellcheck sl sqlite ssh-copy-id tmux tomcat utf8proc vim webp wget wifi-password x264 xvid xz zsh zsh-history-substring-search 

# install tpm
if "test ! -d ~/.tmux/plugins/tpm" \
   "run 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && ~/.tmux/plugins/tpm/bin/install_plugins'"

gem install travis

mkdir ~/Screenshots

# OSX CHANGES
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

# Git config changes
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
