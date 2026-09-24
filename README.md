Below are the steps for both MacOS 💻 and Ubuntu 🖥 (hoping other linux distros too)

### Baseline tools steps
1. 💻🖥 Install `Chrome`.
2. 🖥 Install basics for brew `sudo apt install git curl g++ build-essential tree`
3. 💻🖥 Install `Brew` directly from shell using scrits from `https://brew.sh`.
4. 💻 Install basics from brew `brew install git curl tree`
5. 💻🖥 Install github tools `brew install gh`
6. 💻🖥 Auth git via browser `gh auth login`
7. 💻🖥 Setup github ssh with generate: `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`, start agent: `eval "$(ssh-agent -s)"` and add key: `ssh-add ~/.ssh/id_rsa`
8. 💻🖥 Install chezmoi `brew install chezmoi`
9. 💻🖥 Initialize chezmoi `chezmoi init https://github.com/mohansella/dotfiles.git`.
10. 💻🖥 Apply chezmoi selectively in a directory `chezmoi apply .` or `chezmoi update` as a whole.

## Mac Doc Setup 
1. 💻 Install karabiner-elements with `brew install --cask karabiner-elements`
2. 💻 Install linearmouse with `brew install --cask linearmouse`

### shell PDE with neovim, tmux, ohmyposh
1. 💻🖥 Install Nerd Fonts `brew install font-jetbrains-mono-nerd-font`
2. 💻🖥 Install OhMyPosh `brew install oh-my-posh`
3. 💻🖥 Install neovim `brew install neovim` and can install `brew install ripgrep`
4. 💻🖥 Install tmux `brew install tmux` and run `C-b I` to install plugins
5. 💻🖥 Install lazygit `brew install lazygit`
6. 💻🖥 Install zoxide `brew install oxide`
7. 💻🖥 Install zsh autosuggestions `brew install zsh-autosuggestions`

### Install Flutter dependencies
1. 💻🖥 `brew install flutter`
2. 💻🖥 `brew install android-studio`
3. 💻🖥 open android studio and install commandline-tools in sdkmanager
4. 💻 `brew install rbenv` and install latest ruby `rbenv install 3.3.5; rbenv shell 3.3.5`
5. 💻 `sudo gem install cocoapods`
6. 💻🖥 run `flutter doctor` to finalize


### Brew standalone installs
1. `brew install nvm` - configured in zprofile
