#!/bin/sh

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
brew tap homebrew/cask-versions

#Instalar o MAS para instalar softwares da Mac App Store
brew install mas

#Instalar todos os aplicativos GUI
brew install --cask 1password
brew install --cask appcleaner
brew install --cask crossover
brew install --cask discord
brew install --cask figma
brew install --cask firefox
brew install --cask forecast
brew install --cask google-chrome
brew install --cask hiddenbar
brew install --cask iina
brew install --cask notion
brew install --cask nvidia-geforce-now
brew install --cask obs
brew install --cask utm
brew install --cask pictogram
brew install --cask raycast
brew install --cask spark-ar-studio
brew install --cask steam
brew install --cask origin
brew install --cask heroic
brew install --cask telegram
brew install --cask visual-studio-code
brew install --cask docker
brew install --cask whatsapp
brew install --cask free-download-manager
brew install --cask logi-options-plus

#Instalar todos os aplicativos CLI
brew install node@16
brew install ffmpeg
brew install neofetch
brew install yt-dlp
brew install zsh-autosuggestions

#Instalar todos os aplicativos da Mac App Store
mas install 1569813296  # 1Password for Safari
#mas install 1545870783  # Color Picker
mas install 1616831348  # Affinity Designer 2
mas install 409201541   # Pages 
mas install 409183694   # Keynote  
mas install 409203825   # Numbers   
mas install 1289583905  # Pixelmator Pro 
mas install 937984704   # Amphetamine
mas install 1586435171  # Actions
mas install 1278508951  # Trello
mas install 899247664   # Testflight
mas install 1568924476  # Mela
mas install 639968404   # Parcel

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
#iOS: Trakt
#macOS: Davinci Resolve, PS Remote Play, Tinkertool, Duckstation, Cemu, MacGPT, Reeder

#Instalar o Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Fazer o Oh My Zsh atualizar automaticamente
echo "zstyle ':omz:update' mode auto" >> ~/.zshrc

#Remover o título que o Oh My Zsh adiciona no terminal
echo "DISABLE_AUTO_TITLE='true'" >> ~/.zshrc

#Adicionar o comando "code ." no terminal
cat << EOF >> ~/.zprofile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

#Limpar o que restou das instalações
brew autoremove
brew cleanup
