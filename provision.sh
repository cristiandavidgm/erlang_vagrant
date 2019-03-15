#!/usr/bin/env bash

# Unoffical Bash "strict mode"
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
#ORIGINAL_IFS=$IFS
IFS=$'\t\n' # Stricter IFS settings

# Install Git and other asdf dependencies
sudo yum install -y nfs-common portmap git automake autoconf libreadline-dev libncurses-dev \
    libssl-dev libyaml-dev libffi-dev libtool unixodbc-dev \
    build-essential autoconf m4 libncurses5-dev curl openssl-devel ncurses-devel glibc.i686 nspr 

# Install node
sudo yum install -y epel-release
sudo yum install -y gcc gcc-c++
sudo yum install -y nodejs

#install kerl
mkdir -p $HOME/bin
cd $HOME/bin
curl -O https://raw.githubusercontent.com/kerl/kerl/master/kerl 
chmod a+x kerl


# Navigate to the directory containing the project (/vagrant is the directory
# that is synced with the project dir on the host)
cd /vagrant
# Make the versions defined .tool-versions file the versions used by the vagrant
# user in any directory
cp .tool-versions $HOME
# Install all correct versions of these packages for the project
# asdf install

echo "Completed setup of Erlang environment!"
