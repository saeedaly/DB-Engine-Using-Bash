#!bin/bash

# Function to create table
Create_TB() {
    read -p "Enter Table name: " TB_name
    if [ ! -f "$TB_name" ]; then
        touch $TB_name
        echo "Table $TB_name Created."
    else
        echo "$TB_name Already Exist."
    fi
}

#Function to delete table
Delete_TB() {
    read -p "Enter Table name: " TB_name
    if [ -f "$TB_name" ]; then
        rm $TB_name
        echo "Table $TB_name Deleted."
    else
        echo "$TB_name Doesn't Exist."
    fi
}

#Function to list tables
List_TB() {
    echo " Avaiable tables:"
    ls 

}

#Function to selsect from table
Select_From_TB() {
    read -p "Enter the table name: " TB_name
    cat $TB_name

}

#Functions to insert into table
Insert_Into_TB() {
    read -p "Enter the table name: " TB_name
    if [ -f "$TB_name" ]; then
        read -p "Enter values (comma-separated): " values
        echo "$values" >> "$TB_name"
        echo "Inserted data: $TB_name."
    else
        echo "$TB_name Doesn't Exist."
    fi

}

#Function to update table
Update_TB() {
    read -p "Enter the table name: " TB_name
    read -p "Enter old value: " old_value
    read -p "Enter new value: " new_value
    sed -i "s/$old_value/$new_value/" "$TB_name"
    echo "Updated $old_value to $new_value in table '$TB_name'."
}

#Function to delete from table
Delete_From_TB() {
    read -p "Enter the table name: " TB_name
    read -p "Enter value to delete: " value
    sed -i "/$value/d" "$TB_name"
    echo "Deleted row containing '$value' from table '$TB_name'."
}
