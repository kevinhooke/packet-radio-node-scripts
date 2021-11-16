#!/bin/bash
export HOME="/home/pi"
export TERM="linux"
echo "News headlines from Amateur Radio Newsline"
echo "https://www.arnewsline.org/"
echo ""
curl -s -X GET "https://[your-api-gw-id-here].execute-api.us-west-1.amazonaws.com/dev/parse?description=true&rss=https://www.arnewsline.org/?format=rss" | jq '.headlines[]'
