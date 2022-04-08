#!/bin/bash

# echo "run button pressed"

echo "paste a URL to request:"
read -p ">  " URL

partialURL=$(echo $URL | grep -o -e "news/.*$" | xargs printf "%s")

curl --create-dirs -o $partialURL -L $URL
