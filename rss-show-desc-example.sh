#!/bin/bash
export HOME="/home/pi"
export TERM="linux"
echo "Enter article number to display:"
read articleNum
# | jq '.headlines[]'
curl -s -X GET https://[your-api-gw-id]].execute-api.us-west-1.amazonaws.com/dev/parse/$articleNum/desc?rss=http://www.arrl.org/arrl.rss | jq '.text'
