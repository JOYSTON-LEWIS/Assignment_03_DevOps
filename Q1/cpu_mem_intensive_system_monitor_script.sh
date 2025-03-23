#!/bin/bash

# Log file location
LOG_FILE="/var/log/cpu_mem_intensive_system_monitor.log"
TEMP_FILE="/tmp/htop_output.txt"

# Install htop if it's not installed
if ! command -v htop &> /dev/null; then
    echo "htop could not be found, installing..."
    sudo apt update && sudo apt install -y htop
fi

{
    # Start of the report
    echo "----------------------------- Start of Report -----------------------------"
    echo "Report generated on: $(date)"
    echo ""

    # CPU Usage per Application
    echo "CPU Usage per Application:"
    echo "----------------------------"
    echo -e "Application               User %   System %   CPU %"
    ps -eo comm,%cpu,%mem --sort=-%cpu | tail -n +2 | head -10 | awk '{printf "%-24s %-9s %-9s %-7s\n", $1, $2"%", $3"%", $2"%"}'
    echo ""

    # Memory Usage - Total Memory, Used Memory, Free Memory, System Used Memory (buffers/cache)
    total_mem=$(free -m | awk 'NR==2{print $2}')
    used_mem=$(free -m | awk 'NR==2{print $3}')
    free_mem=$((total_mem - used_mem))
    system_used_mem=$(free -m | awk 'NR==2{print $6}')

    echo "Memory Usage per Application:"
    echo "----------------------------"
    echo "Total Memory: ${total_mem} MB"
    echo "Used Memory: ${used_mem} MB"
    echo "Free Memory: ${free_mem} MB"
    echo "System Used Memory (Buffers/Cache): ${system_used_mem} MB"
    echo ""

    # Memory Usage per Application (Only Mem % and Mem in MB)
    echo -e "Application               Mem %   Mem (MB)"

    ps -eo comm,rss --sort=-rss | tail -n +2 | head -10 | while read app rss; do
        # Convert RSS from KB to MB
        rss_mb=$(echo "scale=2; $rss/1024" | bc -l)
        mem_percent=$(echo "scale=2; $rss/($total_mem*1024)*100" | bc -l)

        # Print results
        printf "%-24s %-7.2f%%  %-8.2f MB\n" "$app" "$mem_percent" "$rss_mb"
    done

    echo ""

    # Top 10 Resource-Intensive Processes
    echo "Top 10 Resource-Intensive Processes:"
    echo "----------------------------"
    ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -11
    echo ""

    # New section: Extracting Process-Intensive values using top (instead of htop)
    echo "Process-Intensive Values (Using htop):"
    echo "----------------------------"

    # Top CPU-Intensive Processes from top
    echo -e "Top 10 CPU-Intensive Processes (Using htop):"
    echo -e "PID    COMMAND         %CPU   %MEM"
    top -n 1 -b | head -20 | grep -E "^\s*[0-9]+" | awk '{print $1, $12, $9, $10}' | sort -k3 -n -r | head -10 | awk '{printf "%-7s %-15s %-7s %-7s\n", $1, $2, $3, $4}'
    echo ""

    # Top Memory-Intensive Processes from top
    echo -e "Top 10 Memory-Intensive Processes (Using htop):"
    echo -e "PID    COMMAND         %CPU   %MEM"
    top -n 1 -b | head -20 | grep -E "^\s*[0-9]+" | awk '{print $1, $12, $9, $10}' | sort -k4 -n -r | head -10 | awk '{printf "%-7s %-15s %-7s %-7s\n", $1, $2, $3, $4}'
    echo ""

    # End of the report
    echo "----------------------------- End of Report -----------------------------"
} | sudo tee -a "$LOG_FILE" > /dev/null

# Clean up any temporary files created by the script
rm -f "$TEMP_FILE"