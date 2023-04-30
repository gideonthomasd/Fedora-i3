#!/bin/bash

sudo dnf copr enable phracek/PyCharm
sudo dnf install pycharm-community
sudo dnf install python3-tkinter
sudo dnf install python3-devel redhat-rpm-config

sudo yum localinstall balena-etcher-1.18.8.x86_64.rpm

tar -xvzf scid_linux_5.0.2.tar.gz