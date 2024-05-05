#!/bin/bash
# Build only the specified solution directory
solution_dir=$1
# Ensure there is a trailing slash
[[ "$solution_dir" != */ ]] && solution_dir="$solution_dir/"

if [ -d "$solution_dir" ] && ls ${solution_dir}*.sln 1> /dev/null 2>&1; then
    echo "Building solution in $solution_dir"
    dotnet build "${solution_dir}"*.sln --no-restore
else
    echo "No solution found in $solution_dir or the directory does not exist."
fi
