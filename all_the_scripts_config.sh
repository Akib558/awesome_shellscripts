#!/bin/bash


edit_my_sources(){

cd ~/.shell_help/aliases_and_funtions/scripts/
ls > source_doc_file && mv source_doc_file ~/.shell_help/
kk=$(cat ~/.shell_help/source_doc_file | fzf)
vim $kk
rm ~/.shell_help/source_doc_file

}
