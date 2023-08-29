FROM ubuntu:jammy-20230804

WORKDIR /root

ADD setup.sh .
ADD install-git.sh .
ADD install-tools.sh .
ADD install-puppet.sh .

RUN apt-get update && \
    ./setup.sh && \
    ./install-git.sh && \
    ./install-puppet.sh && \
    ./install-tools.sh

ENV PATH="${PATH}:/opt/puppetlabs/pdk/private/git/bin:/opt/puppetlabs/puppet/bin"
ENV PDK_DISABLE_ANALYTICS=true