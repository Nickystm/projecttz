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
find "$input_dir" -type f -exec cp {} "$output_dir" \;
echo "The files are copied from $input_dir to $output_dir"
