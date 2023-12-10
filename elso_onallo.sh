#!/bin/bash

read -p "Username: " UserName
read -p "Version: " Version
read -p "Site: " Site

touch config.yml

echo "username:" $UserName > config.yml
echo "version:" $Version >> config.yml
echo "site:" $Site >> config.yml
