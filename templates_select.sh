#!/bin/bash


##Author : dekacore

## The gt function gives all the templates names and by selecting that name
## the content of that template file will by copy to clipboard

gt()
{
    # file_name=$(find ~/Documents/TEMPLATES/ -type f -iname \* -exec basename {} \; | fzf)
    # 
    # if [[ $? == 0 ]]; then
    #     dir_name=$(find ~/Documents/TEMPLATES/ -name $file_name)
    #     xsel -b < $dir_name
    # fi

    kk=$(find /home/akib/Documents/TEMPLATES/ -name \* | fzf) && xclip -sel c < ${pwd}${kk}


}








