#!/usr/bin/bash

BASE_DIR=$(dirname $0)

cp $BASE_DIR/.psqlrc $HOME
sudo cp $BASE_DIR/pg_debug /usr/bin
