#!/bin/bash
export HOME="/home/pi"
export TERM="linux"
echo "News headlines from Southgate Amateur Radio News"
echo "https://www.arnewsline.org/"
echo ""
IFS=$'\n' lines=`curl -s -X GET https://[your-api-gw-id-here].execute-api.us-west-1.amazonaws.com/dev/parse?rss=http://www.southgatearc.org/sarc.rss | jq '.headlines[]'`

lineNum=0
#write each line individually to output
for line in $lines;
  do
    echo "[$lineNum] $line"
    ((lineNum=lineNum+1))
  done

articleNum=''
while [[ $articleNum != "q" ]]; do
  echo "";
  echo "To display article content, enter article number or 'q' to quit:"
  read articleNum
  # | jq '.headlines[]'
  curl -s -X GET https://[your-api-gw-id-here].execute-api.us-west-1.amazonaws.com/dev/parse/$articleNum/desc?rss=http://www.southgatearc.org/sarc.rss | jq '.text'
done