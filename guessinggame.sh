#!/usr/bin/env bash
# File: guessinggame.sh

# Creating a function to check the file count
function setfilecount {
	let filecount=$(ls | wc -l)
}

#Accepting the first guess from the user
echo "Guess how many files are in this folder"
read guess

#Calling he function to set the filecount
setfilecount

#Starting a loop 
while [[ $filecount != $guess ]]
do

#checking if the guess is more than the file count
	if [[ $guess -gt filecount ]] 
	then
		echo "Your guess is slightly more"	
	else
		echo "Your guess is slightly less"
	fi

#Accepting another guess from the user
echo "Let's try again"
echo "Guess how many files are in this folder"
read guess

done

#Success statement at the end
#We will reach this step only when the while loop closes. 
#Which happens when the guess is equal to file count
echo "Congrats.Your guess is right"

