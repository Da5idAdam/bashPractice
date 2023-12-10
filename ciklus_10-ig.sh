#!/bin/bash

echo "Szamolas for ciklussal:"

for ((i = 0; i <= 10; i++)); do
    echo "${i}"
done

echo "Szamolas while ciklussal:"

szam=0;
while [ $szam -le 10 ]; do
    echo "${szam}"
    szam=$(($szam+1))
done

echo "Szamolas until ciklussal:"
masikszam=0;
until [ $masikszam -gt 10 ]; do
    echo "${masikszam}"
    masikszam=$(($masikszam+1))
done
    