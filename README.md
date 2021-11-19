# packet-radio-node-scripts
ax25 node scripts to run apps accessible via the node menu

This is a collection of bash scripts intended to be invoked from a ax25 node menu that in turn invoke
other applications and return the results to the packet output.

This was inspired by others who have set up text based adventure games like Zork and Colossal Cave
over packet. I was interested to use the same approach and add other apps, including building some
custom apps to integrate with other sources of info, like RSS news feeds.

I have a demo video of these scripts being accessed over Packet Radio here:
https://www.youtube.com/watch?v=EERktEisDKY

## What is Amateur Radio ax25 / node / Packet Radio?
See https://en.wikipedia.org/wiki/AX.25
and https://en.wikipedia.org/wiki/Packet_radio

## advent.sh
Runs Coloassal Cave text-based adventure game via frotz, using z-machine source.

## hgttg.sg
Runs Hitchhiker's Guide to the Galaxy text-based adventure game via frotz, using z-machine source.

## zork1.sh
Runs Zork 1 text-based adventure game via frotz, using z-machine source.

## zork2.sh
Runs Zork 2

## zork3.sh
Runs Zork 3

## get-weather.sh
Gets today's weather for Davis,CA, running ansiweather

## get-weather-5days.sh
Gets 5 day weather forecast for Davis,CA, running ansiweather

## get-weather-params.sh
Prompts for name of city then runs ansiweather for today's forecast

## get-weather-5days-params.sh
Prompts for name of city then runs ansiweather for 5 day forecast

## rss-arrl-example.sh
Calls an AWS Lambda via API Gateway to retrieve and parse RSS news feed from arrl.org. Outputs titles from the RSS XML response. If you deploy your own copy and want to reuse this script, replace the AWS Gateway endpoint id placeholder in the script to point to the id of your deployed endpoint. 

RSS Parser source: https://github.com/kevinhooke/rss-parser
AWS Lambda source: https://github.com/kevinhooke/rss-parser-lambda

## rss-amateurradionewsline-example.sh
Same as above, but parses and displays titles from RSS feed from Amateur Radio Newsline

## rss-southgate-arc-example.sh
Same as above, for Southgate ARC news.




