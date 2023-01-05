#/bin/sh

sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 python3-pip git zsh curl tmux -y


# Install zimfw
chsh -s $(which zsh)

#curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

cat <<EOT >> $HOME/.zshrc
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
EOT

# Install rust
sudo curl https://sh.rustup.rs -sSf | sh

#Install nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

source $HOME/.zshrc

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

mkdir $HOME/.config/alacritty

cd $HOME/.config/alacritty

wget https://github.com/alacritty/alacritty/releases/download/v0.11.0-rc3/alacritty.yml

cd $HOME
sudo npm i -g alacritty-themes


wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.deb
sudo apt update
sudo apt install ./nvim-linux64.deb

LV_BRANCH='release-1.2/neovim-0.8' curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh | bash

echo 'export PATH=$PATH:/home/duc/.local/bin' $HOME/.zshrc

source $HOME/.zshrc

#ln -s $HOME/.zshrc /root/.zshrc

