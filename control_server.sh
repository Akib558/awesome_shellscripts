#!/bin/bash

#####################################################################
#################### handling a database server #####################

function yellow {
    printf "${YELLOW}$@${NC}\n"
}

chksvr()
{
    RED='\033[0;31m'
    GREEN='\033[0;32m'
    YELLOW='\033[0;33m'
    NC='\033[0m' # No Color 
    var=$(echo -e "mysql\napache2.service\noracle-xe.service" | fzf)
    if [ $? != 0 ]; then
        return        
    fi
    #return
    echo "Selected Server :  $(yellow $var)"
    var2=$(echo -e "status\nstart\nstop\ndisable" | fzf)
    if [ $? != 0 ]; then
        return
    fi
    echo "Your Command is : systemctl $(yellow $var2) $(yellow $var)"
    echo ""
    echo ""
    sudo systemctl $var2 $var
}
