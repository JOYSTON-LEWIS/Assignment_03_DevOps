#!/bin/bash

# Configuration
LOG_FILE="/var/log/disk_system_monitor.log"
THRESHOLD=80  # Set threshold percentage for alerts

# Check and install/update necessary packages (requires sudo)
if ! command -v iostat &> /dev/null; then
    echo "Installing sysstat (iostat)..."
    sudo apt update && sudo apt install -y sysstat
fi

if ! command -v iotop &> /dev/null; then
    echo "Installing iotop..."
    sudo apt update && sudo apt install -y iotop
fi

# Append start of report with sudo to write to /var/log
echo "----------------------------- Start of Report -----------------------------" | sudo tee -a "$LOG_FILE" >/dev/null

# Get current date and time
echo "Report generated on: $(date)" | sudo tee -a "$LOG_FILE" >/dev/null

# Add blank line to log file only
echo "" | sudo tee -a "$LOG_FILE" >/dev/null  # Line space without terminal output

# Get disk usage summary with additional I/O stats
printf "%-15s %-20s %-10s %-10s %-10s %-6s %-12s %-12s %-8s %-20s\n" "Status" "Filesystem" "Size" "Used" "Avail" "Use%" "Read KB/s" "Write KB/s" "Busy%" "Mounted on" | sudo tee -a "$LOG_FILE" >/dev/null

df -h 2>/dev/null | awk 'NR>1 {print $1, $2, $3, $4, $5, $NF}' | while read -r device size used avail use_percent mountpoint; do
    disk_name=$(basename "$device" | sed 's/[0-9]*$//')
    io_stats=$(iostat -dxk "$disk_name" 1 1 2>/dev/null | awk -v disk="$disk_name" '$1==disk {print $6, $7, $12}')

    read_kb="0.0"
    write_kb="0.0"
    busy_percent="0.0"

    if [[ -n "$io_stats" ]]; then
        read_kb=$(echo "$io_stats" | awk '{print $1}')
        write_kb=$(echo "$io_stats" | awk '{print $2}')
        busy_percent=$(echo "$io_stats" | awk '{print $3}')
    fi

    usage_num=${use_percent%%%}  # Remove % symbol
    status="Normal Usage"
    if [ "$usage_num" -gt "$THRESHOLD" ]; then
        status="High Usage"
    fi

    printf "%-15s %-20s %-10s %-10s %-10s %-6s %-12s %-12s %-8s %-20s\n" "$status" "$device" "$size" "$used" "$avail" "$use_percent" "$read_kb" "$write_kb" "$busy_percent" "$mountpoint" | sudo tee -a "$LOG_FILE" >/dev/null
done

# End of the report
echo "----------------------------- End of Report -----------------------------" | sudo tee -a "$LOG_FILE" >/dev/null

exit 0