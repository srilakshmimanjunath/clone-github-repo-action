#!/bin/bash

if [ -z "$3" ]; then
    git clone https://github.com/$1/$2.git
else
    git clone https://$3@github.com/$1/$2.git
fi

if [ -d "$2" ]; then
    echo "Cloned $2 repository successfully."
    echo "Access the repository content usind `cd $2`." 
else
    echo "Error: Couldn't clone $2 repository. Check the PAT scope."
    exit 1
fi