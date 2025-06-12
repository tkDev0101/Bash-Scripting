#!/bin/bash


echo "You Died"


#First Beast Battle
beast=$(( $RANDOM % 2 ))

echo "Get Ready for yor first Beast Battle!"
echo "Are you ready? (y/n)"

read ready

if [[ $ready == "y" ]]; then
  echo "Nazoke, You have defeated the First Beast!"
else
  echo "You died! Hade"
  exit 1
fi



sleep 1

#Second Battle
beast=$(( $RANDOM % 10 ))

echo "Get Ready for the next Beast, it's Bruce!"
echo "Pick a Number between 1-10."

read number

if [[ $beast == $number ]]; then
  echo "Nazoke, You defeated Bruce! Congrats Fellow Tarnisher."
else
  echo "Wafa, hade, you tried, better luck next time"
fi



