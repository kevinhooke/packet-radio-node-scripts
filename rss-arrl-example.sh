#!/bin/bash
export HOME="/home/pi"
export TERM="linux"
echo "News headlines from Amateur Radio Relay League (ARRL)"
echo "http://www.arrl.org/news"
echo ""
IFS=$'\n' lines=`curl -s -X GET https://[your-api-gw-id-here].execute-api.us-west-1.amazonaws.com/dev/parse?rss=http://www.arrl.org/arrl.rss | jq '.headlines[]'`

#write each line individually to output
for line in $lines;
  do
    echo "$line"
  done