#!/bin/sh -l

REQS=requirements.txt
if test -f "$REQS"; then
    pip install -r $REQS
fi
