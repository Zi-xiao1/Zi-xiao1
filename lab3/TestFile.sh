#!/bin/bash
# Author : Zixiao Wang
# Date: 6.15.2021
# Script follows here:
FILE=sample_text.txt
#!/bin/bash
FILE=sample_text.txt

count_lines(){
        echo "Count_lines"
        lines= wc -l /Users/calebwang/Desktop/lab_3/sample_text.txt
        echo $lines
}
count_words(){
        echo "Count_words"

	echo "Count_Lorem"
        echo "Count_Lorem"
        wl= grep -c Lorem /Users/calebwang/Desktop/lab_3/sample_text.txt
        echo $wl

	echo "Count_model"
        wl= grep -c model /Users/calebwang/Desktop/lab_3/sample_text.txt
        echo $wl

	echo "Count_Ipsum"
        wl= grep -c Ipsum /Users/calebwang/Desktop/lab_3/sample_text.txt
        echo $wl

        echo "Count_will"
        wl= grep -c will /Users/calebwang/Desktop/lab_3/sample_text.txt
        echo $wl
}

add_text(){
        echo "Imput the text you want to add."
        read txt
        echo $txt >> sample_text.txt
}
copy_and_exit(){
        
        cp sample_text.txt ./solution/sample_text.txt
}

quit(){
        echo "Quit"
        exit
}
if [ -f "$FILE" ]; then
    echo "$FILE exists."
    mkdir solution
    options=("Count_lines" "Count_words" "Add_text" "Copy_and_exit" "Quit")
    echo "Choose an option(number only): "
    select opt in "${options[@]}"; do
        case $REPLY in
            1) count_lines ;;
            2) count_words ;;
            3) add_text ;;
	    4) copy_and_exit ;;
            5) quit; break;;
            *) echo "Put the correct please" >&2
        esac
    done
else
    echo "$FILE does not exist."
fi

