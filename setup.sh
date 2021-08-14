#!/bin/bash

set +x

apt-get update
apt-get install -y --no-install-recommends apt-utils
apt-get install -y --no-install-recommends ca-certificates
apt-get install -y --no-install-recommends wget