#!/bin/bash

red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'

slink(){
    p1=$(fd --search-path '/home/akib/' -t directory | fzf)
    if [[ $? != 0 ]]; then
        return
    fi
    p2=$(fd --search-path '/home/akib/' -t directory | fzf)
    if [[ $? != 0 ]]; then
        return
    fi
    echo "${grn}Folder/File of interest: ${yel}$p1${end}"
    echo "${grn}Folder/File of new location: ${yel}$p2${end}"
    read -p "Create? Yes(y) or No(n): " chk
    if [[ $? != 0 ]]; then
        return
    fi
    if [[ $chk == 'y' ]]; then
        ln -s $p1 $p2
    else
        return
    fi
}
