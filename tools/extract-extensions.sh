#!/bin/bash
archives=$(find extensions -name "*.tgz");

for archive in $archives; do
    tar -C "./extensions" -xzf "$archive";
done

rm -r $archives
