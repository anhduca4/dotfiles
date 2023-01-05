#/bin/sh

sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 python3-pip git zsh curl tmux -y


# Install zimfw
chsh -s $(which zsh)

curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

sed -i 's/typeset -gr _zim_fpath/if [[ -v _zim_fpath ]]; then\nprint "That okie zimfw."\nelse\ntypeset -gr _zim_fpath/' /root/.zim/init.zsh

sed -i 's/src)/src)\nfi\n/' /root/.zim/init.zsh

#git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

#cat <<EOT >> $HOME/.zshrc
#setopt EXTENDED_GLOB
#for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#done
#EOT

# Install rust
sudo curl https://sh.rustup.rs -sSf | sh -s -- -y

#Install nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash


print "Please logout then run file 2.sh"