#!/bin/zsh

# If yarn is installed, add the global bin to the path
if type yarn >/dev/null 2>&1; then
    path+=$(yarn global bin)
    export path
fi
