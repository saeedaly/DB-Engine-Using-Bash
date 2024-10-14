#!/bin/bash
source  ./table_functions.sh

db_shell() {

    while true; do
        echo "1. Create Table."
        echo "2. Delete Table."
        echo "3. List Tables"
        echo "4. Select From Table."
        echo "5. Insert Into Table."
        echo "6. Update Table."
        echo "7. Back To Databases"
        read -p "Choose an option: " option

        case $option in
        1) Create_TB
        ;;
        2) Delete_TB
        ;;
        3) List_TB
        ;;
        4) Select_From_TB
        ;;
        5) Insert_Into_TB
        ;;
        6) Update_TB
        ;;
        7) cd ../..; break
        ;;
        *) echo "Invalid Option, Try again."
        esac

    done
}