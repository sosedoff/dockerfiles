#!/bin/bash

# Terminate on failures
set -e

# Add build dependencies
apt-get install -y sudo python-software-properties bsdmainutils netcat telnet wget
apt-get install -y autoconf binutils bison build-essential curl libcurl4-openssl-dev libffi-dev libgdbm-dev libicu-dev libncurses5-dev libreadline-dev libreadline6-dev libssl-dev libxml2 libxml2-dev libxslt-dev libxslt1-dev libyaml-dev ncurses-dev openssh-server zlib1g zlib1g-dev
apt-get install -y libpq-dev
apt-get install -y libssl1.0.0 libssl-dev

# Add SCMs repositories
add-apt-repository -y ppa:git-core/ppa
add-apt-repository -y ppa:mercurial-ppa/releases
add-apt-repository -y ppa:svn/ppa
apt-get update -y

# Install SCMs
apt-get install -y git mercurial subversion