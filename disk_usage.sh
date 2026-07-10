#!/bin/bash
echo "Report Generated: $(date)"
echo "Disk Usage Report"
echo "_________________"
df -h | grep -v tmpfs
echo ""
echo "Checking for partitions above 80%...."
df -h | grep -v tmpfs | awk 'NR>1 {print $5, $6}' | while read -r usage mount; do
     usage_num=${usage%?}
     if [ "$usage_num" -gt 80 ]; then
        echo "WARNING: $mount is at $usage - above 80%!"
     else
        echo "OK: $mount is at $usage"
     fi
done

