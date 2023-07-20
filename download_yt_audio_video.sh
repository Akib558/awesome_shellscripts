#!/bin/bash

#################################################################
################### youtube videos download #####################
#
# ydv()
# {
#     if [[ -z $2 ]]; then
#         youtube-dl -f bestvideo+bestaudio $1
#         if [ $? -eq 0 ]; then
#             echo "Download Succeded :)"
#         else
#             echo "Download Not Succeded :("
#         fi
#     else
#         youtube-dl -f bestvideo+bestaudio -o "$2.%(ext)s" $1 
#         if [ $? -eq 0 ]; then
#             echo "Download Succeded with name : $2   :)"
#         else
#             echo "Download Not Succeded :("
#         fi
#
#     fi
# }
#
# #################################################################
# #################### Yotube Audio Download ######################
#
# yda()
# {
#     if [[ -z $2 ]]; then
#         youtube-dl -x --audio-format mp3 "$1"
#         if [ $? -eq 0 ]; then
#             echo "Download Succeded :)"
#         else
#             echo "Download Not Succeded :("
#         fi
#     else
#         youtube-dl -x --audio-format mp3 -o "$2.%(ext)s" $1 
#         if [ $? -eq 0 ];then
#             echo "Download Succeded with Name: "$2" :)"
#         else
#             echo "Download Not Succeded :("
#         fi
#     fi
# }
#
#
