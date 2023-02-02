#!/bin/bash
dateNow=$(date +%Y-%m-%d-%H:%M:%S)
fileName=output$dateNow".txt"

echo -e "Welcome to the dates generating program\n\n"

echo -e "Enter the year:"

read -r year

echo -e "\nEnter the month number:"

read month

echo -e "\nEnter the dates when it was a holiday or a weekend (sep by a single space):"

read -r -a numbers

for i in {1..31}; do
    for item in "${numbers[@]}"; do
        if [ "$i" == "$item" ]; then
            continue 2
        fi
    done
    echo " $i/$month/$year "

done > "$fileName"

echo "Operation was sucessful"
