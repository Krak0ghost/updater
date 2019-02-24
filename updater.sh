#!/bin/bash

function updater(){

        sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y

}

function install() {

    sudo apt install leafpad -y

}



function main() {

}
main
