# 🛋️ natritmeyer's dotfiles

Managed with 📦 [GNU Stow](https://www.gnu.org/software/stow/)

# Packages

- 🍺 `brew` - Install all the things
- 👻 `ghostty` - Config for shiny new terminal
- 💾 `git` - A gitconfig that works for me
- 🔐 `gpg` - Points gpg at `pinentry-mac`
- 👨‍💻 `nvim` - My Lazyvim config for neovim
- ✨ `opencode` - Config for my pet AI
- 📦 `stow` - Make stow work everywhere
- 📄 `zed` - My text editor of choice
- 💻 `zsh` - My starship and zsh config

# 🔧 Dependencies

Install these first:

1. [homebrew](https://brew.sh)
1. [sdkman](https://sdkman.io)
1. [nvm](https://nvm.sh)
1. [rust](https://rustup.rs)

# 🔧 Installation

## 🍺 Install Stow

First, install `stow`:

1. `$ brew install stow`

## ⬇️ Download dotfiles

1. `$ cd ~`
1. `$ git clone https://github.com/natritmeyer/dotfiles.git`

## 📦 Set up stow

1. `$ cd dotfiles`
1. `$ stow stow`

## 📦 Stow the Brewfile

1. `$ stow brew`

## 🍺 Install components listed in the Brewfile

1. `$ cd ~`
1. `$ brew bundle -g`

## 📦 Stow the rest of the packages

1. `$ stow ghostty git gpg nvim zed zsh`

# Updating packages managed by brew

`$ rustup update && brew update && brew bundle -g && brew upgrade && brew upgrade --cask --greedy`
