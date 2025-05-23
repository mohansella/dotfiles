Below are the steps for both MacOS 💻 and Ubuntu 🖥 (hoping other linux distros too)

### Baseline tools steps
1. 💻🖥 Install `Chrome`.
2. 🖥 Install basics for brew `sudo apt install git curl g++ build-essential tree`
3. 💻🖥 Install `Brew` directly from shell using scrits from `https://brew.sh`.
4. 💻🖥 Install github tools `brew install gh`
5. 💻🖥 Auth git via browser `gh auth login`
6. 🖥 Might need to setup github ssh with a.generate one: `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`, b.start agent `eval "$(ssh-agent -s)"` and c.add key `ssh-add ~/.ssh/id_rsa`
7. 💻🖥 Install chezmoi `brew install chezmoi`
8. 💻🖥 Initialize chezmoi `chezmoi init git@github.com:mohansella/dotfiles.git`.
9. 💻🖥 Apply chezmoi selectively in a directory `chezmoi apply .` or `chezmoi update` as a whole.

### shell PDE with neovim, tmux, ohmyposh
1. 💻🖥 Install OhMyPosh `brew install oh-my-posh`
2. 💻🖥 Install Nerd Fonts via OhMyPosh using `oh-my-posh install font`
3. 💻🖥 Install neovim `brew install neovim` and can install `brew install ripgrep`
4. 💻🖥 Install tmux `brew install tmux`

### Install Flutter dependencies
1. 💻🖥 `brew install flutter`
2. 💻🖥 `brew install android-studio`
3. 💻🖥 open studio and install commandline-tools in sdkmanager
4. 💻 `brew install rbenv` and install 3.3.5 or max for ruby
5. 💻 `sudo gem install cocoapods`


### Brew standalone installs
1. `brew install nvm` - configured in zprofile
