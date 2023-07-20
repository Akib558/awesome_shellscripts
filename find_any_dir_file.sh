#!/bin/bash



#####################################################################
################## find a directory and cd to the dir ###############

gd(){
    #if [ -z $1 ]; then
    if [[ -z $1 ]]; then
        cd "$(find . -type d -name \* | fzf)"
    else
        cd "$(find . -maxdepth $1 -type d -name \* | fzf)"
    fi
}


gdf(){

    #if doesn't want depth but need editors use <=0 values in the first argument value

    if [[ -z $1 || $1 -le 0 ]]; then
        var=$(find . -name \* | fzf)
    else
        var=$(find . -maxdepth $1 -name \* | fzf)
    fi
    mm=${var##*\/} # file_extension
    mm2=${var%\/*} # file_name
    
    echo "mm is : $mm"
    echo "mm2 is : $mm2"

    cd "$mm2"
    if [[ ! -z $2 ]]; then
        var3=$(echo -e "vim\ncode\ncode-insiders\nnvim" | fzf)
        $var3 $mm 
    fi
}
