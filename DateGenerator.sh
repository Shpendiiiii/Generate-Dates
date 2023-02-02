#!/bin/bash
dateNow=$(date +%Y-%m-%d-%H:%M)
fileName=output$dateNow".txt"

echo -e "Welcome to the dates generating program\n\n
Enter the dates when it was a holiday or a weekend:"

read -r -a numbers

for i in {1..31}; do
    for item in "${numbers[@]}"; do
        if [ "$i" == "$item" ]; then
            continue 2
        fi
    done
    echo "$i/1/2023"
done > "$fileName"

echo "Operation was sucessful"

