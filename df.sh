#!/bin/bash
top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}'
echo "CPU Utilization is" `top -bn1 | grep Cpu`
free -h | awk 'NR==2{printf "Memory Usage: %s/%s MB (%.2f%%)\n", $3,$2,$3*100/$2 }'
df -hP | column -t | awk '{print $1 " "$5}' |column -t
