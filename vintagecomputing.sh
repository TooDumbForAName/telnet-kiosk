#!/bin/bash

MINUTE=`date +%M`

if [ $MINUTE -eq 00 ];
then
   wget -q http://feeds.feedburner.com/vintagecomputing?format=xml -O vintagecomputing.xml
fi

printf "\n\r"
printf "\t\tLatest posts on \e[34mVintage Computing and Gaming\e[0m\n\n\r"
egrep -i '<title>' vintagecomputing.xml | egrep -iv '<title>Vintage Computing and Gaming</title>' | sed s':\t\t<title>::' | sed s':<\/title>::' > vcg.txt

while read line; do
   printf "* \e[31m$line\n\r\e[0m"
done < vcg.txt
printf "\n\n"



