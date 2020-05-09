#!/bin/sh

RES_PATH="src/main/res/raw"

# Make sure raw directory exists
mkdir $RES_PATH

# Check if json files are already there
COUNT=`ls -l $RES_PATH/tvos*.json | wc -l`

# Skip download if files already exist
if [ $COUNT != 1 ]
then
    wget http://10.0.1.50/aerials/tvos10.json -O $RES_PATH/tvos10.json
    wget http://10.0.1.50/aerials/tvos11.json -O $RES_PATH/tvos11.json
    wget http://10.0.1.50/aerials/tvos12.json -O $RES_PATH/tvos12.json
    wget http://10.0.1.50/aerials/tvos13.json -O $RES_PATH/tvos13.json
fi

