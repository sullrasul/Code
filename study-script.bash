#!/bin/bash
# Program name: Random study questions
# Author: Sulleman Rasul
# Desc: Read questions from a question bank and show them on the screen one by one to practice. 
# Date: 02/01/2020

# Clear the screen when starting program
clear

# Store questions from a file into an array 
mapfile question_array < /home/sull/Documents/Bash/Study/questions.txt

# For loop to iterate the amount of times to show a question.
for ((i=0; i<=200; i++))
do 
	random_num=0 
	min=0
	max=199

# While loop to generate a random number within array indicies. 		
	while [ "$random_num" -eq $min ]
	do
		random_num=$RANDOM
		let "random_num %=$max"
	done

# Access a random question from the array and print it. 
	echo "${question_array[$random_num]}"
	
# Press enter to move into the next question manually.
	read enter

# Automatically move onto the next question after x seconds.
#   sleep 20

	clear
done
