#!/bin/bash

function updater(){

        sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y

}

function install() {

    sudo apt install leafpad -y
    sudo apt install net-tools -y
    apt install keepass2 -y
}



function main() {

}
main
