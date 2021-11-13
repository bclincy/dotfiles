tap "hashicorp/tap"
tap "heroku/brew"
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/core"
tap "homebrew/services"
tap "shivammathur/php"
# Informative, fancy bash prompt for Git users
brew "bash-git-prompt"
# Open source suite of directory software
brew "openldap"
# Get a file from an HTTP, HTTPS or FTP server
brew "curl"
# Interpreted, interactive, object-oriented programming language
brew "python@3.9"
# Core application library for C
brew "glib"
# Toolkit for embedding hypervisor capabilities in your application
brew "hyperkit", link: false
# Postgres C API library
brew "libpq"
# Run a Kubernetes cluster locally
brew "minikube"
# Open source relational database management system
brew "mysql-client"
# HTTP/2 C Library
brew "nghttp2"
# Libraries for security-enabled client and server applications
brew "nss"
# General-purpose scripting language
brew "php@7.4", restart_service: true
# Tool Command Language
brew "tcl-tk"
# Terraform
brew "hashicorp/tap/terraform", link: false
# Everything you need to get started with Heroku
brew "heroku/brew/heroku"
# General-purpose scripting language
brew "shivammathur/php/php"
brew git
brew bash
# Interactive JavaScript, Python or SQL interface
cask "mysql-shell"
cask "alfred"
cask "google-chrome"
cask "visual-studio-code"
