#!/bin/bash
chmod +x .badge.sh
./.badge.sh
err=0

#################LAB SPECIFIC CODE HERE#############
required_files_non_compile=("README.md","story.txt")
# Check if all files are found
for file in "${required_files_non_compile[@]}"; do
  if [ -f "$file" ]; then
    echo "✅$file found."
  else
    echo "❌$file does not exist."
    err=1
  fi
done



#cause the build to fail if any of the err=1 statements trigger.
exit $err
