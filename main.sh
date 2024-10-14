#!/bin/bash

source ./functions.sh

#Main menu

while true; do
    echo "====================="
    echo "1. Create Database."
    echo "2. List Databases."
    echo "3. Connect Database."
    echo "4. Delete Database."
    echo "5. Exit."
    read -p "Choose an option: " option
    
    case $option in 
    1) Create_db
    ;;
    2) List_db
    ;;
    3) Connect_db
    ;;
    4) Delete_db
    ;;
    5) break
    ;;
    *) echo " Invalid option, try again"
    esac

done