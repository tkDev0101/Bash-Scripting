#!/bin/bash


echo "You Died"


#First Beast Battle
beast=$(( $RANDOM % 2 ))

echo "Get Ready for yor first Beast Battle!"
echo "Are you ready? (y/n)"

read ready

if [[ $ready == "y" || $ready == "Y" ]]; then
  echo "Nazoke, You have defeated the First Beast!"
else
  echo "You died! Hade"
  exit 1
fi



sleep 0.5

#Second Battle
beast=$(( $RANDOM % 10 ))

echo ""
echo "Get Ready for the next Beast, it's Bruce!"
read -p "Pick a Number between 1-10: " number

if [[ $beast == $number ]]; then
  echo "Nazoke, You defeated Bruce! Congrats Fellow Tarnisher."
else
  echo "Wafa, hade, you tried, better luck next time"
fi



