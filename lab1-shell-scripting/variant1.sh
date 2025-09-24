#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory_path> <filename_without_extension>"
    exit 1
fi

directory=$1
filename=$2

if [ ! -d "$directory" ]; then
    echo "Error: $directory is not a directory"
    exit 1
fi

find "$directory" -type f -name "${filename}.*" -printf '%h\n' | xargs n 1 basename | sort -u

