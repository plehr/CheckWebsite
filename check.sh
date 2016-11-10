#!/bin/bash
# You need to install https://github.com/mashlol/notify and nodejs
# Register this script in your crontab

wget https://plehr.de/
sum=`md5sum index.html`
res="3546bfb6390252ee65f6d7561971cd80  index.html";
if [  "$sum" == "$res"  ]
then
echo OK
else
/usr/local/bin/notify -t "OnePlus X verfügbar!!"
fi
rm index.html