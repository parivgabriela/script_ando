#!/bin/bash

#Chack all files on this path and save it

all_elements=$(ls)
all_directories=()
for element in $all_elements
do
    if [[ -d $element ]]; then
        echo "$element is a directory"
        all_directories+=" "$element
    elif [[ -f $element ]]; then
        echo "$element is a file"
    fi
done

for directory in $all_directories
do
    echo "Ingresando al directorio $directory"
    cd $directory
    if [[ -d .git ]]; then
        echo "It's git ***"
        echo "Switch to develop"
        #if you're working in other branches then you do git merge develop
        git checkout develop
        echo "updating develop"
        git pull
    else
        echo "It's a trap"
    fi
    cd ../
done

