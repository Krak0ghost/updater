#!/bin/bash

function updater(){

        sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y

}

function install() {

    sudo apt install leafpad -y
    sudo apt install net-tools -y
    sudo apt install keepass2 -y
    sudo apt install nmap -y
    sudo apt install aircrack-ng -y
    sudo apt install ifupdown -y
    sudo apt install gnome-tweak-tool -y
    sudo apt install lua5.3 -y
    sudo apt install gparted -y

}

function snap_install() {

  snap install atom --classic
  snap install opera

}

function install_msf() {

  curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
./msfinstall

}

function install_docker() {

  sudo apt-get update

  sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

    sudo apt-key fingerprint 0EBFCD88

    sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

   sudo apt-get update

   sudo apt-get install docker-ce docker-ce-cli containerd.io

}

function wine_install() {

  sudo apt install q4wine -y
  sudo apt install wine-stable -y

  sudo dpkg --add-architecture i386

  wget -nc https://dl.winehq.org/wine-builds/winehq.key
  sudo apt-key add winehq.key

  sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ cosmic main'

  sudo apt update

  sudo apt install --install-recommends winehq-stable -y

}

function reboot_system() {

  reboot now

}


function main() {

  updater
  install
  install_msf
  install_docker
  reboot_system

}
main
