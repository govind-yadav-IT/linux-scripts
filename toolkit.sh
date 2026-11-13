#!/bin/bash
set -e

START_TIME=$(date +%s)

mkdir -p reports
REPORT_FILE="reports/system_report_$(date +%Y-%m-%d_%H-%M-%S).txt"

# Report header
{
    echo "========================================"
    echo "System Operations Toolkit Report"
    echo "Generated: $(date '+%Y-%m-%d %H:%M:%S %Z')"
    echo "========================================"
    echo
} > "$REPORT_FILE"

# Collect report sections
{
    OS_NAME=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2- | tr -d '"')

    echo "Hostname        : $(hostname)"
    echo "Current User    : $(whoami)"
    echo "Operating System: $OS_NAME"
    echo

    echo "===== Disk Usage ====="
    ./disk_usage.sh
    echo

    echo "===== System Health ====="
    ./system_health.sh
    echo

    echo "===== Log Analysis ====="
    ./log_analyzer.sh /var/log/syslog

    END_TIME=$(date +%s)
    EXECUTION_TIME=$((END_TIME - START_TIME))

    echo
    echo "========================================"
    echo "SUMMARY"
    echo "========================================"
    echo "Report Generated Successfully"
    echo "Sections Completed:"
    echo "- Disk Usage"
    echo "- System Health"
    echo "- Log Analysis"
    echo "Report Location: $REPORT_FILE"
    echo "Execution Time : ${EXECUTION_TIME} seconds"
    echo "========================================"
} >> "$REPORT_FILE"

echo "Toolkit completed successfully!"
echo "Report saved to: $REPORT_FILE"
