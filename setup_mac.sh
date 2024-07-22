#!/bin/bash

# Install Formulae
brew install bash
brew install bat
brew install buf
brew install coreutils
brew install defaultbrowser
brew tap jakehilborn/jakehilborn && brew install displayplacer
brew install fd
brew install fzf
brew install gh
brew install git
brew install go
brew install grep
brew install grpcurl
brew install jq
brew install k9s
brew install krb5
brew install neovim
brew install node
brew install pipenv
brew install pycparser
brew install python@3.10
brew install python@3.11
brew install python@3.12
brew install ripgrep
brew install virtualenv
brew install yarn

# Install Casks
brew install --cask 1password
brew install --cask 1password-cli
brew install --cask bloomrpc
brew install --cask brave-browser
brew install --cask corretto11
brew install --cask corretto17
brew install --cask corretto@11
brew install --cask corretto@17
brew install --cask docker
brew install --cask intellij-idea
brew install --cask notion
brew install --cask scroll-reverser
brew install --cask spotify
brew install --cask visual-studio-code
brew install --cask warp
brew install --cask zoom


# desktop apps
brew install --cask 1password 
brew install --cask arc
# - override cmd + space
# - turn off side bar
# - start at login
brew install --cask chatgpt
brew install --cask cold-turkey-blocker
brew install --cask contexts
brew install --cask docker
brew install --cask obsidian
brew install --cask raycast
brew install --cask scroll-reverser 
# - start at login
brew install --cask spotify 
# - set hotkey
brew install --cask warp 
brew install --cask visual-studio-code
brew install --cask vivid
brew install --cask zoom

# dev environment apps
if [ "$1" == "--doordash" ]; then
    brew install cadence-workflow
    brew install helm
    brew install hub
    brew install jenv
    brew install kcat
    brew install kubectx
    brew install kubernetes-cli
    brew install okta-aws-tools
    brew install postgresql@14
    brew install pre-commit
    brew install pyenv
    brew install terraform
    brew install tfenv
    brew install vault


    brew install --cask intellij-idea
    brew install --cask pycharm

    # apps need write access to own contents
    sudo xattr -dr com.apple.quarantine /Applications/IntelliJ\ IDEA.app/ && sudo chmod -R 777 /Applications/IntelliJ\ IDEA.app/
    sudo xattr -dr com.apple.quarantine /Applications/PyCharm.app/ && sudo chmod -R 777 /Applications/PyCharm.app/ 
else
    brew install --cask intellij-idea-ce
    brew install --cask pycharm-ce

    # apps need write access to own contents
    sudo xattr -dr com.apple.quarantine /Applications/IntelliJ\ IDEA\ CE.app/ && sudo chmod -R 777 /Applications/IntelliJ\ IDEA\ CE.app/
    sudo xattr -dr com.apple.quarantine /Applications/PyCharm\ CE.app/ && sudo chmod -R 777 /Applications/PyCharm\ CE.app/ 
fi







# ./vimrc -> ~/.vimrc






# set arc as default browser
osascript ./set_default_browser.scpt browser

# Tweaking dock
defaults write com.apple.dock orientation right # dock location to right side
defaults write com.apple.Dock autohide-delay -float 0 # show dock instantly
defaults write com.apple.dock autohide-time-modifier -float 0.15 # speed up animation
defaults write com.apple.dock largesize -int 128 # magnify size
defaults write com.apple.dock tilesize -integer 40 # default size
# defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}' # add spacer

# Insert all changes to dock above this line
killall Dock
