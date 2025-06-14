#!/bin/bash

echo -e "\n----------------------------"
echo "Bash Scripting: Basic + Advance"
echo -e "----------------------------\n"

sleep 1



#1. Variables
name="tkDev0101"
age=1652
greeting="Guten Tag"




echo "#2. Echo (Output)"

echo "$greeting, $name! You are $age years old."


#3. Read User Input
read -p "Enter your favourite Langauge for Scripting: " LANGUAGE
echo "Your chosen Language is: $LANGUAGE!"


sleep 2
echo -e "\n\n***************"


echo "#4. If-else Statements"


if [ "$LANGUAGE" == "bash" ]; then
  echo "Nice, Bash is Powerful."
elif [ "$LANGUAGE" == "python" ]; then
  echo "Cool, Python is Versatile."
else
  echo "That language is Cool Too"
fi


sleep 3
echo -e "\n\n\n***************"


echo "#5. Case statement"
echo ""

read -p "Enter a number from 1-3: " NUM

case $NUM in
  1) echo "You choose One";;
  2) echo "You choose Two";;
  3) echo "You choose Three";;
  *) echo "Invalid Choice";;
esac




sleep 2
echo -e "\n\n\n***************"




echo "#6. For Loop"
echo "Counting from 1 -> 3 using For Loop:"

for i in {1..3}; do
  echo "i. $i"
done


sleep 2
echo -e "\n\n\n***************"





echo "#7. While Loop"

count=3
echo "Countdown using While Loop "

while [ $count -gt 0 ]; do
  echo "Countdown: $count"
  ((count--))
done




sleep 2
echo -e "\n\n\n***************"


echo "#8. Function"

greet_user(){
  echo "Printing From Inside The Function: Hello again, $1!"
}
greet_user "$name"



sleep 2
echo -e "\n\n\n***************"



echo "#9. Arrays"

fruits=("Banana", "Apple", "Orange", "Naartjie")

for fruit in "${fruits[@]}"; do
  echo "I like $fruit"
done



echo ""

colors=("red", "blue", "green", "orange", "yellow")

echo "Array Items: "

for color in "${colors[@]}"; do
  echo "$color"
done

echo ""
echo "Third color in Array is: ${colors[2]}"



sleep 2
echo -e "\n\n\n***************"



echo "#10. Command-Line Arguements"

echo "You passed $# arguments: $@"
echo "First arg is: $1"
echo "Second arg is: $2"


sleep 2
echo -e "\n\n\n***************"



echo "#11. getopts (flags parsing)"

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



sleep 2
echo -e "\n\n\n***************"




echo "#12. Arithmetic"


a=5
b=3
sum=$(( a+b ))

echo "$a + $b = $sum"



sleep 2
echo -e "\n\n\n***************"



echo "#13. Command substitution"

today=$(date "+%Y-%m-%d")
echo "Today's date is $today"



sleep 2
echo -e "\n\n\n***************"



echo "#14. logging"

log_file="script.log"
echo "[$today] Script executed by $USER" >> "$log_file"



sleep 2
echo -e "\n\n\n***************"


echo "#15 File redirection"

echo "This will overwrite file.txt" > file.txt
echo "This will append to file.txt" >> file.txt



sleep 2
echo -e "\n\n\n***************"






echo "#16. Exit status"

ls /not/a/real/path 2> /dev/null

if [[ $? -ne 0 ]]; then
  echo "Previous command failed"
else
  echo "Success!"
fi


echo ""
echo "*****************"
echo ""
sleep 4











echo ""
echo "#17. Trap & Signal Handliing"
echo ""


trap "echo 'Script interrupted! Exiting cleanly...'; exit 1" SIGNT


echo ""
echo "*********************"
echo ""
sleep 2








echo ""
echo "#18.  Subshell"
echo ""

output=$( ls | grep ".sh")
echo "Shell scripts in this directory:"
echo "$output"


echo ""
echo "****************"
echo ""
sleep 4






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
sleep 4






#20.exit code
echo "Exiting script..."
exit 0
















