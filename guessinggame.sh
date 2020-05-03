#!/usr/bin/env bash
# File: guessinggame.sh

function game
{
    num_of_files=$(ls -1 | wc -l)
    echo "How many files are in the current directory?"
    while [[ true ]]
    do
        read response
        if [[ $response -gt $num_of_files ]]
        then
            echo "Your guess was too high, try again"
        elif [[ $response -lt $num_of_files ]]
        then
            echo "Your guess was too low, try again"
        else
            echo "Congratulations, your guess was correct"
            break
        fi
     done
}

game  
