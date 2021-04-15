#!/bin/bash

data_file=data.b

if [ ! -e "$data_file" ] ; then
    touch "$data_file"
    echo "[Command] - Description"
fi

line_to_append="[$1] - $2"

echo "$line_to_append" >> "$data_file"

cat "$data_file"

a=($(wc $data_file))
lines=${a[0]}

echo "It's appended $lines of lines"
