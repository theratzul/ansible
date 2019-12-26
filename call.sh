#!/bin/bash

if [[ $# -ne 1 ]];then
    echo -e "\e[1;31mUsage: \e[0m $0 <server>"
    exit 1
fi

env=$(echo $1|cut -d"-" -f1)

if [[ "$srv"  == "localhost" ]];then
    printf "\n\tYou selected the correct server, $env\n"
fi

time ansible-playbook reboot.yaml -e "host=$1"