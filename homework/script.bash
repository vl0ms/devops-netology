#!/usr/bin/env bash

addr_list=("192.168.0.1" "173.194.222.113" "87.250.250.242") 
declare -i chk_site
date >> results.log

for i in ${addr_list[@]}
do
    chk_site=0
    ip_addr=$i
    for j in {1..5}
    do
       curl --connect-timeout 2 $ip_addr > /dev/null 2>&1
       if (($? == 0))
       then
           let "chk_site += 1"
       fi
    done
echo "Site $ip_addr: $chk_site" >> results.log
done
