#!/bin/bash

szam=$RANDOM

echo "A veletlen szam: $szam"

negyzetszam=0
szamlalo=2
while
    negyzetszam=$(($szamlalo))
    negyzetszam=$(($negyzetszam*$negyzetszam))
    #echo "$negyzetszam"
    szamlalo=$(($szamlalo + 1))

    if [ $negyzetszam -lt $szam ]; then
        echo "$negyzetszam"
    fi

    [[ $negyzetszam -lt $szam ]]
do true; done