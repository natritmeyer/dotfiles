# 🛋️ natritmeyer's dotfiles

Managed with 📦 [GNU Stow](https://www.gnu.org/software/stow/)

# Packages

* 🍺 `brew` - Install all the things
* 👻 `ghostty` - Config for shiny new terminal
* 💾 `git` - A gitconfig that works for me
* 🔐 `gpg` - Points gpg at `pinentry-mac`
* 👨‍💻 `nvim` - My Lazyvim config
* ✨ `opencode` - Config for my pet AI
* 📦 `stow` - Make stow work everywhere
* 📝 `vscode` - Not my favourite editor
* 💻 `zsh` - My starship config

# 🔧 Dependencies

Install these first:

1. [homebrew](https://brew.sh)
1. [sdkman](https://sdkman.io)

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

1. `$ stow ghostty git gpg nvim vscode zsh`
