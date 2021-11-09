#!/bin/bash
export HOME="/home/pi"
export TERM="linux"
echo "News headlines from Southgate Amateur Radio News"
echo "https://www.arnewsline.org/"
echo ""
curl -s -X GET https://[your-api-gw-id-here].execute-api.us-west-1.amazonaws.com/dev/parse?rss=http://www.southgatearc.org/sarc.rss | jq '.headlines[]'
