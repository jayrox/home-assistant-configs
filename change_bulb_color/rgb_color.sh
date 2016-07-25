#!/bin/bash

HOST=$1
PORT=$2
HAPASSWORD=$3

LIGHTID=$4

RED=$5
GREEN=$6
BLUE=$7
BRIGHTNESS=$8

curl $HOST:$PORT/api/services/light/turn_on -X POST -H "x-ha-access: $HAPASSWORD" -H "Content-Type: application/json" -d "{\"entity_id\": \"$LIGHTID\", \"rgb_color\": [$RED,$GREEN,$BLUE], \"brightness\": $BRIGHTNESS}"
