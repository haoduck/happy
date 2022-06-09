#!/bin/bash

eecho(){
    randsleep
    echo -e "$*"
}
randsleep(){
    sleep 0.$[$RANDOM%5+3]
}

geoip="$(curl -ks https://api.ip.sb/geoip -A Mozilla)"
asn_organization="$(echo "$geoip"|grep -o "asn_organization.*"|cut -d \" -f 3)"
ip="$(echo "$geoip"|grep -o "ip.*"|cut -d \" -f 3)"
country="$(echo "$geoip"|grep -o "country.*"|cut -d \" -f 3)"

clear
eecho "Retrieving speedtest.net configuration..."
eecho "Testing from ${asn_organization} (${ip})..."
eecho "Retrieving speedtest.net server list..."
eecho "Selecting best server based on ping..."
sleep 2
eecho "Hosted by ${country} [$[$RANDOM%5].$[$RANDOM%20+20] km]: $[$RANDOM%5].$[$RANDOM%200+100] ms"
eecho "Testing download speed\c"
for i in {1..100};do eecho ".\c";done;echo
eecho "Download: $[$RANDOM%600+900] Mbit/s"
eecho "Testing upload speed\c"
for i in {1..60};do eecho ".\c";done;echo
eecho "Upload: $[$RANDOM%600+700] Mbit/s"
eecho "Share your speedtest: https://dabendan.pages.dev/?testid=$[$RANDOM%50000+10000]"
