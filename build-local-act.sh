#!/bin/bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# if linux use act, if mac use colima + act
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    act --artifact-server-path $SCRIPTDIR/.artifacts \
    -P ubuntu-22.04=ghcr.io/catthehacker/ubuntu:js-22.04 \
    -P ubuntu-latest=catthehacker/ubuntu:js-latest

elif [[ "$OSTYPE" == "darwin"* ]]; then
    act --artifact-server-path $SCRIPTDIR/.artifacts \
    -P ubuntu-22.04=ghcr.io/catthehacker/ubuntu:js-22.04 \
    -P ubuntu-latest=catthehacker/ubuntu:js-latest \
    --container-architecture linux/amd64 --container-daemon-socket -

fi;