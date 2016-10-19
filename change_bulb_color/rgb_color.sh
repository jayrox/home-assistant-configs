#!/bin/bash

HOST=$1
PORT=$2
HAPASSWORD=$3

LIGHTID=$4

# Define Red and convert to int
RED=$5
RED=${RED%%.*}
if (( 0 > $RED )); then
    RED=0
fi
if (( $RED > 255 )); then
    RED=255
fi

# Define Green and convert to int
GREEN=$6
GREEN=${GREEN%%.*}
if (( 0 > $GREEN )); then
    GREEN=0
fi
if (( $GREEN > 255 )); then
    GREEN=255
fi

# Define Blue and convert to int
BLUE=$7
BLUE=${BLUE%%.*}
if (( 0 > $BLUE )); then
    BLUE=0
fi
if (( $BLUE > 255 )); then
    BLUE=255
fi

# Define Brightness and convert to int
BRIGHTNESS=$8
BRIGHTNESS=${BRIGHTNESS%%.*}
if (( 0 > $BRIGHTNESS )); then
    BRIGHTNESS=0
fi
if (( $BRIGHTNESS > 255 )); then
    BRIGHTNESS=255
fi

# Gen API URL
URL=$HOST:$PORT/api/services/light/turn_on

echo "{\"entity_id\": \"$LIGHTID\", \"rgb_color\": [$RED,$GREEN,$BLUE], \"brightness\": $BRIGHTNESS}"

# Call API
# -k tells curl to not validate SSL
curl $URL -k -X POST -H "x-ha-access: $HAPASSWORD" -H "Content-Type: application/json" -d "{\"entity_id\": \"$LIGHTID\", \"rgb_color\": [$RED,$GREEN,$BLUE], \"brightness\": $BRIGHTNESS}"

