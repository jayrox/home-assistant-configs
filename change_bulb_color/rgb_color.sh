#!/bin/bash

HOST=$1
PORT=$2
HAPASSWORD=$3

LIGHTID=$4

# Define Red and convert to int
RED=$5
RED=${RED%%.*}

# Define Green and convert to int
GREEN=$6
GREEN=${GREEN%%.*}

# Define Blue and convert to int
BLUE=$7
BLUE=${BLUE%%.*}

# Define Brightness and convert to int
BRIGHTNESS=$8
BRIGHTNESS=${BRIGHTNESS%%.*}

# Gen API URL
URL=$HOST:$PORT/api/services/light/turn_on

# Call API
# -k tells curl to not validate SSL
curl $URL -k -X POST -H "x-ha-access: $HAPASSWORD" -H "Content-Type: application/json" -d "{\"entity_id\": \"$LIGHTID\", \"rgb_color\": [$RED,$GREEN,$BLUE], \"brightness\": $BRIGHTNESS}"
