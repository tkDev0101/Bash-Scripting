#!/bin/bash

#----------------------------
echo "Basic Bash Script Template"
#----------------------------

echo " "
echo "*************"
echo " "
sleep 1



#1. Variables
name="tkDev0101"
age=1652
greeting="Guten Tag"


#2. Echo (Output)
echo "$greeting, $name! You are $age years old."


#3. Read User Input
read -p "Enter your favourite Langauge for Scripting: " LANGUAGE
echo "You like: $LANGUAGE!"


echo " "
echo "***************"
echo " "
sleep 2


#4. If-else Statements
if [ "$LANGUAGE" == "bash" ]; then
  echo "Great Choice! Bash is super Powerful."
elif [ "$LANGUAGE" == "python" ]; then
  echo "Python is also a Great choice for Scripting."
else
  echo "That $LANGUAGE is cool too, I guess"
fi

echo " "
echo "***************"
echo " "
sleep 2



#5. Case statement
read -p "Enter a number from 1 to 3: " NUM

case $NUM in
  1)
    echo "You choose One"
    ;;
  2)
    echo "You choose Two"
    ;;
  3) 
    echo "You choose Three"
    ;;
  *)
    echo "Invalid Choice"
    ;;
esac

echo " "
echo "******************"
echo " "
sleep 2




#6. For Loop
echo "Counting from 1 -> 5 using for Loop:"

for i in {1..5}; do
  echo "Number: $i"
done

echo " "
echo "********************"
echo " "
sleep 3





#7. While Loop
echo "Countung down from 3 using While Loop:"
count=3
while [ $count -gt 0 ]; do
  echo "Countdown: $count"
  ((count--))
done

echo " "
echo "******************"
echo " "
sleep 2



#8. Function
greet_user(){
  echo "Inside Function: Hello again, $name!"
}
greet_user


echo " "
echo "************************"
echo " "
sleep 2



#Checking if a file exists
file="testFile.txt"
if [ -f "file" ]; then
  echo "File '$file' exists."
else 
  echo "File '$file' does not existCreating it..."
  echo "This is a simple file." > "$file"
fi


echo " "
echo "**************************"
echo " "
sleep 1



#10.exit code
echo "Exiting script..."
exit 0



