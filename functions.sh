#!/bin/bash

source ./database_shell.sh

if [[ -d $HOME/databases ]]; then
    echo "Wellcom in database menu."
else
    mkdir $HOME/databases
fi

# Create Database
Create_db() {
    read -p "Enter database name: " db_name
    if [[ -d $HOME/databases/$db_name ]]; then
        echo "Database $db_name Already Exist."
    else
        mkdir $HOME/databases/$db_name
        echo "Database $db_name Created."
    fi
}

# List exists databases
List_db() {
    ls -F $HOME/databases | grep / | tr '/' ' '
}

# Connect database
Connect_db() {
    read -p "Enter database name: " db_name
    echo "Connecting to $db_name database..."
    sleep 1
    if [ ! -d "$HOME/databases/$db_name" ]; then
        echo "Database '$db_name' does not exist."
    else
        cd $HOME/databases/$db_name/
        echo "connected to $db_name."
        PS3="$db_name >>"
        db_shell
    fi
}


# delete database
Delete_db() {
    read -p "Enter database name: " db_name
    rm -r $HOME/databases/$db_name/
    echo "database $db_name deleted."
}