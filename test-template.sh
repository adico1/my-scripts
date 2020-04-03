#!/bin/bash

source scripts/assert/assert.sh

echo "Print hello world on default"
expected="Hello world!"
actual="$(bash ./template.sh)"
assert_eq "$actual" "$expected" "not equivalent!"

echo "Print help on -h parameter"
read -r -d '' expected << EOM
Add description of the script functions here.

Syntax: scriptTemplate [-g|h|v|V]
options:
g Print the GPL license notification.
h Print this Help.
v Verbose mode.
V Print software version and exit.

EOM

actual="$(bash ./template.sh -h)"
assert_eq "$actual" "$expected" "not equivalent!"
echo "Errors: $?"
