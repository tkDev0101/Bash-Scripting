#!/bin/bash

#Simple Password Generator

#prompt user the legnth of their password


#Ask User Input for Length
echo "This is a Simple Password Generator"

echo " "
sleep 1

echo "Please enter the desired length of your password: "
read PASS_LENGTH


#for loop that gives user 5 passwords of which they can only use 1

for p in $(seq 1 5);
do
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH
		      #-hex 48   base64 is the most robust and a safer option
done

echo " "
echo "Fin."
#using openssl to generate random chaararcters  in base64 format. 
#Then cutting and piping it from the first chararcter to the Password Lenght that the user specified




