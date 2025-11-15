# Security Requirements
_Project:_ **Linux Networking Lab**    
_Cloud:_ AWS

## 1. Security Objectives
- Provide safe visibility into network activity  
- Log packet-level activity for security analysis  
- Support detection of unauthorized scans or connections  
- Ensure system remains auditable during experiments  

## 2. Derived Requirements
| Category          | Requirement                                                      |
|-------------------|------------------------------------------------------------------|
| Identity & Access | Use least-privilege user for running captures                    |
| Network Security  | Restrict inbound SSH; permit scanning only in isolated lab scope |
| Monitoring        | Capture packet activity and log hourly network state             |
| Logging           | Store tcpdump summaries and connection logs                      |
| Governance        | Document methods; maintain safe testing boundaries               |

## 3. Controls Implemented
- UFW firewall where applicable  
- Controlled use of `nmap` for testing  
- Hourly cron job logging interfaces, routes, connections, and packet summaries  
- Tcpdump filters configured to capture SYN packets  

## 4. Residual Risks & Mitigations
| Risk                         | Mitigation                                        |
|------------------------------|---------------------------------------------------|
| Packet logs consuming space  | Rotate or clear logs periodically                 |
| Misuse of scanning tools     | Restrict usage to isolated lab environments       |
| Lack of centralized logging  | Forward logs to CloudWatch or SIEM if needed     |
