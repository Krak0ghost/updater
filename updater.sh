#!/bin/bash

function updater(){

        sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y

}

function install() {

    sudo apt install leafpad -y
    sudo apt install net-tools -y
    sudo apt install keepass2 -y
    sudo apt install nmap -y


}



function main() {

}
main
