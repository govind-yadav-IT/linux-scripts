#!/bin/bash

echo "================================"
echo "System Health Report"
echo "Generated: $(date)"
echo "================================"
echo ""

# CPU Usage
echo "--- CPU USAGE ---"
cpu_idle=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
cpu_usage=$(echo "100 - $cpu_idle" | bc)
echo "CPU Usage: $cpu_usage%"
if [ "$(echo "$cpu_usage > 80" | bc)" -eq 1 ]; then
    echo "WARNING: CPU above 80%!"
else
    echo "OK: CPU is normal"
fi
echo ""

# Memory Usage
echo "--- MEMORY USAGE ---"
mem_total=$(free -m | awk 'NR==2{print $2}')
mem_used=$(free -m | awk 'NR==2{print $3}')
mem_percent=$(echo "scale=1; $mem_used * 100 / $mem_total" | bc)
echo "Total Memory: ${mem_total}MB"
echo "Used Memory: ${mem_used}MB"
echo "Memory Usage: ${mem_percent}%"
if [ "$(echo "$mem_percent > 80" | bc)" -eq 1 ]; then
    echo "WARNING: Memory above 80%!"
else
    echo "OK: Memory is normal"
fi
echo ""

# Disk Usage
echo "--- DISK USAGE ---"
disk_usage=$(df -h / | awk 'NR==2{print $5}' | cut -d'%' -f1)
echo "Root Disk Usage: $disk_usage%"
if [ "$disk_usage" -gt 80 ]; then
    echo "WARNING: Disk above 80%!"
else
    echo "OK: Disk is normal"
fi
echo ""
echo "================================"
echo "Health check complete"
echo "================================"
