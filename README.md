Below steps common for both MacOS and ubuntu (hoping other linux distros too)

### Dotfiles management
1. Install `Chrome` from site.
2. Install `Brew` directly from shell.
3. Install git `brew install git`
4. Install github tools `brew install gh`
5. Login with browser `gh auth login`
6. Install chezmoi `brew install chezmoi`
7. Restart shell and run `chezmoi init git@github.com:mohansella/dotfiles.git`
8. Apply chezmoi selectively in a directory `chezmoi apply .` or `chezmoi update` as a whole.

### NeoVim setup
1. Install neovim `brew install neovim`
2. Install g++ `brew install g++`

### Install Flutter dependencies
1. `brew install flutter`

2. `brew install android-studio`
3. open studio and install commandline-tools in sdkmanager

4. `brew install rbenv` and install 3.3.5 or max for ruby
5. `sudo gem install cocoapods`


### Brew standalone installs
1. `brew install nvm` - configured in zprofile
