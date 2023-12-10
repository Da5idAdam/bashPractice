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

maximum=${veletlentomb[0]}
minimum=${veletlentomb[0]}


for i in "${!veletlentomb[@]}"; do
    if [ "${veletlentomb[i]}" -gt "$maximum" ]; then 
        maximum=${veletlentomb[i]}
    fi

    if [ "${veletlentomb[i]}" -lt "$minimum" ]; then 
        minimum=${veletlentomb[i]}
    fi
done

for i in "${!veletlentomb[@]}"; do
    osszeg=$(("$osszeg" + "${veletlentomb[i]}"))
done
echo "${veletlentomb[*]}"

echo "A maximum ertek: $maximum"
echo "A minimum ertek: $minimum"
echo "Az elemek osszege: $osszeg"
