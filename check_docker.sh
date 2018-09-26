#!/usr/bin/env bash
RES=`docker-machine status default`
if [[ $RES == Running ]] ;
then
    echo docker-machine running
else
    echo docker-machine not running
fi
cat $RES
