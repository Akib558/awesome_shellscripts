#!/bin/bash


#####################################################################
############ Open Jupyter notebook in specific browser ##############


jn()
{
    #brow=( "brave-browser" "firefox" "google-chrome" )
    #var=$(printf "%s\n" "${brow[@]}" | fzf)" %s"
    var=$(echo -e "brave-browser\nfirefox\ngoogle-chrome" | fzf)
    if [[ -z $1 ]]; then
        jupyter notebook
    else
        jupyter notebook --browser="$var"
    fi

}


