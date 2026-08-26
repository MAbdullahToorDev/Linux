Y#!/bin/bash

echo "========================================="
echo "       LINUX SERVER HEALTH REPORT        "
echo "========================================="

echo
echo "1. UPTIME & SYSTEM LOAD"
echo "-----------------------------------------"
uptime

echo
echo "2. MEMORY USAGE"
echo "-----------------------------------------"
free -h

echo
echo "3. DISK SPACE USAGE"
echo "-----------------------------------------"
df -h /

echo
echo "4. TOP 3 CPU CONSUMING PROCESSES"
echo "-----------------------------------------"
ps -eo pid,user,%cpu,%mem,comm --sort=-%cpu | head -n 4

echo
echo "5. TOP 3 MEMORY CONSUMING PROCESSES"
echo "-----------------------------------------"
ps -eo pid,user,%cpu,%mem,comm --sort=-%mem | head -n 4

echo
echo "========================================="
echo "            REPORT COMPLETED             "
echo "========================================="
