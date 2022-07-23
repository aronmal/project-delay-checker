#!/bin/bash

WORKING_DIR=/home/aronmal/Documents/Github

CHECK_FOR_GIT() {
    if [ -d ".git" ]; then
        if [ "$(git status -s)" ]; then
            pwd
            git status -s
        fi
    fi
}

for dir in $WORKING_DIR/*/; do
    cd $dir
    CHECK_FOR_GIT
done
