#!/bin/bash
TZ="$TTZ"
TIME=`date +%H%M`
if [ "$DFORMAT" == "12" ];
then
   TIME=`date +%I%M`
   MERIDIAN=`date +%p`
   COLON=$MERIDIAN
else
   TIME=`date +%H%M`
   COLON="normal"
fi


paste numbuffer.txt ${TIME[0]:0:1}.txt ${TIME[0]:1:1}.txt colon-$COLON.txt ${TIME[0]:2:1}.txt ${TIME[0]:3:1}.txt > time.txt
#printf "\t\t=================================================\n\r"
while read row; do
	printf "\t\t$row\t\t\n\r"
done < time.txt

#printf "\t\t=================================================\n\r"

printf "\t\t\t`date +'%A, %B %d, %Y'`\n\r"
printf "\t\t\t$TZ\n\r"
