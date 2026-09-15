#!/bin/bash

docker build . \
   -t ardupilot \
   --build-arg USER_UID=$(id -u) \
   --build-arg USER_GID=$(id -g) \
   --build-arg SKIP_AP_GRAPHIC_ENV=0 \
   -f Dockerfile

#############################################################################
# Sean Hurley (seandhurley@live.com)                                        #
# September 8, 2026                                                         #
#############################################################################