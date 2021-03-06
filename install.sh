#!/bin/bash

sudo yum update
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine

sudo yum install -y docker

sudo yum install -y gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_8.x | bash -
sudo yum install -y nodejs

sudo yum install -y golang

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

yum check-update
sudo yum install code

sudo yum update && sudo yum -y install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ln -sv “~/dotfiles/runcom/.bash_profile” ~
ln -sv “~/dotfiles/runcom/.inputrc” ~
ln -sv “~/dotfiles/git/.gitconfig.local” ~
ln -sv “~/dotfiles/vscode/settings.json” ~/.config/Code/User/