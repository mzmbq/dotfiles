#!/bin/zsh

source ./config.sh

if [[ -e "$output_file" ]]; then
    rm "$output_file"
fi

for file in "$files"/*; do
    echo "" >> "$output_file"
    cat "$file" >> "$output_file"
done