#!/bin/sh
code-push login "$INPUT_SERVERURL" --accessKey "$INPUT_TOKEN"
$INPUT_COMMAND --accessKey "$INPUT_TOKEN"
