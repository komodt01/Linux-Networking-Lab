# Linux Networking & Packet Analysis Lab

## Overview

This hands-on lab explores foundational Linux network visibility and packet-analysis techniques using an Ubuntu EC2 instance.

The objective is to understand what is happening at the host network layer by inspecting interfaces, listening services, active connections, routing information, and captured network traffic.

The lab also uses a controlled `nmap` scan to generate network activity that can be observed with `tcpdump`.

## Security Objectives

The lab focuses on:

- Establishing basic visibility into Linux network configuration
- Identifying listening ports and active connections
- Understanding local routing information
- Observing network packets at the host interface
- Using controlled scanning to generate traffic for analysis
- Automating recurring network-state collection

## Tools Used

| Tool | Purpose |
|---|---|
| `ip` | Inspect interfaces, addresses, and routing |
| `ss` | Identify listening ports and active connections |
| `netstat` | Inspect established TCP connections |
| `tcpdump` | Capture and inspect network packets |
| `nmap` | Generate controlled scan traffic for observation |
| `cron` | Schedule recurring network snapshots |
| Ubuntu EC2 | Hands-on execution environment |

## Network Snapshot Script

`netwatch.sh` collects a basic snapshot of the host network state.

The script reports:

- IP addresses and interfaces
- Listening TCP and UDP sockets
- Established TCP connections
- Routing information
- A small packet capture from the host interface

The output can be redirected to a log file for recurring snapshots.

## Packet Analysis

The lab uses `tcpdump` to observe traffic at the network interface.

A controlled SYN scan can be generated with `nmap`:

```bash
sudo nmap -sS -Pn 127.0.0.1
```

A scan against an EC2 host can also be performed from another authorized system when the lab environment permits it.

The purpose is to observe how reconnaissance traffic appears at the host network layer rather than to perform unauthorized scanning.

## Scheduled Collection

The script can be scheduled with cron to create recurring network snapshots.

Example:

```text
15 * * * * /home/ubuntu/netwatch.sh >> /home/ubuntu/networklog.txt 2>&1
```

This creates a basic historical record of the network state observed by the host.

Recurring collection is useful for understanding how network visibility can move from a one-time troubleshooting command toward repeatable operational monitoring.

## Security Considerations

This lab is intended for controlled environments and authorized systems only.

Network inspection and scanning tools can generate sensitive information and should be used according to organizational policies and applicable authorization requirements.

Packet captures should also be handled carefully because network traffic may contain sensitive information.

The lab does not implement centralized logging, automated alerting, or automated response.

## Limitations

This is a focused host-level networking lab rather than a production network-monitoring platform.

It does not provide:

- Centralized SIEM integration
- Network intrusion detection
- Automated anomaly detection
- Automated blocking of suspicious sources
- Long-term log management
- Full packet-flow analysis
- Enterprise network telemetry

Those capabilities would require additional architecture and operational controls.

## Key Lessons

Host-level network visibility provides an important foundation for security analysis.

Understanding interfaces, routes, listeners, connections, and packet behavior helps security and cloud professionals understand what is occurring beneath higher-level cloud security controls.

The lab also demonstrates the difference between **observing network activity** and **detecting or responding to a security event**. Visibility is a prerequisite for those capabilities, but it does not by itself constitute detection or response.

## Lab Scope

This repository intentionally remains a focused hands-on networking and packet-analysis lab.

Its purpose is to build practical familiarity with Linux network inspection and packet capture while providing a foundation for understanding broader cloud and enterprise network-security monitoring.
