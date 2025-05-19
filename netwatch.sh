#!/bin/bash

echo "=== Network Snapshot - $(date) ==="
echo ""

echo "[IP Addresses]"
ip a

echo ""
echo "[Open Ports and Listeners]"
ss -tulnp

echo ""
echo "[Established Connections]"
netstat -tnp | grep ESTABLISHED

echo ""
echo "[Routing Table]"
ip route show

echo ""
echo "[Top 5 Talkers (ifconfig)]"
ifconfig

echo ""
echo "[TCPDUMP - Capturing 5 Packets on eth0]"
sudo tcpdump -i eth0 -nn -c 5 2>/dev/null

echo "------------------------------------"
