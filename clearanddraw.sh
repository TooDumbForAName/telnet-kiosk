#!/bin/bash

clear


NUMBUFFER="  "

#Number 0
NUMBER0ROW1="######"
NUMBER0ROW2="#    #"
NUMBER0ROW3=$NUMBER0ROW2
NUMBER0ROW4=$NUMBER0ROW2
NUMBER0ROW5=$NUMBER0ROW2
NUMBER0ROW6=$NUMBER0ROW1

#Number 1

NUMBER1ROW1="    # "
NUMBER1ROW2="   ## "
NUMBER1ROW3="$NUMBER1ROW1"
NUMBER1ROW4="$NUMBER1ROW1"
NUMBER1ROW5="$NUMBER1ROW1"
NUMBER1ROW6="   ###"


printf "$NUMBER0ROW1$NUMBUFFER\n"
printf "$NUMBER0ROW2$NUMBUFFER\n"
printf "$NUMBER0ROW3$NUMBUFFER\n"
printf "$NUMBER0ROW4$NUMBUFFER\n"
printf "$NUMBER0ROW5$NUMBUFFER\n"
printf "$NUMBER0ROW6$NUMBUFFER\n"

row[0]="@==============================================================================@\n"
row[2]="|                                                                              |\n"
row[25]="@==============================================================================@\n"


printf "${row[0]}"
printf "${row[2]}"
printf "${row[25]}"
