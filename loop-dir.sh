#!/bin/bash

# Store the directory path and command provided as arguments
directory="$1"
command="$2"

# Check if the correct number of arguments is provided
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <directory> '<command> $file ...'"
    exit 1
fi

# Check if the provided path is a directory
if [ ! -d "$directory" ]; then
    echo "Error: '$directory' is not a directory."
    exit 1
fi

# Iterate over all files in the specified directory recursively
find "$directory" -type f -print0 | while IFS= read -r -d '' file; do
    # Remove the directory prefix from the file path
    relative_path="${file#$directory/}"

    # Replace occurrences of "$file" with the actual file path in the command
    command_with_file="$(echo "$command" | sed "s|\$\bfile\b|$relative_path|g")"

    # Run the modified command with the current file as an argument
    eval "$command_with_file"
done
