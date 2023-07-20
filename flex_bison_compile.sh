#!/bin/bash

fb(){
	bison -d "$1".y 2> /dev/null
	flex "$1".l
	gcc -o "$3" "$1".tab.c lex.yy.c -lm 2> /dev/null 
}
