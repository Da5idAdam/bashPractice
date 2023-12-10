#!/bin/bash

echo "Kerek egy pozitiv egesz szamot: "
read szam

if ! [ "$szam" -eq "$szam" ] 2> /dev/null || [ "$szam" -le 0  ]
then
    echo "Kerem pozitiv egesz szamot irjon be!"
    exit 1
fi

declare -a veletlentomb

for ((i=0; i<szam; i++)); do
    veletlenszam=$(( $RANDOM % 100 + 1))
    veletlentomb+=("$veletlenszam")
done

echo "${veletlentomb[*]}"
