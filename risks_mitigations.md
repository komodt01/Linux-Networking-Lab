# Risks and Mitigations

| Risk | Potential Impact | Mitigation |
|---|---|---|
| Excessive packet capture | Sensitive information may be collected unnecessarily | Limit capture scope, packet count, and interfaces to what the exercise requires |
| Unmanaged log growth | Local logs may consume available disk space | Apply appropriate log rotation and retention practices |
| Unauthorized network scanning | Scanning could affect systems outside the intended test scope | Restrict `nmap` activity to systems explicitly authorized for testing |
| Incomplete host visibility | Important network activity may not be visible through local tools alone | Combine host-level inspection with appropriate network and centralized monitoring controls |
| No centralized detection | Suspicious activity may be observed but not correlated or alerted on | Forward relevant telemetry to centralized monitoring or SIEM platforms when required |
| False interpretation of network activity | Normal traffic may be mistaken for malicious behavior | Establish a baseline and correlate network observations with application and system context |
| Interface-specific assumptions | Network visibility may be incomplete if the expected interface differs | Use interface-independent capture where practical and verify the environment before collection |
| Packet-analysis data exposure | Captured traffic may contain sensitive information | Protect captured data and retain only information required for the exercise |

## Residual Risk

This lab provides a limited view of network activity from a single Linux host.

It does not provide complete network visibility or determine whether observed activity is malicious. Production environments require additional controls for centralized collection, detection, alerting, investigation, and response.

## Security Principle

> Network visibility is valuable only when the collected information is protected, interpreted in context, and connected to appropriate detection and response processes.
