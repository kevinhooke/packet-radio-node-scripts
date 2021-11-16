# packet-radio-node-scripts
ax25 node scripts to run apps accessible via the node menu

This is a collection of bash scripts intended to be invoked from a ax25 node menu that in turn invoke
other applications and return the results to the packet output.

This was inspired by others who have set up text based adventure games like Zork and Colossal Cave
over packet. I was interested to use the same approach and add other apps, including building some
custom apps to integrate with other sources of info, like RSS news feeds.

## What is ax25 / node / Packet Radio?
See https://en.wikipedia.org/wiki/AX.25
and https://en.wikipedia.org/wiki/Packet_radio

## advent.sh
Runs Coloassal Cave via frotz, using z-machine source.

## get-weather-5days-params.sh
Prompts for name of city then runs ansiweather for 5 day forecast




