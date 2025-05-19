# 🌐 Linux Networking Lab

## 📌 Overview
This lab demonstrates basic Linux network visibility, packet capture, and port scan simulation using open-source tools. It’s designed for cloud engineers and security practitioners who want to build foundational network inspection skills in a controlled AWS environment.

## 🎯 Objectives
- Monitor live connections and open ports
- Capture network packets using `tcpdump`
- Simulate attacker behavior using `nmap`
- Automate periodic snapshots via `cron`

## 🧰 Tools Used
- `ip`, `netstat`, `ss`: show IPs, ports, connections
- `tcpdump`: packet-level inspection
- `nmap`: simulate SYN scan from attacker
- `cron`: automate logs hourly

## 🛠 Setup Instructions

1. SSH into your EC2 instance
2. Install required tools:
```bash
sudo apt update && sudo apt install -y net-tools iproute2 tcpdump nmap iptables
```

3. Create and configure script:
```bash
chmod +x netwatch.sh
```

4. Add cron job:
```bash
sudo crontab -e
# Add:
15 * * * * /home/ubuntu/netwatch.sh >> /home/ubuntu/networklog.txt 2>&1
```

## 🧪 Simulating a Scan
From the same instance:
```bash
sudo nmap -sS -Pn 127.0.0.1
```

From another system:
```bash
nmap -sS -Pn <your-ec2-public-ip>
```

## 📄 Output
All logs are written to `networklog.txt` including:
- Interfaces
- Listeners
- Routes
- Packet summary (tcpdump)

## 🧠 Next Ideas
- Alert on unusual traffic
- Send logs to SIEM
- Block malicious IPs via `iptables`
