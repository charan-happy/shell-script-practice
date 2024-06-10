#!/bin/bash
echo "File name is "$0 # holds the current script
echo $3 # $3 holds banana
Data=$5
echo "A $Data costs just $6."
echo $# # Holds the no.of arguments passed to the script
echo $@ # holds a space delimited string of all arguments passed to the script

# Exercise: 

# Pass "Shell is fun" (3 arguments) to the script(prog.sh) as an arguments and print the length of the arguments.

