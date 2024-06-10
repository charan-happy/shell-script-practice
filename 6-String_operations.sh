# string length
NAME="This is nagacharan"
echo ${#NAME}

# To find the index we can use expr

STRING="this is a string"
SUBSTRING="hat"
expr index "$STRING" "$SUBSTRING"

# substring extraction
POS=1
LEN=3
echo ${STRING:$POS:$LEN}

# data extraction
# Code to extract the First name from the data record
DATARECORD="last=Clifford,first=Johnny Boy,state=CA"
COMMA1=`expr index "$DATARECORD" ','`  # 14 position of first comma
CHOP1FIELD=${DATARECORD:$COMMA1}       #
COMMA2=`expr index "$CHOP1FIELD" ','`
LENGTH=`expr $COMMA2 - 6 - 1`
FIRSTNAME=${CHOP1FIELD:6:$LENGTH}      # Johnny Boy
echo $FIRSTNAME

# Replace first occurence of substring with replacement
STRING="to be or not to be"
echo ${STRING[@]/be/eat}

# Replace all occurrences of substring
STRING="to be or not to be"
echo ${STRING[@]//be/eat}  

#Delete all occurrences of substring (replace with empty string)
STRING="to be or not to be"
echo ${STRING[@]// not/} 

# Replace occurrence of substring if at the beginning of $STRING

STRING="to be or not to be"
echo ${STRING[@]/#to be/eat now} 

#Replace occurrence of substring if at the end of $STRING

STRING="to be or not to be"
echo ${STRING[@]/%be/eat} 

#replace occurrence of substring with shell command output

STRING="to be or not to be"
echo ${STRING[@]/%be/be on $(date +%Y-%m-%d)} 


