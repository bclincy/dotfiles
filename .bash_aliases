alias h='history'
alias c='clear'
alias memusage='ps -o rss, command -waxc |sort -n'
alias ll='ls -al'
alias rmfd='find . -type d -name \@eaDir* -prune -exec rm -rf {} \;'
alias l="ls -la"       # List in long format, include dotfiles
alias ld="ls -ld */"   # List in long format, only directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
# Recursively remove .DS_Store files
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"

# Shortcuts
alias ch='history | grep "git commit"'
alias hg='history | grep'
alias yt='subl ~/Google\ Drive/YouTube/Scripts/'
alias cyt='cd ~/Google\ Drive/YouTube/Scripts/'
alias oyt='open ~/Google\ Drive/YouTube/Scripts/'

# List all files colorized in long format, including dot files
alias la="ls -lahF ${colorflag}"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update_system='sudo softwareupdate -i -a'

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# To prep before screencasts
alias tut_mode='defaults write com.apple.dock autohide -bool true && killall Dock;
               defaults write com.apple.finder CreateDesktop -bool false && killall Finder;
               defaults write com.apple.menuextra.clock IsAnalog -bool true && killall SystemUIServer;
               rm -rf ~/.Trash/*;
               rm -rf ~/Downloads/*'
alias reg_mode='defaults write com.apple.dock autohide -bool false && killall Dock;
               defaults write com.apple.finder CreateDesktop -bool true && killall Finder;
               defaults write com.apple.menuextra.clock IsAnalog -bool false && killall SystemUIServer;'

alias clean='rm -rf ~/.Trash/*; rm -rf ~/Downloads/*'
alias wipe_env='rm -rf ~/tutorial_env; python3 -m venv ~/tutorial_env'
alias tut_env='source ~/tutorial_env/bin/activate'