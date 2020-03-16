#!/bin/bash

IMAGE_NAME="$1"

EXISTS="$(docker image ls -q "${IMAGE_NAME}")"
if [ "${EXISTS}" == "" ]
then
	# Not created.
	echo "MISSING"
	exit
fi

echo "PRESENT"
