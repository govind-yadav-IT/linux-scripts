#!/bin/bash
set -e

print_header() {
    echo "================================"
    echo "Log Analyzer"
    echo "Generated: $(date)"
    echo "================================"
    echo
}

check_argument() {
    if [ $# -eq 0 ]; then
        echo "Error: Please provide a log file path"
        echo "Usage: ./log_analyzer.sh /path/to/logfile"
        exit 1
    fi
}

analyze_log() {
    local LOG_FILE="$1"

    if [ ! -f "$LOG_FILE" ] || [ ! -r "$LOG_FILE" ]; then
        echo "Error: File does not exist or is not readable: $LOG_FILE" >&2
        return 1
    fi

    echo "Analyzing: $LOG_FILE"
    echo
    echo "Total lines: $(wc -l < "$LOG_FILE")"

    local error_count warning_count

    error_count=$(grep -ci 'error' "$LOG_FILE" || true)
    warning_count=$(grep -ci 'warn' "$LOG_FILE" || true)

    echo "Error count: $error_count"
    echo "Warning count: $warning_count"
    echo
    echo "--- Last 5 lines ---"
    tail -5 "$LOG_FILE"
}

print_header
check_argument "$@"
analyze_log "$1"
