#!/bin/bash

#variables
name=$1
user=$(whoami)
date=$(date)
whereami=$(pwd)

echo "Good day, $name"
sleep 1
echo "How old are you?"
read age

echo "Wat! you look nothing close to $age, wat's your secret?"
sleep 1

echo "Today is $date && you are currently logged in as $user and you are in the Directory: $whereami."
sleep 1
