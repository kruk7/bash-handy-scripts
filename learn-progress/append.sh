#!/bin/bash

# vars
full_path_script=$(realpath $0)               # absolute path of this script with filename
dir_path_script=$(dirname $full_path_script)  # absolute path of this script without filename
data_file=data.b                              # name of data base file
database_path=$dir_path_script/$data_file     # absolute path of data base file

# creating data base file if not exists
if [ ! -e "$database_path" ] ; then
    touch "$database_path"
    echo "It's created $database_path data file"
fi

# appending string literal to data base file
line_to_append="[$1] - $(date +%d-%m-%Y) - $2"
echo "$line_to_append" >> "$database_path"

# counting lines in data base file
a=($(wc $database_path))
lines=${a[0]}

# printing result
echo "[Command] - Date - Description"
cat "$database_path"
echo "It's appended $lines of lines"
