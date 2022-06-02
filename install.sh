#!/usr/bin/env bash

CURRDIR=`pwd`
BREWINSTALLED=`which brew`
XCODEINSTALLED=`which xcode-select`

# Instalar o XCode
if [[ ${XCODEINSTALLED} == "" ]]; then
  echo "Installing Xcode"
  xcode-select --install
fi

# Install Brew
if [[ ${BREWINSTALLED} == "" ]]; then
  echo "Installing Brew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#Required App
brew tap homebrew/cask
brew install mas

#List your preferred applications
brew install --cask 1password
brew install --cask 8bitdo-ultimate-software
brew install --cask appcleaner
brew install --cask crossover
brew install --cask discord
brew install docker
brew install node
brew install --cask figma
brew install --cask firefox
brew install --cask forecast
brew install --cask gimp
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask iina
brew install --cask imageoptim
brew install --cask itch
brew install --cask keycastr
brew install --cask microsoft-edge
brew install --cask notion
brew install --cask nvidia-geforce-now
brew install --cask obs
brew install --cask parallels
brew install --cask parsec
brew install --cask pictogram
brew install --cask pocket-casts
brew install --cask raycast
brew install --cask spark-ar-studio
brew install --cask spotify
brew install --cask steam
brew install --cask telegram
brew install --cask todoist
brew install --cask visual-studio-code
brew install --cask whatsapp
brew install --cask blackhole-2ch

#MAS
#17track
#acnh.guide
#affinity designer
#flow
#color picker
#gifski
#pixelmator pro
#trakt
#trello

#davinci resolve
#ps remote play
#tinkertool
#logitech g hub

#mas install 1295203466 #Remote Desktop