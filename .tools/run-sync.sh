#!/bin/bash

cd $(dirname $0)/..
pwd

while :
do
	.tools/git-sync
	sleep 5
done
