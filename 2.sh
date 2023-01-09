#/bin/sh

nvm install 16

nvm use 16

npm i -g yarn

# Config tmux
cp .tmux.conf $HOME/.tmux.conf
npm i -g tmux-cpu tmux-mem

# Install alacritty
git clone https://github.com/jwilm/alacritty.git

cd alacritty

cargo build --release

sudo cp target/release/alacritty /usr/local/bin

sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop

sudo update-desktop-database

sudo npm i -g alacritty-themes

mkdir -p $HOME/.config/alacritty

cd $HOME/.config/alacritty

wget https://github.com/alacritty/alacritty/releases/download/v0.11.0-rc3/alacritty.yml

cd $HOME
sudo npm i -g alacritty-themes


wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.deb
sudo apt update
sudo apt install ./nvim-linux64.deb

LV_BRANCH='release-1.2/neovim-0.8' curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh | bash

echo 'export PATH=$PATH:/home/duc/.local/bin' $HOME/.zshrc
