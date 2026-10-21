#!/bin/bash

# LinuxOpsHub - System Information Script

set -u

echo "=========================================="
echo "       LINUXOPSHUB SYSTEM INFORMATION"
echo "=========================================="

echo
echo "Hostname:"
hostname

echo
echo "Operating System:"
if [ -r /etc/os-release ]; then
    . /etc/os-release
    echo "${PRETTY_NAME:-Unknown}"
else
    echo "OS information unavailable"
fi

echo
echo "Kernel Version:"
uname -r

echo
echo "Current User:"
whoami

echo
echo "System Uptime:"
uptime -p

echo
echo "System Architecture:"
uname -m

echo
echo "IP Addresses:"
hostname -I 2>/dev/null || echo "Unable to retrieve IP addresses"

echo
echo "=========================================="
echo "       END OF SYSTEM INFORMATION"
echo "=========================================="
