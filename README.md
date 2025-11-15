Project Overview

The Linux Networking Lab demonstrates foundational host-level network visibility and packet inspection techniques using native Linux tools.
It provides a lightweight, cloud-friendly way to understand open ports, live connections, routing paths, and packet behavior inside an AWS EC2 instance.

This lab is designed for cloud engineers, security analysts, and architects who need hands-on familiarity with Linux network telemetry in real-world environments.

💼 Business Value
This project strengthens host-level security by providing visibility into:
Open ports and active listeners
Live and established connections
Routing behavior and interface activity
Packet-level inspection during port scans
Organizations benefit from improved monitoring, threat detection awareness, and baseline network observability—capabilities essential for incident response, SOC operations, and compliance frameworks such as NIST 800-53 (AU, CM), CIS Benchmarks, and ISO 27001 A.8 & A.12.

🧰 Tools & Utilities
ss / netstat – Identify open ports and active connections
ip / ifconfig – Interface and routing visibility
tcpdump – Packet capture for traffic inspection
nmap – SYN scan simulation for attacker-like activity
cron – Scheduled hourly snapshots
EC2 (Ubuntu) – Execution environment

🛠️ Features
Automated network snapshot script (netwatch.sh)

Logs include:
Interfaces
Listeners
Routes
Established connections
Packet capture output
Controlled attacker simulation with nmap
Hourly cron-based logging
Creates a historical timeline of network activity

Repository Structure
linux-networking-lab/
│── netwatch.sh
│── README.md
│── project_summary.md
│── security_requirements.md
│── risks_and_mitigations.md
│── networklog.txt (optional sample)
└── .gitignore

🚀 Setup Instructions
1. Connect to EC2
ssh -i your-key.pem ubuntu@your-ec2-ip

2. Install Required Tools
sudo apt update && \
sudo apt install -y net-tools iproute2 tcpdump nmap iptables

3. Add the Script
Upload netwatch.sh and make it executable:
chmod +x netwatch.sh

4. Configure Hourly Logging
sudo crontab -e

Add this line:

15 * * * * /home/ubuntu/netwatch.sh >> /home/ubuntu/networklog.txt 2>&1

🧪 Simulating a Port Scan
Local SYN Scan
sudo nmap -sS -Pn 127.0.0.1

Remote SYN Scan
From another machine:
nmap -sS -Pn <ec2-public-ip>

Logs will show:
SYN packets
Listener responses
Route behavior
Packet metadata from tcpdump

📄 Output
All results are written to:
networklog.txt

Capturing:
Interface summary
Active connections
Listeners and services
Routing table
5-packet tcpdump snapshot
Timestamped snapshots for trend analysis

🧠 Next Steps (Future Enhancements)
Forward logs to CloudWatch, ELK, or Azure Sentinel
Add anomaly detection for unexpected ports or IPs
Auto-block malicious IPs using iptables
Extend to multi-interface environments
Build Grafana dashboards for visual analysis
