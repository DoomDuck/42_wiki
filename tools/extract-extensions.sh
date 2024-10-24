#!/bin/bash
set -o

echo extracting extensions

archives=$(find extensions -name "*.tgz");

for archive in $archives; do
    echo "$archive";
    tar -C "./extensions" -xzf "$archive";
done

rm -r $archives
