#!/bin/bash
sudo apt-get update
echo "--------------"
echo "Prerequisites"
echo "Get updated  Rails prerequisites from https://github.com/rbenv/ruby-build/wiki#suggested-build-environment"
echo "--------------"
sudo apt-get install git -y
sudo apt-get install gcc -y

sudo apt-get install autoconf -y
sudo apt-get install bison  -y
sudo apt-get install build-essential  -y
sudo apt-get install libssl-dev  -y
sudo apt-get install libyaml-dev  -y
sudo apt-get install libreadline6-dev  -y
sudo apt-get install zlib1g-dev  -y
sudo apt-get install libncurses5-dev  -y
sudo apt-get install libffi-dev  -y
sudo apt-get install libgdbm6  -y
sudo apt-get install libgdbm-dev  -y
sudo apt-get install libdb-dev  -y

echo "--------------"
echo "Installing Ruby using rbenv along with its setup"
echo "--------------"

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build


rbenv install 2.7.1
rbenv global 2.7.1

gem install bundler -v 2.1.4

ruby -v

gem install rails -v 6.0.0
rails -v
