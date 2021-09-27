# MAKE FILE EXECUTABLE
# chmod +x myscript.sh

# RUN THE FILE
# ./myscript.sh

# DECLARATION OF DIALECT
# which bash
# result:   /usr/bin/bash

#! /usr/bin/bash

# ECHO COMMANd
echo Hello world!

# VARIABLES
# Uppercase by convention
# Letters, numbers, underscores
NAME="Bob"
echo "My name is ${NAME}"

# USER INPUT
read -p "Enter your name: " USERNAME
echo "Hello ${USERNAME}, nice to meet you!"

# SIMPLE IF STATEMENT
if [ "$NAME" == "Piotr" ]
then 
    echo "Your name is Piotr"
fi

# IF-ELSE
if [ "$NAME" == "Piotr" ]
then 
    echo "Your name is Piotr"
else 
    echo "Your name is not Piotr"
fi

# ELSE-IF (elif)
if [ "$NAME" == "Piotr" ]
then 
    echo "Your name is Piotr"
elif [ "$NAME" == "Jack" ]
then
    echo "Your name is Jack"
else 
    echo "Your name is not Piotr or Jack"
fi

# COMPARISONS

###############
# val1 -eq -val2 Returns true if the values are equal
# val1 -ne -val2 Returns true if the values are not equal
# val1 -gt -val2 Returns true if val1 is greater than val2
# val1 -ge -val2 Returns true if val1 is greater than or equal to val2
# val1 -lt -val2 Returns true if val1 is less than val2
# val1 -le -val2 Returns true if val1 is less than or equal to val2
###############

NUM1=31
NUM2=5

if [ "$NUM1" -gt "$NUM2" ]
then 
    echo "$NUM1 is greater than $NUM2"
else
    echo "$NUM1 is less than $NUM2"
fi

# FILE CONDITIONS

###############
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u        True if the user id is set on a file
# -w        True if the file is writable
# -x        True if the file is executable
###############

FILE="test.txt"
if [ -f "$FILE" ]
then
    echo "$FILE is a file"
else 
    echo "$FILE is not a file"
fi

# CASE STATEMENT

read -p "Are you 21 or over? Y/N " ANSWER
case "$ANSWER" in 
    [yY] | [yY][eE][sS])
        echo "You can have a beer :)"
        ;;
    [nN] | [nN][oO])
        echo "Sorry, no drinking"
        ;;
    *)
        echo "Please enter y/yes or n/no"
        ;;
esac

# SIMPLE FOR LOOP

NAMES="Brad Kevin Alice Mark"
for NAME in $NAMES
    do 
        echo "Hello $NAME"
done

# FOR LOOP TO RENAME FILES

# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES
#     do 
#         echo "Renaming $FILE to new-$FILE"
#         mv $FILE $NEW-$FILE
# done

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE

LINE=1
while read -r CURRENT_LINE
    do
        echo "$LINE: $CURRENT_LINE"
        ((LINE++))
done < "./new-new-1.txt"

# FUNCTION

function sayHello() {
    echo "Hello world"
}

sayHello

# FUNCTION WITH PARAMS

function greet() {
    echo "Hello, I am $1 and I am $2"
}

greet "Brad" "26"

# CREATE FOLDER AND WRITE TO A FILE

mkdir hello 
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt"





