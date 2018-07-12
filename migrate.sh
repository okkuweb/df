#!/bin/bash

# To flatten the repo when creating a new world refer to 
# https://stackoverflow.com/questions/13716658/how-to-delete-all-commit-history-in-github

printf "Do you want to copy save files from Git or from this PC?\n1) Git\n2) This PC\n"
read -p ">"  answer
if [ $answer -eq 1  ]; then
    rm -r ../data/save
    echo "Removed old files from this PC"
    cp -rf ./save ./../data/
    echo "Copied new files to this PC"
elif [ $answer -eq 2  ]; then
    rm -r ./save
    echo "Removed old files from Git"
    cp -rf ../data/save ./
    echo "Copied new files to Git"
else
    echo "Invalid answer!"
    exit
fi

echo "Done!"
