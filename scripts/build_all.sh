#!/bin/bash
# Navigate to each directory and find solution files to build them
for dir in */ ; do
    if ls $dir*.sln 1> /dev/null 2>&1; then
        echo "Building solution in $dir"
        dotnet build "$dir"*.sln --no-restore
    fi
done
