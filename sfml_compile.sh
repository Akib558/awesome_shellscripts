#!/bin/bash

gfc(){
	g++ -c "$1".cc
	g++ "$1".o -o "$1" -lsfml-graphics -lsfml-window -lsfml-system
}
