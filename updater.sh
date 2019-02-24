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

}


function main() {

}
main
