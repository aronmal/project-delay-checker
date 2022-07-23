#!/bin/bash

WORKING_DIR=/home/aronmal/Documents/Github

CHECK_FOR_GIT() {
    cd $1
    if [ -d ".git" ]; then
        if [ "$(git status -s)" ]; then
            pwd
            git status -s
        fi
    fi
}

for dir in $WORKING_DIR/*/; do
    CHECK_FOR_GIT $dir
done
