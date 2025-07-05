#!/bin/bash
if [ -z $1 ]; then
  echo "Error: Please input file for request body"
  exit 1
fi

HDR="Content-Type: application/json"
BDY=$(<"$1")

echo $HDR
echo $BDY
curl -X POST -h ($HDR) -d ($BDY) http://localhost:1337
