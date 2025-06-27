#!/bin/bash


echo "You Died"


#First BeaSt Battle
beast=$(( $RANDOM % 2 ))


echo "Hey, this is your first Beast Battle. Prepare to fight." 
echo "Pick a number between 0-1 (0/1)."

read dead


if [[ $beast == $dead ]]; then
  echo "Beast Killed!! Congrats Fellow Tarnisher"
else
  echo "You Died, Hade!"
  exit 12
fi


sleep 2


echo "Boss batlle. Get scared. It's Nku!!!."
echo "Pick a number between 0-9  (0-9)."

read dead

beast=$(( $RANDOM % 10 ))

if [[ $beast == $dead ]]; then
  echo "Best Killed Again! Congrats Fellow Tarnisher"
else
  echo "You Died, Hade"
fi
