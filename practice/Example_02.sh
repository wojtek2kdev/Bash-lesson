#!/bin/bash

red="\e[31m"
green="\e[32m"
normal="\e[0m"

for domain in `cat domains_list`; do

  result=`ping -c 1 -W 2 $domain 2> /dev/null | grep "64 bytes"`

  if [ "$result" ]; then
    echo -e "$green Udalo sie polaczyc z: $normal$domain"
    else
      echo -e "$red Nie udalo sie polaczyc z: $normal$domain"
  fi;

done;
