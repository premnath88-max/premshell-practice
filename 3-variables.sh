#!/bin/bash

############Special variables###########

echo "All Arguments passed to script individually: $@"
echo "Number of varaiables passed to script: $#"
echo "Script name: $0"
echo "Who is running: $USER"
echo "Home dir of the current user: $HOME"
echo "PID of script: $$"
echo "present Directory: $PWD"
sleep 100 &
echo "PID of recently executed background process: $!"
echo "All args passed to script: $*"