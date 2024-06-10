#!/bin/bash

# Define the array
fruits=(apple banana "Fruit Basket" orange)
fruits[2]=mango

# The total number of elements in the array is referenced by ${#array_name[@]}
echo ${#fruits[@]}

# Array elements can be accessed with their numeric index. The index of the first element is 0
my_fruits=(apple banana "Fruit Basket" orange)
echo ${my_fruits[3]}

# Adding another array element
my_fruits[4]="carrot"
echo ${my_fruits[@]}

# Print the last element of the array
echo ${my_fruits[${#my_fruits[@]}-1]}
