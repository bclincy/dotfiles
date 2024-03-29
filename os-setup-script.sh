#!/usr/bin/env bash
# Setup script for setting up a new macos machine
echo "Starting setup"
# install xcode CLI
xcode-select —-install

# Check for Homebrew to be present, install if it's missing
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

echo "Installing cask..."
CASKS=(
    iterm2
    slack
    intellij-idea-ce
    visual-studio-code
    steam
    google-chrome
    alfred 
    evernote
    1password
    macdown
    phpstorm
    docker
)
echo "Installing cask apps..."
brew cask install ${CASKS[@]}

echo "Installing VS Code Extensions...."
code --install-extension vscode_extensions

echo "Configuring OS..."
# Set fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0
# Require password as soon as screensaver or sleep mode starts
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
