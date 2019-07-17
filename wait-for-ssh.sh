#!/bin/bash

nc -zv -w 2 $1 22
while test $? -gt 0
do
   if (( $SECONDS > 60 )); then 
     echo "ERROR: $0 Timed out after $SECONDS seconds. Exiting."
     exit 1
   fi
   
   sleep 0.5
   echo "Trying again..."
   nc -zv -w 2 $1 22
   
done
