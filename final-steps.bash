#!/bin/bash
apt-get update
apt-get upgrade -y
apt-get install -y build-essential git zip
cd 
echo "Working directory $(pwd)"
echo "Running as $(whoami)"
git clone https://github.com/golang/go.git go1.4
cd go1.4/src
git checkout go1.4.3
export CGO_ENABLED=0
./make.bash
unset CGO_ENABLED
cd 
git clone https://github.com/golang/go.git
cd go/src
git checkout go1.10
./make.bash
cd
chown -R vagrant /home/vagrant
