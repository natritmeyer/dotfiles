# 🛋️ natritmeyer's dotfiles

Managed with 📦 [GNU Stow](https://www.gnu.org/software/stow/)

# 📦 Packages

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

## 📦 Stow everything

1. `$ cd dotfiles`
1. `$ make stow`

This will stow all packages and install brew dependencies. Alternatively, run the steps manually:

1. `$ stow stow`
1. `$ stow brew`
1. `$ brew bundle -g`
1. `$ stow ghostty git gpg nvim opencode zed zsh`

# 🔄 Updating packages managed by brew

`$ make update`

Or run manually:

`$ rustup update && brew update && brew bundle -g && brew upgrade && brew upgrade --cask --greedy`
