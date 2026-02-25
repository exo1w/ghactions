#!/bin/bash 
EXPECTED="Hello, Test!"
OUTPUT=$(node -e "console.log(require('./src/app')('Test'))")

if [[ "$OUTPUT" == "$EXPECTED" ]];
then
    echo "test passed!"
    exit 0
else
    echo "test failed expected $Expected but got $OUTPUT"
    exit 1
fi
