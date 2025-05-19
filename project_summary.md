# Project Summary: Linux Networking Lab

## 🔍 Problem Statement
Security teams need visibility into network activity at the host level. Traditional network tools may not be installed by default, and new cloud hosts often have little baseline visibility.

## 🎯 Project Purpose
This project demonstrates foundational Linux networking inspection tools that help identify open ports, active connections, traffic routes, and real-time packet data.

## 🛠 Methodology
- Deployed Ubuntu EC2 in AWS
- Installed `nmap`, `tcpdump`, `net-tools`, `iproute2`
- Created a bash script to collect data
- Scheduled via cron to log every hour
- Simulated port scans to observe packet-level behavior

## ✅ Results
- Captured real-time SYN scans using `tcpdump`
- Logged active listeners and interfaces
- Verified traffic snapshots in `networklog.txt`

## 🔁 Recommendations
- Integrate alerts using `logwatch`, `fail2ban`, or ELK
- Expand to multi-interface traffic capture
- Push results to centralized monitoring via SIEM
