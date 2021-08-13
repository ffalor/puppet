#!/bin/bash

set +x

wget -O puppet-agent.deb https://apt.puppet.com/puppet7-release-focal.deb 
dpkg -i puppet-agent.deb
rm puppet-agent.deb

apt-get update

apt-get -y install --no-install-recommends puppet-agent