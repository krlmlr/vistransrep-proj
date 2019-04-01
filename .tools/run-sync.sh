#!/bin/bash

cd $(dirname $0)

while :
do
	.tools/git-sync
	sleep 5
done
