#!/bin/bash

sudo dnf install @virtualization
sudo dnf group install --with-optional virtualization
sudo systemctl start libvirtd
sudo systemctl enable libvirtd
sudo usermod -a -G libvirt $(whoami)