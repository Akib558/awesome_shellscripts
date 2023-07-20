#!/bin/bash

lk()
{
	case "$1" in
		"") colorls;;
		"-a")		  colorls "$@"	;;
		"-d")		  colorls "$@"	;;
		"-f")		  colorls "$@"	;;
		"-1")		  colorls "$@"	;;
		"-l")		  colorls "$@"	;;
		"-r")		  colorls "$@"	;;
		"--tree")	  colorls "$@"	;;
		*) 			  ls --color "$@" ;;
	esac
}
