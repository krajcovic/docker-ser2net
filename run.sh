#!/bin/bash

docker run -t -i --privileged \
	-p 5000:5000 \
	-v /dev/ttyACM0:/dev/ttyACM0 \
	krajcovic/ser2net \
	bash