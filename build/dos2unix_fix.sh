#!/bin/bash

# Find all *.sh files recursively and convert their line endings
find . -type f -name "*.sh" | while read -r file; do
    dos2unix "$file"
done
