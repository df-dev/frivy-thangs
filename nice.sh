#! /bin/bash
#----------------------------------------
#set up some niceties :/ 
#----------------------------------------
sudo DEBIAN_FRONTEND=noninteractive apt install -y byobu
sudo DEBIAN_FRONTEND=noninteractive apt install -y net-tools
sudo DEBIAN_FRONTEND=noninteractive apt install -y jq
sudo DEBIAN_FRONTEND=noninteractive apt install -y awscli
sudo DEBIAN_FRONTEND=noninteractive apt install -y zsh
sudo DEBIAN_FRONTEND=noninteractive apt autoremove -y

#install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#install ultimate vim configs
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
