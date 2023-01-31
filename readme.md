## Run by flow

```
$ sudo add-apt-repository ppa:aslatter/ppa -y
$ sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 python3-pip git zsh curl tmux -y


# Install zimfw
$ chsh -s $(which zsh)

$ curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
```
Logout ubuntu

```
$ sudo su
$ cd ~
$ vi .tmux.conf
# coppy from file tmux.conf to here
$ exit
$ sudo tmux
$ curl https://sh.rustup.rs -sSf | sh -s -- -y
# put to .zshenv 
# ->
. "$HOME/.cargo/env"
$ source .zshenv
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
# put to .zshenv
# -->
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
$ source .zshenv
#Install node 16
$ nvm install 16
$ nvm use 16
$ npm i -g yarn tmux-cpu tmux-mem
$ git clone https://github.com/jwilm/alacritty.git
$ cd alacritty
$ cargo build --release
$ sudo cp target/release/alacritty /usr/local/bin
$ sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
$ sudo desktop-file-install extra/linux/Alacritty.desktop

$ sudo update-desktop-database

$ npm i -g alacritty-themes
$ cd ~
$ vi .alacritty.yml
# coppy from https://github.com/anhduca4/dotfiles/blob/master/alacritty.yml to here
$ rm -rf alacritty
```

Font https://github.com/huytd/roboplex-font

```
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.deb
sudo apt update
sudo apt install ./nvim-linux64.deb

LV_BRANCH='release-1.2/neovim-0.8' curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh | bash

echo 'export PATH=$PATH:/home/duc/.local/bin' $HOME/.zshrc
```