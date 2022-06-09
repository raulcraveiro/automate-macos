#!/usr/bin/env bash

CURRDIR="pwd"
BREWINSTALLED="which brew"
XCODEINSTALLED="which xcode-select"

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
  echo "eval '$(/opt/homebrew/bin/brew shellenv)'" >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

#Instalar repositórios
brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew tap homebrew/cask-drivers

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
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask hiddenbar
brew install --cask iina
brew install --cask imageoptim
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
brew install --cask logitech-g-hub
brew install docker
brew install node
brew install neofetch
brew install scrcpy
brew install yt-dlp

#Instalar todos os aplicativos da Mac App Store
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

#Instalar todas as fontes
brew install font-bebas-neue 
brew install font-fira-code
brew install font-fira-mono
brew install font-fira-sans
brew install font-fira-sans-condensed 
brew install font-fira-sans-extra-condensed 
brew install font-ibm-plex
brew install font-ibm-plex-mono 
brew install font-ibm-plex-sans  
brew install font-ibm-plex-sans-condensed   
brew install font-ibm-plex-serif 
brew install font-inter 
brew install font-lato  
brew install font-merriweather
brew install font-merriweather-sans
brew install font-montserrat
brew install font-noto-mono
brew install font-noto-sans
brew install font-noto-serif
brew install font-nunito
brew install font-nunito-sans
brew install font-open-sans
brew install font-open-sans-condensed
brew install font-oswald
brew install font-playfair-display
brew install font-poppins
brew install font-pt-sans
brew install font-pt-mono
brew install font-pt-serif
brew install font-raleway
brew install font-roboto
brew install font-roboto-mono
brew install font-roboto-serif
brew install font-rubik
brew install font-source-sans-pro
brew install font-source-serif-pro
brew install font-source-code-pro
brew install font-ubuntu
brew install font-ubuntu-condensed
brew install font-ubuntu-mono
brew install font-work-sans

## Softwares que não tem como ser instalados via script
#iOS: 17Track, ACNH.Guide e Trakt
#macOS: Davinci Resolve, PS Remote Play, Tinkertool

#Instalar o Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Fazer o Oh My Zsh atualizar automaticamente
echo "zstyle ':omz:update' mode auto" >> ~/.zshrc

#Remover o título que o Oh My Zsh adiciona no terminal
echo "DISABLE_AUTO_TITLE='true'" >> ~/.zshrc

#Fazer o Homebrew atualizar automaticamente 
brew autoupdate start --upgrade --cleanup

#Mudar o emoji do Homebrew, só pra deixar mais personalizado
export HOMEBREW_INSTALL_BADGE="🎉"

#Adicionar o comando "code ." no terminal
cat << EOF >> ~/.zprofile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

#Limpar o que restou das instalações
brew autoremove
brew cleanup