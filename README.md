>>  Database functions:
1-  create_database: Creates a directory for the database.
2-  delete_database: Deletes the directory (and all tables).
3-  list_databases: Lists all databases (directories).
4-  connect_database: Sets the current database by saving the path to a variable.

>>  Table functions:
1-  create_table: Creates a table as a text file.
2-  delete_table: Deletes the specified table (file).
3-  list_tables: Lists tables in the current connected database.
4-  insert_into_table: Inserts a record into a table.
5-  update_table: Updates a record with a matching ID.
6-  select_from_table: Displays all records from a table.

-  Save the script as main.sh and Make it executable using (chmod +x main.sh)
run the bash file { all files (main.sh, functions.sh, database_shell.sh, table_functions.sh) must be in the same directory }
./db_engine.sh
This will give you a command-line interface to manage databases and tables, insert and update data, and query it.
