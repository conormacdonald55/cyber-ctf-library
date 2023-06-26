#!/bin/bash


# *************************************************************************
# Programmer: Conor MacDonald
# Created Date: 
# Revision Date: 
# Version Number: 
#
# About: ADF Cyber Gap Program 2023 - individual cyber challenge
#           the challenge was called 'The Noble 600' and provide a very messy ASCII spaghetti text file
# 
#
# Description: A script to take in a text file input with very long lines (no text delimiter), and work backwards, 600 steps from the 
#               end of the flag's last known character '}' (the flag format is cybermerc{flaghere} ), collate the flag then output
#               to another text file
#
# ***********************************************************************


# Specify the file path
file_path="The_Noble_600.txt"

# Define the position of the first character to print
position=327600

flag=""

# While loop I think would be best

while [ $position -ge 0 ]; do

    # Use head, tail, and cut to print the character at the specified position
    character=$(head -c $((position)) "$file_path" | tail -c 1)
    flag="${character}$flag"
    # echo "$character"

    position=$((position - 600))

done
# echo "Character at position $position: $character"
echo "$flag" > output.txt