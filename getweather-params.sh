#!/bin/bash
export HOME="/home/pi"
export TERM="linux"
echo "Enter city and country abbreviation, e.g. Sacramento,USA"
read city
/usr/bin/ansiweather -l $city
