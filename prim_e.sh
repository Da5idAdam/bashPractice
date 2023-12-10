#!/bin/bash

echo "Kerek egy pozitiv egesz szamot: "
read szam

if ! [ "$szam" -eq "$szam" ] 2> /dev/null || [ "$szam" -le 0  ]
then
    echo "Kerem pozitiv egesz szamot irjon be!"
    exit 1
fi

if [ "$szam" -eq 2 ] || [ "$szam" -eq 3 ]; then
    echo "$szam prim"
    exit 0
fi

for ((i=2; i<"$szam/2"; i++)); do
    if [ $((szam % i)) -eq 0 ]; then
        echo "$szam nem prim"
        exit 0
    fi
done

echo "$szam prim"
