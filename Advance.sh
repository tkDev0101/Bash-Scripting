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




echo ""
echo "#2. Echo (Output)"
echo ""

echo "$greeting, $name! You are $age years old."


#3. Read User Input
read -p "Enter your favourite Langauge for Scripting: " LANGUAGE
echo "Your chosen Language is: $LANGUAGE!"


echo ""
echo "***************"
echo " "
sleep 2





echo ""
echo "#4. If-else Statements"
echo ""


if [ "$LANGUAGE" == "bash" ]; then
  echo "Nice, Bash is Powerful."
elif [ "$LANGUAGE" == "python" ]; then
  echo "Cool, Python is Versatile."
else
  echo "That language is Cool Too"
fi


echo ""
echo "***************"
echo " "
sleep 3





echo ""
echo "#5. Case statement"
echo ""

read -p "Enter a number from 1-3: " NUM

case $NUM in
  1) echo "You choose One";;
  2) echo "You choose Two";;
  3) echo "You choose Three";;
  *) echo "Invalid Choice";;
esac


echo ""
echo "******************"
echo " "
sleep 4





echo ""
echo "#6. For Loop"
echo ""


echo "Counting from 1 -> 3 using For Loop:"

for i in {1..3}; do
  echo "i. $i"
done

echo ""
echo "********************"
echo " "
sleep 4





echo ""
echo "#7. While Loop"
echo ""

count=3
echo "Countdown using While Loop "

while [ $count -gt 0 ]; do
  echo "Countdown: $count"
  ((count--))
done

echo ""
echo "******************"
echo " "
sleep 4




echo ""
echo "#8. Function"
echo ""

greet_user(){
  echo "Printing From Inside The Function: Hello again, $1!"
}
greet_user "$name"

echo ""
echo "************************"
echo " "
sleep 4




echo ""
echo "#9. Arrays"
echo ""

colors=("red", "blue", "green", "orange", "yellow")

echo "Array Items: "

for color in "${colors[@]}"; do
  echo "$color"
done

echo ""
echo "Third color in Array is: ${colors[2]}"


echo ""
echo "*********************"
echo ""
sleep 4






echo ""
echo "#10. Command-Line Arguements"
echo ""

echo "You passed $# arguments: $@"
echo "First arg is: $1"
echo "Second arg is: $2"


echo ""
echo "*****************"
echo ""
sleep 4






echo ""
echo "#11. getopts (flags parsing)"
echo "" 


while getopts ":u:p:" opt; do
  case $opt in
    u) user="$OPTARG" ;;
    p) pass="$OPTARG" ;;
    *) echo "Invalid option";;
  esac
done


if [[ -n "$user" && -n "$pass" ]]; then
  echo "User: $user, Pass: $pass"
else 
  echo "GeoTopts Not Working"
fi


echo ""
echo "************************"
echo " "
sleep 5





echo ""
echo "#12. Arithmetic"
echo ""


a=5
b=3
sum=$(( a+b ))

echo "$a + $b = $sum"


echo ""
echo "*******************"
echo ""
sleep 3








echo ""
echo "#13. Command substitution"
echo ""


today=$(date "+%Y-%m-%d")
echo "Today's date is $today"


echo ""
echo "******************"
echo ""
sleep 2







echo ""
echo "#14. logging"
echo ""

log_file="script.log"
echo "[$today] Script executed by $USER" >> "$log_file"


echo ""
echo "********************"
echo ""
sleep 2









echo ""
echo "#15 File redirection"
echo ""

echo "This will overwrite file.txt" > file.txt
echo "This will append to file.txt" >> file.txt


echo ""
echo "******************"
echo ""
sleep 4











echo ""
echo "#16. Exit status"
echo ""



echo ""
echo "*****************"
echo ""
sleep 4











echo ""
echo "#17. Trap & Signal Handliing"
echo ""


echo ""
echo "*********************"
echo ""
sleep 2








echo ""
echo "#18.  Subshell"
echo ""


echo ""
echo "****************"
echo ""
sleep 2






echo ""
echo "#19. Checking if a file exists"
echo ""

file="myfile.txt"
if [ -f "file" ]; then
  echo "File '$file' exists."
else
  echo "File '$file' does not exist. Creating it..."
  echo "This is a simple file." > "$file"
fi

echo ""
echo "*****************"
echo ""
sleep 2






#20.exit code
echo "Exiting script..."
exit 0
















