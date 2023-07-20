#!/bin/bash

dp()
{
    HEIGHT=15
    WIDTH=40
    CHOICE_HEIGHT=4
    BACKTITLE="Change Display"
    TITLE="DISPLAY"
    MENU="Choose one of the following options:"

    OPTIONS=(1 "Laptop-Monitor"
             2 "Monitor-Laptop"
             3 "Only_Laptop"
             4 "Only_Monitor" )

    val2=$(dialog --clear \
                    --backtitle "$BACKTITLE" \
                    --title "$TITLE" \
                    --menu "$MENU" \
                    $HEIGHT $WIDTH $CHOICE_HEIGHT \
                    "${OPTIONS[@]}" \
                    2>&1 >/dev/tty)
    clear
        # read -p "Enter NUmber: " val;
        xrandr --output eDP-1 --mode 1600x900
        xrandr --output HDMI-1 --auto --right-of eDP-1
        case $val2 in
            
            # 1) echo "$val2";;
            # 2) echo "$val2";;
            # 3) echo "$val2";;
            #
            1) xrandr --output eDP-1 --left-of HDMI-1;;
            2) xrandr --output HDMI-1 --auto --left-of eDP-1;;
            3) xrandr --output eDP-1 && xrandr --output HDMI-1 --off;;
            4) xrandr --output HDMI-1 --auto && xrandr --output eDP-1 --off;;
            *) return;;
        esac  

    









   

}
