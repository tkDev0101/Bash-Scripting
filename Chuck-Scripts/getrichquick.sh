#!/bin/bash


#Variables
name2=$1
age2=$2


echo "Sawubona, $name2, $age2."
sleep 1

#Environement Variables
echo "$PWD, $SHELL, $USER, $HOSTNAME"
#echo "$goat is The Best Ever"
echo " "


#ArithmeticExpression
echo $(( 2+3 ))
echo $(( 2*3 ))
echo $(( 2/3 ))
echo $((23%6 ))
echo $(( $RANDOM % 5 ))


echo " "
echo "************************"
echo " "
sleep 1




echo "What is your name: "
read name

read -p "How old are you: " age

echo "Hello, $name, you are $age years old."


echo " "
echo "*******************"
echo " "
sleep 1


echo "--- CALCULATING ---"

echo "**"
sleep 1
echo "****"
sleep 1
echo "******"
echo " "

getrich=$(( ($RANDOM % 21) + $age ))

echo "$name, you will be a millionarire when you are $getrich years old. "












