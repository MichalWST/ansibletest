#!/bin/bash

# Output the current date and time
date "+%Y-%m-%d %H:%M:%S" >> memory_usage.txt

# Execute free -h command and append output to file
echo "Memory Usage:" >> memory_usage.txt
free -h >> memory_usage.txt

# Output top 10 processes and append to file
echo -e "\nTop 10 Processes:" >> memory_usage.txt
top -b -n 1 | head -n 17 >> memory_usage.txt

