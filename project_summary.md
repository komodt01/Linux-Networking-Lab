# Project Summary – Linux Networking & Packet Analysis Lab

## Problem

Security and cloud teams need visibility into what is happening at the host network layer.

Without basic network inspection capabilities, it can be difficult to determine which services are listening, which connections are active, how traffic is routed, or what network activity reaches a system.

## Lab Objective

This lab provides hands-on experience using native Linux networking tools to inspect host network state and observe packet activity.

A controlled `nmap` SYN scan is used to generate traffic that can then be examined with `tcpdump`.

## Methodology

The lab uses an Ubuntu EC2 instance to:

- Inspect network interfaces and IP addresses
- Identify listening ports and sockets
- Review established TCP connections
- Examine the host routing table
- Review interface-level traffic statistics
- Capture TCP SYN packets
- Generate controlled scan traffic with `nmap`
- Schedule recurring network snapshots with cron

## Implementation

The `netwatch.sh` script provides repeatable network-state collection.

It uses:

- `ip addr` for interface and address information
- `ss` for listening sockets and established connections
- `ip route` for routing information
- `ip -s link` for interface statistics
- `tcpdump` for packet capture

The captured output can be redirected to a local log file for recurring snapshots.

## Results

The lab demonstrates how host-level tools can provide visibility into:

- Network interfaces
- Listening services
- Active connections
- Routing behavior
- Interface traffic
- TCP SYN activity generated during controlled scanning

The exercise provides practical familiarity with network telemetry available directly from a Linux host.

## Security Relevance

The lab reinforces the distinction between **network visibility, detection, and response**.

Host-level inspection provides visibility into network activity, but additional capabilities are required to centrally collect telemetry, identify suspicious behavior, generate alerts, and take automated response actions.

## Limitations

This lab does not implement:

- Centralized logging
- SIEM integration
- Network intrusion detection
- Automated anomaly detection
- Automated blocking
- Long-term packet analysis
- Enterprise network monitoring

These capabilities would require additional architecture and operational controls.

## Key Lesson

Understanding network behavior at the host layer provides a foundation for broader cloud and enterprise security monitoring.

Security professionals should be able to distinguish between what a system is **configured to allow**, what the host is **currently experiencing**, and what security tooling can **detect and respond to**.
