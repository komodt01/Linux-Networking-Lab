# Project Summary: Linux Networking Lab

## 🔍 Problem Statement
Cloud workloads often lack basic network visibility at the host layer. Without foundational tools, teams cannot easily inspect open ports, active connections, routing paths, or real-time packet activity.

## 🎯 Project Purpose
This project provides hands-on experience with Linux network inspection commands, packet capture utilities, and simulated attacker behavior. It establishes a lightweight baseline for monitoring network activity on a single EC2 instance.

## 🛠 Methodology
- Deployed an Ubuntu EC2 instance
- Installed `nmap`, `tcpdump`, `iproute2`, and `net-tools`
- Built `netwatch.sh` to log interfaces, listeners, routes, and packet captures
- Scheduled the script via cron to run hourly
- Simulated SYN scans using `nmap` to observe traffic in packet captures

## ✅ Results
- Captured live SYN scan attempts using `tcpdump`
- Logged active network listeners and connections
- Produced hourly snapshots in `networklog.txt`
- Demonstrated host-level detection techniques for reconnaissance activity

## 🔁 Recommendations
- Forward logs to a SIEM (e.g., ELK, Wazuh, CloudWatch)
- Add alerting for unexpected ports or abnormal traffic
- Expand to multi-interface packet capture and deeper protocol analysis
