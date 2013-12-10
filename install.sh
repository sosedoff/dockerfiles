#!/bin/bash
# Docker installation under Ubuntu 12.04 LTS

apt-get update -y
apt-get install -y git-core
apt-get install -y linux-image-generic-lts-raring linux-headers-generic-lts-raring
reboot