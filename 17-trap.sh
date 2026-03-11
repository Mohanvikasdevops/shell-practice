#!/bin/bash

set -e #ERR

trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR

echo "Hello World"
echoo "I am Learning shell"
