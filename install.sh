#!/bin/zsh

source ./config.sh

line="source $(pwd)/$output_file"

if ! grep -q "$line" "$zshrc"; then
    echo "$line" >> "$zshrc"
fi

source "$zshrc"