#!/bin/bash

echo "Converting $1"

filename=$1.md

if [ -f $filename ]; then
    echo "[$filename] already exists; conversion canceled."
    exit 1
fi

cp src/site/apt/$1.apt $filename

sed -i 's/<<</`/' $filename
sed -i 's/>>>/`/' $filename

sed -i 's/<</**/' $filename
sed -i 's/>>/**/' $filename
