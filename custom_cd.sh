cd(){
    # if [[ $1 == ',' ]]; then
    #     #kk=$(cat /home/akib/.config/.directory_visited | sort | uniq -c | sort -rn | sed 's/[[:space:]]*[[:digit:]]*[[:space:]]//' | fzf)
    #     kk=$(fdfind -t d | fzf)
    #     if [[ $? == 0 ]]; then
    #         builtin cd $kk   
    #     fi
    # else
    #     builtin cd $@
    #     if [[ $? == 0 ]]; then
    #         pwd >> /home/akib/.config/.directory_visited
    #     fi   
    # fi

    builtin cd $@
    if [[ $? == 0 ]]; then
        pwd >> /home/akib/.config/.directory_visited
    fi
}

cdg(){
#    kk=$(tac /home/akib/.config/.directory_visited | sort | uniq | fzf)
    kk=$(cat /home/akib/.config/.directory_visited | sort | uniq -c | sort -rn | sed 's/[[:space:]]*[[:digit:]]*[[:space:]]//' | fzf)
    builtin cd $kk
    
}
