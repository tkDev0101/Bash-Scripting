#!/bin/bash


#variables
#name
#age
#RANDOM

#Environment Variables
#echo "$PWD, $SHELL, $USER, $HOSTNAME"
#echo "$goat is The Best Ever."

#Variables
getrich

#Arithimeticexpression
echo $(( 2 + 3 ))
echo $(( 2 * 3 ))
echo $(( 2 / 3 ))
echo $((23 % 6 ))
echo $(($RANDOM % 4 ))

echo "What is your name: "
read name

echo "How old are you: "
read age

echo "Hello, $name, you are $age years old."


#Environment Variables

echo "$PWD, $SHELL, $USER, $HOSTNAME"

echo "$goat is The Best Ever."

#VARIABLES
getrich=$(( ($RANDOM % 15) + $age  ))


echo "Hey, you're gonna be a Millionaire at this age: $"
