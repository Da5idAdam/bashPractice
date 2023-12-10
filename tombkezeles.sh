#!/bin/bash

declare -a szamok

for ((i=0; i<10; i++)); do
    szamok+=("$RANDOM")
done

echo "${szamok[*]}"

for ((i=0; i<10; i++)); do
    szamok[i]=$((szamok[i]+1))
done

echo "${szamok[*]}"