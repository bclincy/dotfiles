if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

echo "Installing cask..."
CASKS=(
    iterm2
    google-backup-and-sync
    firefox
    font-source-code-pro
    slack
    intellij-idea-ce
    visual-studio-code
    steam
    google-chrome
    alfred 
    1password
    phpstorm
    macdown
)
echo "Installing cask apps..."
brew cask install ${CASKS[@]}

brew tap homebrew/cask-fonts
brew tap "hashicorp/tap"
brew tap "heroku/brew"
brew tap "homebrew/bundle"
brew tap "homebrew/cask"
brew tap "homebrew/core"
brew tap "homebrew/services"
brew tap "shivammathur/php"
# Informative, fancy bash prompt for Git users
brew install "bash-git-prompt"
# Open source suite of directory software
brew install "openldap"
# Interpreted, interactive, object-oriented programming language
brew install "python"
# Core application library for C
#brew "glib"
# Toolkit for embedding hypervisor capabilities in your application
brew install "hyperkit", link: false
# Postgres C API library
brew install "libpq"
# Run a Kubernetes cluster locally
brew install "minikube"
# Open source relational database management system
brew install "mysql-client"
# HTTP/2 C Library
#brew "nghttp2"
# Libraries for security-enabled client and server applications
brew install "nss"
# General-purpose scripting language
brew install "php@7.4", restart_service: false
brew install "php@8.1", restart_service: false
# Tool Command Language
brew install "tcl-tk"
# Terraform
brew install "hashicorp/tap/terraform", link: false
# Everything you need to get started with Heroku
brew install "heroku/brew/heroku"
# General-purpose scripting language
brew install "shivammathur/php/php"
#brew install git
#brew install bash
# Interactive JavaScript, Python or SQL interface
brew install node

npm -v