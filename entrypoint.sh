#!/bin/sh
code-push login "$INPUT_SERVERURL" --accessKey "$INPUT_TOKEN"
if [ -n "$INPUT_WORKINGDIRECTORY" ]; then
    cd "$INPUT_WORKINGDIRECTORY"
fi
$INPUT_COMMAND --accessKey "$INPUT_TOKEN"
