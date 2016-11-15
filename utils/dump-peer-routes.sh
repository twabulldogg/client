#!/bin/sh

BIRD_SOCKET=../var/bird.ctl

echo "show route table rtup all" | sudo birdc -r -s $BIRD_SOCKET \
        | sed 's/^.*
        | bird-route-parser/parse.py --in - --out dump.json.gz --route