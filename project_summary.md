# Security Requirements

**Project:** Linux Networking & Packet Analysis Lab  
**Environment:** AWS EC2 / Ubuntu

## 1. Security Objectives

The lab should provide safe, repeatable visibility into network activity occurring at the Linux host layer.

The primary objectives are to:

- Identify network interfaces and addresses
- Identify listening ports and services
- Identify established network connections
- Understand host routing information
- Capture selected network packets for analysis
- Generate controlled network activity for observation
- Support recurring network-state collection

## 2. Derived Requirements

| Category | Requirement |
|---|---|
| Network Visibility | The lab should provide visibility into interfaces, addresses, listeners, connections, and routes. |
| Packet Analysis | The lab should support packet capture for authorized analysis of network activity. |
| Controlled Testing | Network scanning should be performed only against systems where testing is authorized. |
| Monitoring | Network-state information should be collected in a repeatable manner. |
| Logging | Snapshot output should be capable of being written to a local log file. |
| Operational Safety | Packet capture and scanning should remain limited to the defined lab environment. |

## 3. Controls Implemented

The lab implements the following controls and activities:

- Linux network inspection using `ip`
- Listening-port and connection inspection using `ss`
- Routing-table inspection using `ip route`
- Interface statistics using `ip -s link`
- TCP SYN packet capture using `tcpdump`
- Controlled SYN scanning using `nmap`
- Repeatable network snapshots using `netwatch.sh`
- Optional recurring execution through cron

## 4. Packet Capture Requirements

Packet capture should:

- Be limited to authorized systems and interfaces
- Capture only the traffic needed for the exercise
- Avoid unnecessary collection of sensitive traffic
- Use packet-count or other appropriate limits for a small lab
- Be treated as potentially sensitive security data

The lab uses a limited five-packet TCP SYN capture for the network-observation exercise.

## 5. Scanning Requirements

`nmap` scanning should be limited to:

- The lab system itself
- Systems explicitly authorized for testing
- Controlled test scenarios

The purpose of scanning is to generate observable network activity for analysis, not to perform unauthorized reconnaissance.

## 6. Logging Requirements

Network snapshots should capture sufficient information to support basic analysis, including:

- Interface information
- Listening services
- Established connections
- Routing information
- Interface statistics
- Selected packet activity

If recurring logging is enabled, log files should be managed to prevent unnecessary disk consumption.

## 7. Monitoring Limitations

The lab provides host-level visibility but does not require:

- Centralized log collection
- SIEM integration
- Network intrusion detection
- Automated alerting
- Automated response
- Long-term packet retention

Those capabilities are outside the scope of this lab.

## 8. Residual Risks

| Risk | Mitigation |
|---|---|
| Packet captures contain sensitive information | Limit capture scope and retain only what is required |
| Log files consume disk space | Use appropriate log rotation or retention |
| Scanning is performed against unauthorized systems | Restrict testing to explicitly authorized targets |
| Host-level visibility is incomplete | Use centralized monitoring and network-security controls in production |
| Network activity is observed but not automatically detected | Integrate telemetry with appropriate detection and alerting systems when required |

## 9. Security Principle

> Network visibility is a foundational security capability, but visibility alone does not provide detection or response.

Production environments should combine host-level network visibility with centralized monitoring, identity controls, network segmentation, detection capabilities, and appropriate response processes.
