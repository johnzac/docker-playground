#!/bin/sh
curl -L -k -H "user-agent:Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36" "https://www.google.co.in/search?q=$1" | grep -oP '(?<=a href=").*?(?=")' | grep ^http | while read link
 do
 filename=`echo $link | grep -oP '(?<=//).*' | sed 's/[\/\\&;]//g'`
 lynx -nolist -dump $link >> /tmp/$filename
 done
