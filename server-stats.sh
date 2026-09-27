#!/bin/bash

echo "========================================"
echo "       SERVER PERFORMANCE STATS"
echo "========================================"


# ========================================
# CPU USAGE
# ========================================

echo ""
echo "CPU USAGE"
echo "----------------------------------------"

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')

printf "Total CPU Usage : %.2f%%\n" "$CPU_USAGE"


# ========================================
# MEMORY USAGE
# ========================================

echo ""
echo "MEMORY USAGE"
echo "----------------------------------------"

free -h

# Get memory usage percentage
MEMORY_USAGE=$(free | awk '/Mem:/ {printf "%.2f", $3/$2 * 100}')

printf "Memory Usage Percentage : %s%%\n" "$MEMORY_USAGE"


# ========================================
# DISK USAGE
# ========================================

echo ""
echo "DISK USAGE"
echo "----------------------------------------"

df -h --total | tail -1


# ========================================
# TOP 5 PROCESSES BY CPU
# ========================================

echo ""
echo "TOP 5 PROCESSES BY CPU"
echo "----------------------------------------"

ps -eo pid,user,%cpu,%mem,comm --sort=-%cpu | head -n 6


# ========================================
# TOP 5 PROCESSES BY MEMORY
# ========================================

echo ""
echo "TOP 5 PROCESSES BY MEMORY"
echo "----------------------------------------"

ps -eo pid,user,%cpu,%mem,comm --sort=-%mem | head -n 6


# ========================================
# SYSTEM INFORMATION
# ========================================

echo ""
echo "SYSTEM INFORMATION"
echo "----------------------------------------"

OS=$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f 2)

echo "OS       : $OS"
echo "Uptime   : $(uptime -p)"
echo "Load Avg : $(uptime | awk -F'load average:' '{print $2}')"
echo "Users    : $(who | wc -l)"


# ========================================
# END
# ========================================

echo ""
echo "========================================"
echo "             END OF REPORT"
echo "========================================"

