#!/bin/bash

set -ex

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
TRACE_DIR="$SCRIPT_DIR/traces"

SELECT_KEYWORD="PROGAM_KEYWORD"
if [ ! -z "$1" ]; then
    SELECT_KEYWORD=$1
fi

# the output format of ps command can change between different versions etc, if this doesn't work
# for you check the output of this line
pids=`ps ax | tr -s ' ' , | grep $SELECT_KEYWORD  | grep -v grep | cut -d',' -f 2`

mkdir -p $TRACE_DIR

echo "$pids" | xargs -I {} bash -c "py-spy dump -p {} &> $TRACE_DIR/{}.py.trace"
echo "$pids" | xargs -P 32 -I {} bash -c "gdb attach {} -batch -ex 'thread apply all bt' &> $TRACE_DIR/{}.gdb.trace"
