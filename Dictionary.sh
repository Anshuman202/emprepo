#!/bin/bash -x

declare -A sounds  #declaring dictionary
sounds[dog]="bark"
sounds[bird]="tweet"
sounds[cat]="meow"
sounds[wolf]="howl"

#to retrieve value
echo Birds Sounds ${sounds[bird]}

#to get the key-pair together
for animal in "${!sounds[@]}"
do
         echo "$animal ${sounds[$animal]}"
done
