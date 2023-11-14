# !/bin/bash

# dev tools
brew install bat 
brew install defaultbrowser
brew tap jakehilborn/jakehilborn && brew install displayplacer
brew install fd
brew install fzf
# - sign in with key
brew install gh
brew install grpcurl
brew install helm
brew install hub
brew install jq
# - alias to k
brew install kubectl
brew install kubectx
brew install k9s
brew install node
brew install ripgrep
brew install tfenv
brew install tig


# desktop apps
brew install --cask 1password 
brew install --cask arc
# - override cmd + space
# - turn off side bar
# - start at login
brew install --cask contexts
# - start at login
brew install --cask scroll-reverser 
# - start at login
brew install --cask spotify 
# - set hotkey
brew install --cask warp 
brew install --cask zoom

# dev environment apps
if [ "$1" == "--doordash" ]; then
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
brew install --cask visual-studio-code


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
