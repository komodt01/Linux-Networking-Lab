#!/bin/bash

# Linux Networking & Packet Analysis Lab
# Collects a basic snapshot of host network state and selected packet activity.

echo "=== Network Snapshot - $(date) ==="
echo

echo "[IP Addresses and Interfaces]"
ip addr show
echo

echo "[Listening Ports and Sockets]"
ss -tulnp
echo

echo "[Established TCP Connections]"
ss -tnp state established
echo

echo "[Routing Table]"
ip route show
echo

echo "[Interface Statistics]"
ip -s link
echo

echo "[TCP SYN Packet Capture - 5 Packets]"
sudo tcpdump -i any 'tcp[tcpflags] & tcp-syn != 0' -nn -c 5 2>/dev/null

echo
echo "------------------------------------"
