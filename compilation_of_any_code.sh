#!/bin/bash


#kk(){
	#copy=$1 len=${#copy} len=$(( len-1 )) pos=0
	#for (( i = $len; i >= 0; i-- )); do
		#if [[ ${copy:$i:1} == "." ]]; then
			#pos=$i
			#break
		#fi
	#done

	#mm=${copy:$pos+1:$len-$pos+1}
	#mm2=${copy:0:$pos}
	#case $mm in
		#"cc" | "cpp" )g++ -o $mm2 "${mm2}.${mm}";;
		#"py") python3 $1;;
		#*) echo "pattern not matched :(" ;;
	#esac
	#echo "compilation succeded"
#}

 #more advanced way
kk()
{
	
	if [[ -z $1 ]]; then
		var=$(ls | fzf)
		echo "$var"
	else
		var=$1
	fi
	
	# var=$1
	
	mm2=${var%.*} # file_name
	mm=${var##*.} # file_extension
	case ${var##*.} in
        "c") gcc -o "$mm2" "${mm2}.${mm}";;
		"cc" | "cpp" )g++ -std=c++17 -o a "${mm2}.${mm}";;
		"py") python3 "$1";;
        "cs") 
            if [ -z "$(mcs "$1")" ]; then
                mono "${mm2}.exe"
            fi
        ;;
		*) echo "pattern not matched :(" ;;
	esac

}


