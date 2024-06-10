Price_per_mango=20
MyFirstName=CHARAN
greeting="Hello  World"

echo $greeting $MyFirstName $Price_per_mango

# A backslash "\" is used to escape special character meaning

echo "the price of mango today is \$HK $Price_per_mang0"

# we put variable in ${} to avoid ambiguity(confusion)

echo "The first 5 letters in my name are: ${MyFirstName}"

#Encapsulating the variable name with "" will preserve any white space values

greeting='Hello        world!'
echo $greeting" now with spaces: $greeting"

# Substitution can be done by encapsulating the command with `` (known as back-ticks) or with $()

FILELIST=`ls`
FileWithTimeStamp=/tmp/my-dir/file_$(/bin/date +%Y-%m-%d).txt

echo $FileWithTimeStamp


