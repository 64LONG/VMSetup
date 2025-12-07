#!/usr/bin/bash

echo "Current CPU utilization of system"
top | head -n 3 | tail -n 1

echo "Current MEM utilization of system"
free -h

echo "Current space utilization of file system"
df -h

echo "Top 5 processes with highest CPU usage"
px aux --sort=-%cpu | head -n 11

echo "Top 5 processes with highest MEM usage"
px aux --sort=-%mem | head -n 11
