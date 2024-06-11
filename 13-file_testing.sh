# -<command> [filename]
# [filename] -<command> [filename2]

# -e to test if a file exists

#!/bin/bash
filename="readme.md"
if [ -e $filename ]; then
    echo "$filename exists as a file"
fi


# -d to test if directory exists
directory_name="test_directory"
if [ -d "$directory_name" ]; then
    echo "$directory_name exists as a directory"
fi

# use -r to test if the file has read permission for the user running the script/test
if [ -f "$filename" ]; then
   touch "$filename"
fi 
if [ -r "$filename" ]; then
   echo "you are allowed to read $filename"
else
   echo "You are not allowed to read $fillename"
fi 