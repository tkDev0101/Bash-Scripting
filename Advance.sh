#!/bin/bash

#----------------------------
echo "Bash Scripting: Basic + Advance"
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
echo "You Like: $LANGUAGE!"


echo " "
echo "***************"
echo " "
sleep 1


#4. If-else Statements
if [ "$LANGUAGE" == "bash" ]; then
  echo "Bash is Powerful."
elif [ "$LANGUAGE" == "python" ]; then
  echo "Python is Versatile."
else
  echo "That $LANGUAGE is cool too"
fi



echo " "
echo "***************"
echo " "
sleep 1


#5. Case statement
read -p "Enter a number from 1-3: " NUM

case $NUM in
  1) echo "You choose One";;
  2) echo "You choose Two";;
  3) echo "You choose Three";;
  *) echo "Invalid Choice";;
esac



echo " "
echo "******************"
echo " "
sleep 1


#6. For Loop
echo "Counting from 1 -> 3 using for Loop:"

for i in {1..3}; do
  echo "i: $i"
done


echo " "
echo "********************"
echo " "
sleep 1


#7. While Loop

count=3
echo "Countdown using While Loop "
while [ $count -gt 0 ]; do
  echo "Countdown: $count"
  ((count--))
done

echo " "
echo "******************"
echo " "
sleep 1


#8. Function
greet_user(){
  echo "Inside Function: Hello again, $1!"
}
greet_user "$name"


echo " "
echo "************************"
echo " "
sleep 1



#9. Arrays
colors=("red", "blue", "green")
echo "Array items: "
for color in "${colors[@]}"; do
  echo "$color"
done

echo "First color is: ${colors[0]}"


echo ""
echo "*********************"
echo ""
sleep 2




#10. Command-Line Arguements
echo "You passed $# arguments: $@"
echo "First arg is: $1"
echo "Second arg is: $2"


echo " "
echo "*****************"
echo " "
sleep 2




#11. getopts (flags parsing)
while getopts ":u:p:" opt; do
  case $opt in
    u) user="$OPTARG" ;;
    p) pass="$OPTARG" ;;
    *) echo "Invalid option";;
  esac
done

if [[ -n "$user" && -n "$pass" ]]; then
  echo "User: $user, Pass: $pass
fi

echo " "
echo "************************"
echo " "
sleep 1



#12. Arithmetic
a=5
b=3
sum=$(( a+b ))

echo "$a + $b = $sum"


echo ""
echo "*******************"
echo ""
sleep 2



#13. Command substitution
today=$(date "+%Y-%m-%d")
echo "Today's date is $today"



echo ""
echo "******************"
echo ""
sleep 2



#14. logging


echo ""
echo"********************"
echo ""
sleep 2





#15 File redirection

echo ""
echo "******************"
echo ""
sleep 2




#16. Exit status


echo ""
echo "*****************"
echo ""
sleep 2





#17. Trap & Signal Handliing

echo ""
echo"*********************"
echo ""
sleep 2




#18.  Subshell

echo ""
echo "****************"
echo ""
sleep 2







#19. Checking if a file exists
file="myfile.txt"
if [ -f "file" ]; then
  echo "File '$file' exists."
else 
  echo "File '$file' does not existCreating it..."
  echo "This is a simple file." > "$file"
fi


echo ""
echo "*****************"
echo ""
sleep 2






#20.exit code
echo "Exiting script..."
exit 0
















