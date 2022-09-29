#!/bin/bash

set -e

if [ -z $1 ]; then
    read -r -p "Which user do you want to sign into? " which_user
else
    which_user="$1"
fi

if [ ! -f "$which_user.txt" ]; then
    echo "No password for user yet"
    exit 1
fi

cat "$which_user.txt"

ssh "bandit$which_user@bandit.labs.overthewire.org" -p 2220
