#!/bin/bash 

SERVERNAME="My Server Name"
DFORMAT=""
clear
printf "Welcome to $SERVERNAME, running on $(uname -sp)!\n\r"
while [ "$TTZ" == "" ]; do
  printf "Please select your time zone:\n\r"
  printf "1. America/New York\n\r"
  printf "2. America/Chicago\n\r"
  printf "3. America/Denver\n\r"
  printf "4. America/Los Angeles\n\r"
  printf "5. None of the above (show UTC)\n\r"
  printf "Option:\n\r"
  read choice
case $choice in
  *1*)
    export TTZ="America/New_York"
    ;;
  *2*)
    export TTZ="America/Chicago"
    ;;
  *3*)
    export TTZ="America/Denver"
    ;;
  *4*)
    export TTZ="America/Los_Angeles"
    ;;
  *5*)
    export TTZ="UTC"
    ;;
  *)
    printf "I didn't quite catch that. Assuming UTC\n\r"
    export TTZ="UTC"
    ;;
esac
done

printf "Time zone $TTZ selected.\n\r"

while [ "$DFORMAT" == "" ]; do
   printf "Do you want 12-hour or 24-hour time?\n\r"
   printf "1. 12-hour time\n\r"
   printf "2. 24-hour time\n\r"
   printf "Option:\n\r"
   read format
      case $format in
        *1*) 
           export DFORMAT="12"
           ;;
        *2*)
           export DFORMAT="24"
           ;;
          *)
           export DFORMAT="24"
           printf "I didn't quite catch that. Assuming 24-hour time\n\r"
           ;;
	esac
done
clear
printf "Fetching feed from vintagecomputing.net\n\r"
wget -q http://feeds.feedburner.com/vintagecomputing?format=xml -O vintagecomputing.xml
sleep 5
clear
while [ 1 -eq 1 ] ; do
  ./time.sh
  ./vintagecomputing.sh
  sleep 10
  clear
  ./vintagecomputing.sh
  ./time.sh
  sleep 10
  clear
done

exit
