#!/bin/bash

set +x

wget -O puppet.deb https://apt.puppet.com/puppet-tools-release-jammy.deb
dpkg -i puppet.deb
rm puppet.deb

apt-get update

apt-get -y install build-essential
apt-get -y install --no-install-recommends puppet-bolt
apt-get -y install --no-install-recommends pdk
