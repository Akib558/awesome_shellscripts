#!/bin/bash

vims(){
neovim_configs=("Astronvim" "NvChad" "Lazyvim")
make_choice=$(printf "%s\n" "${neovim_configs[@]}" | fzf --prompt "❆ Choice config =>" --height=20% --border --exit-0)
NVIM_APPNAME="$make_choice" nvim $@
}
