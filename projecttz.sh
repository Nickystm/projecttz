#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Usage: $0 <input_dir> <output_dir>"
	exit 1
fi
input_dir="$1"
output_dir="$2"
if [ ! -d "$input_dir" ]; then
	echo "Itput directory does not exist: $input_dir"
	exit 1
fi
if [ ! -d "$output_dir" ]; then
	mkdir -p "$output_dir"
fi
find "$input_dir" -type f -exec bash -c '
    for file; do
        nowfile=$(basename "$file")
        if [ -e "$2/$nowfile" ]; then
            i=1
            while [ -e "$2/${nowfile}_$i" ]; do
                ((i++))
            done
            cp "$file" "$2/${nowfile}_$i"
        else
            cp "$file" "$2"
        fi
    done
' bash {} "$output_dir" \;
echo "The files are copied from $input_dir to $output_dir"
