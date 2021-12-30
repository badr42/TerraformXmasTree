# The following line tells the shell what program to interpret the script with
#!/bin/bash

# tput is a command to manipulate the terminal, it can be used to change the color of text, apply effects, and generally brighten things up.
trap "tput reset; tput cnorm; exit" 2
clear
tput civis
lin=2
col=$(($(tput cols) / 2))
c=$((col-1))
est=$((c-2))
color=0

# Set the text color to green to write the tree
tput setaf 2; tput bold

# Write the tree
for ((i=1; i<40; i+=2))
{
    tput cup $lin $col
    for ((j=1; j<=i; j++))
    {
        echo -n \*
    }
    let lin++
    let col--
}

## Set the color to brown for the trunk
tput sgr0; tput setaf 130

# Write the Trunk in three lines
for ((i=1; i<=3; i++))
{
    tput cup $((lin++)) $c
    echo 'mWm'
}

# Write a greeting
tput setaf 93; tput bold
tput cup $lin $((c - 15)); echo WorkLoad Architects wish you a Merry Christmas
tput cup $((lin + 1)) $((c - 11)); echo And a happy new year 2022
let c++
k=1

for ((i=1; i<=3; i++))
{
    echo ". "
}


