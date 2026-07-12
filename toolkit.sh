#!/bin/bash
set -e
START_TIME=$(date +%s)
mkdir -p reports
REPORT_FILE="reports/system_report_$(date +%Y-%m-%d_%H-%M-%S).txt"
echo "Hostname        : $(hostname)" >> "$REPORT_FILE"
echo "Current User    : $(whoami)" >> "$REPORT_FILE"
OS_NAME=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
echo "Operating System: $OS_NAME" >> "$REPORT_FILE"

echo "========================================" > "$REPORT_FILE"
echo "System Operations Toolkit Report" >> "$REPORT_FILE"
echo "Generated: $(date "+%Y-%m-%d %H:%M:%S %Z")" >> "$REPORT_FILE"
echo "========================================" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "===== Disk Usage =====" >> "$REPORT_FILE"
./disk_usage.sh >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"

echo "===== System Health =====" >> "$REPORT_FILE"
./system_health.sh >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"

echo "===== Log Analysis =====" >> "$REPORT_FILE"
./log_analyzer.sh /var/log/syslog >> "$REPORT_FILE"

END_TIME=$(date +%s)
EXECUTION_TIME=$((END_TIME - START_TIME))

echo "========================================" >> "$REPORT_FILE"
echo "SUMMARY" >> "$REPORT_FILE"
echo "========================================" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"
echo "Report Generated Successfully" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"
echo "Sections Completed:" >> "$REPORT_FILE"
echo "✔ Disk Usage" >> "$REPORT_FILE"
echo "✔ System Health" >> "$REPORT_FILE"
echo "✔ Log Analysis" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"
echo "Report Location: $REPORT_FILE" >> "$REPORT_FILE"
echo "Execution Time : ${EXECUTION_TIME} seconds" >> "$REPORT_FILE"
echo "========================================" >> "$REPORT_FILE"

echo "Toolkit completed successfully!"
echo "Report saved to: $REPORT_FILE"
