#!/bin/bash


## some bastards icons

#⛵🐦🐳🐧㗔🦄☯︎

######################
#PS1="🐧\[\e[1;31m\][ \[\e[1;36m\]\w \[\e[1;31m\]] \[\e[1;38;5;220m\]> \[\e[0m\]"
#PS1+="\$( if[ \$? == 0 ]; then echo yes; else echo no; fi)"
#PS1+=" \[\e[1;38;5;196m\]> \[\e[0m\]"


#┌─
#└──╼ $





PS1="\[\e[1;38;5;220m\]╭──\[\e[0m\]"

#PS1="\$(if [ \$? == 0 ]; then echo '\[\e[1;38;5;220m\]┌─\[\e[0m\]'; else echo '\[\e[1;38;5;196m\]┌─\[\e[0m\]'; fi) "






#//////////////////////

# PS1+="\$(if [[ \$(pwd) == '/home/akib' ]]; 
#             then echo '\[\e[1;38;5;220m\] ▶\[\e[0m\]'; 
#         else 
#             echo '\[\e[1;38;5;196m\] ▶\[\e[0m\]'; 
#         fi)"
#

#//////////////////////










PS1+="🐧\[\e[1;31m\][ \[\e[1;36m\]\w \[\e[1;31m\]]"


source $HOME/.shell_help/prompt_dir/gitstatus.prompt.sh



function timer_now {
    date +%s%N
}

function timer_start {
    timer_start=${timer_start:-$(timer_now)}
}

function timer_stop {
    local delta_us=$((($(timer_now) - $timer_start) / 1000))
    local us=$((delta_us % 1000))
    local ms=$(((delta_us / 1000) % 1000))
    local s=$(((delta_us / 1000000) % 60))
    local m=$(((delta_us / 60000000) % 60))
    local h=$((delta_us / 3600000000))
    # Goal: always show around 3 digits of accuracy
    if ((h > 0)); then timer_show=${h}h${m}m
    elif ((m > 0)); then timer_show=${m}m${s}s
    elif ((s >= 10)); then timer_show=${s}.$((ms / 100))s
    elif ((s > 0)); then timer_show=${s}.$(printf %03d $ms)s
    elif ((ms >= 100)); then timer_show=${ms}ms
    elif ((ms > 0)); then timer_show=${ms}.$((us / 100))ms
    else timer_show=${us}us
    fi
    unset timer_start
}



trap 'timer_start' DEBUG
PROMPT_COMMAND="$PROMPT_COMMAND;timer_stop"

PS1+="\[\e[1;38;5;085m\] (\${timer_show})\[\e[0m\]"

if [[ $CONDA_DEFAULT_ENV ]]; then   
    PS1+=" \[\e[1;38;5;247m\](🐍 $CONDA_DEFAULT_ENV )\[\e[0m\]"
fi
#PS1+="\$(if [ \$? == 0 ]; then echo ' \[\e[1;38;5;220m\]❯\[\e[0m\]'; else echo ' \[\e[1;38;5;196m\]❯\[\e[0m\]'; fi) "

PS1+="\n\[\e[1;38;5;220m\]╰──╼\[\e[0m\]"

PS1+="\$(if [ \$? == 0 ]; then echo '\[\e[1;38;5;220m\] ▶\[\e[0m\]'; else echo '\[\e[1;38;5;196m\] ▶\[\e[0m\]'; fi) "
#
# PS1+="\$(if [ \$? == 0 ]; then echo '\[\e[1;38;5;046m\] ▷\[\e[0m\]'; else echo '\[\e[1;38;5;196m\] ▷\[\e[0m\]'; fi) "



# ▷










# source ~/.shell_help/demo_prompt
