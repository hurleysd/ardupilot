#!/bin/bash

THIS_SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

xhost +local:docker # forward X11
docker run \
   --network host \
   --name $USER-ardupilot-container \
   -u "$(id -u):$(id -g)" \
   -e DISPLAY=$DISPLAY \
   -v /tmp/.X11-unix:/tmp/.X11-unix \
   -v "$THIS_SCRIPT_DIR:/ardupilot" \
   -it \
   --rm \
   ardupilot:latest \
   bash

#############################################################################
# Sean Hurley (seandhurley@live.com)                                        #
# September 8, 2026                                                         #
#############################################################################