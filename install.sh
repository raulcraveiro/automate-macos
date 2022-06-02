#!/usr/bin/env bash

CURRDIR=`pwd`
BREWINSTALLED=`which brew`
XCODEINSTALLED=`which xcode-select`

# Instalar o XCode
if [[ ${XCODEINSTALLED} == "" ]]; then
  echo "Instalando o Xcode..."
  xcode-select --install
fi

# Instalar o Homebrew
if [[ ${BREWINSTALLED} == "" ]]; then
  echo "Instalando o homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  #Adicionando o Homebrew no PATH para Apple Silicon
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

#Instalar o repositório Cask
brew tap homebrew/cask

#Instalar o MAS para instalar softwares da Mac App Store
brew install mas

#Instalar todos os aplicativos utilizados
brew install --cask 1password
brew install --cask 8bitdo-ultimate-software
brew install --cask appcleaner
brew install --cask crossover
brew install --cask discord
brew install --cask figma
brew install --cask firefox
brew install --cask forecast
brew install --cask gimp
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask hiddenbar
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
brew install docker
brew install node
brew install neofetch
brew install scrcpy

#Instalar todos os aplicativos da MAS
mas install 1569813296  # 1Password for Safari
mas install 1423210932  # Flow 
mas install 1545870783  # Color Picker
mas install 1351639930  # Gifski   
mas install 824171161   # Affinity Designer 
mas install 409201541   # Pages 
mas install 409183694   # Keynote  
mas install 409203825   # Numbers   
mas install 1289583905  # Pixelmator Pro 
mas install 1278508951  # Trello

# Softwares que não tem como ser instalados via script

#iOS: 17Track, ACNH.Guide e Trakt
#macOS: Davinci Resolve, PS Remote Play, Tinkertool e Logitech G Hub
