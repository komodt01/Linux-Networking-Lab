# Risks and Mitigations

| Risk                     | Impact                       | Likelihood | Mitigation                                         |
|--------------------------|------------------------------|------------|----------------------------------------------------|
| Misconfigured IAM policy | Privilege escalation         | Medium     | Enforce least privilege + validate IAM policies    |
| Missing audit logs       | Reduced forensic visibility  | Low        | Enable CloudTrail, SIEM forwarding, or syslog      |
| Cost overrun             | Unexpected cloud spend       | Low        | Use budgets, cost alerts, and teardown automation  |
