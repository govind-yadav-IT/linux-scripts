#!/bin/bash
set -e

# Functions
print_header() {
    echo "================================"
    echo "Log Analyzer"
    echo "Generated: $(date)"
    echo "================================"
    echo ""
}

check_argument() {
    if [ $# -eq 0 ]; then
        echo "Error: Please provide a log file path"
        echo "Usage: ./log_analyzer.sh /path/to/logfile"
        exit 1
    fi
}

analyze_log() {
    LOG_FILE=$1

    if [ ! -f "$LOG_FILE" ]; then
        echo "Error: File $LOG_FILE does not exist"
        exit 1
    fi

    echo "Analyzing: $LOG_FILE"
    echo ""
    echo "Total lines: $(wc -l < "$LOG_FILE")"
    echo "Error count: $(grep -c 'error\|ERROR\|Error' "$LOG_FILE" || echo 0)"
    echo "Warning count: $(grep -c 'warn\|WARN\|Warning' "$LOG_FILE" || echo 0)"
    echo ""
    echo "--- Last 5 lines ---"
    tail -5 "$LOG_FILE"
}

# Main
print_header
check_argument "$@"
analyze_log "$1"
