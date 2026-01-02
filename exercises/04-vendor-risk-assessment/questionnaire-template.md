# Vendor Security Questionnaire Template

This questionnaire is used to assess vendor security posture. Customize based on risk tier and data types.

---

## Instructions for Vendors

Please complete this questionnaire accurately. For each question:
- Answer Yes, No, Partial, or N/A
- Provide additional details or evidence where requested
- If N/A, explain why the question doesn't apply

---

## Section 1: Organization & Compliance (15 questions)

### Certifications & Audits

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 1.1 | Do you have a current SOC 2 Type II report? | | |
| 1.2 | Do you have ISO 27001 certification? | | |
| 1.3 | Are there any other security certifications (PCI-DSS, FedRAMP, etc.)? | | |
| 1.4 | Can you provide a copy of your most recent SOC 2 report under NDA? | | |
| 1.5 | Were there any exceptions or findings in your most recent audit? | | |

### Governance

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 1.6 | Do you have a dedicated security team or officer? | | |
| 1.7 | Do you have documented information security policies? | | |
| 1.8 | How often are security policies reviewed and updated? | | |
| 1.9 | Do you conduct security awareness training for all employees? | | |
| 1.10 | How often is security training conducted? | | |

### Insurance & Liability

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 1.11 | Do you maintain cyber liability insurance? | | |
| 1.12 | What is your coverage limit? | | |
| 1.13 | Can you provide a certificate of insurance? | | |
| 1.14 | Do you have errors & omissions insurance? | | |
| 1.15 | Have you had any insurance claims related to security incidents in the past 3 years? | | |

---

## Section 2: Access Control (15 questions)

### Authentication

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 2.1 | Do you require multi-factor authentication (MFA) for all administrative access? | | |
| 2.2 | Do you support MFA for customer accounts? | | |
| 2.3 | What authentication methods are supported? | | |
| 2.4 | Do you enforce password complexity requirements? | | |
| 2.5 | What is your password rotation policy? | | |

### Authorization

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 2.6 | Do you implement role-based access control (RBAC)? | | |
| 2.7 | Do you follow the principle of least privilege? | | |
| 2.8 | How often do you review user access rights? | | |
| 2.9 | Do you have a process for timely deprovisioning when employees leave? | | |
| 2.10 | What is your deprovisioning timeline? | | |

### Administrative Access

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 2.11 | Who has access to customer data? | | |
| 2.12 | How is privileged access managed and monitored? | | |
| 2.13 | Do you use a privileged access management (PAM) solution? | | |
| 2.14 | Are administrative actions logged and auditable? | | |
| 2.15 | Do employees need approval to access customer data? | | |

---

## Section 3: Data Protection (20 questions)

### Encryption

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 3.1 | Do you encrypt data in transit (TLS 1.2+)? | | |
| 3.2 | Do you encrypt data at rest? | | |
| 3.3 | What encryption algorithms/standards are used? | | |
| 3.4 | How are encryption keys managed? | | |
| 3.5 | Are encryption keys stored separately from encrypted data? | | |

### Data Handling

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 3.6 | Do you have a data classification policy? | | |
| 3.7 | Where is customer data stored (geographic location)? | | |
| 3.8 | Can you guarantee data residency in specific regions? | | |
| 3.9 | Do you have a data retention and deletion policy? | | |
| 3.10 | Can you delete customer data upon request? What is the timeline? | | |

### Data Segregation

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 3.11 | Is customer data logically segregated from other customers? | | |
| 3.12 | Do you maintain separate production and non-production environments? | | |
| 3.13 | Is production data ever used in non-production environments? | | |
| 3.14 | How is test data managed? | | |
| 3.15 | Do you use customer data for product development or analytics? | | |

### Backups

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 3.16 | What is your backup frequency? | | |
| 3.17 | Where are backups stored? | | |
| 3.18 | Are backups encrypted? | | |
| 3.19 | How long are backups retained? | | |
| 3.20 | How often are backup restorations tested? | | |

---

## Section 4: Security Operations (15 questions)

### Vulnerability Management

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 4.1 | Do you conduct regular vulnerability scanning? | | |
| 4.2 | How often are vulnerability scans performed? | | |
| 4.3 | Do you conduct penetration testing? | | |
| 4.4 | How often is penetration testing performed? | | |
| 4.5 | What is your timeline for remediating critical vulnerabilities? | | |

### Change Management

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 4.6 | Do you have a formal change management process? | | |
| 4.7 | Are changes tested before production deployment? | | |
| 4.8 | Do you maintain segregation of duties in change management? | | |
| 4.9 | Are changes logged and auditable? | | |
| 4.10 | How are emergency changes handled? | | |

### Monitoring & Logging

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 4.11 | Do you have centralized logging? | | |
| 4.12 | What events are logged? | | |
| 4.13 | How long are logs retained? | | |
| 4.14 | Do you have 24/7 security monitoring? | | |
| 4.15 | Do you use a SIEM or equivalent? | | |

---

## Section 5: Incident Response (10 questions)

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 5.1 | Do you have a documented incident response plan? | | |
| 5.2 | Do you have a dedicated incident response team? | | |
| 5.3 | How often is the incident response plan tested (tabletop exercises)? | | |
| 5.4 | What is your commitment for breach notification to customers? | | |
| 5.5 | What is your notification timeline for security incidents? | | |
| 5.6 | Can you provide details about any security incidents in the past 3 years? | | |
| 5.7 | Do you have retainer agreements with forensic investigators? | | |
| 5.8 | Will you provide post-incident reports to affected customers? | | |
| 5.9 | How do you communicate during active incidents? | | |
| 5.10 | Do you notify customers of incidents affecting your environment even if their data wasn't affected? | | |

---

## Section 6: Business Continuity (10 questions)

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 6.1 | Do you have a documented business continuity plan? | | |
| 6.2 | Do you have a documented disaster recovery plan? | | |
| 6.3 | What is your Recovery Time Objective (RTO)? | | |
| 6.4 | What is your Recovery Point Objective (RPO)? | | |
| 6.5 | How often are BC/DR plans tested? | | |
| 6.6 | Do you have redundant data centers/availability zones? | | |
| 6.7 | What are your SLA commitments for uptime? | | |
| 6.8 | Have you experienced any significant outages in the past 12 months? | | |
| 6.9 | How do you communicate service disruptions to customers? | | |
| 6.10 | Do you have a status page? | | |

---

## Section 7: Subprocessors & Third Parties (10 questions)

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 7.1 | Do you use subprocessors to provide your services? | | |
| 7.2 | Can you provide a list of subprocessors who may access customer data? | | |
| 7.3 | How do you assess the security of your subprocessors? | | |
| 7.4 | Do subprocessors undergo the same security requirements as your organization? | | |
| 7.5 | How are customers notified of subprocessor changes? | | |
| 7.6 | What cloud infrastructure providers do you use? | | |
| 7.7 | Do you have contractual security requirements with your subprocessors? | | |
| 7.8 | Do any subprocessors have access to unencrypted customer data? | | |
| 7.9 | Where are your subprocessors located (geographic)? | | |
| 7.10 | Can customers opt-out of specific subprocessors? | | |

---

## Section 8: Privacy (10 questions)

| # | Question | Response | Evidence/Notes |
|---|----------|----------|----------------|
| 8.1 | Do you have a designated Data Protection Officer (DPO)? | | |
| 8.2 | Are you GDPR compliant? | | |
| 8.3 | Are you CCPA compliant? | | |
| 8.4 | Can you support data subject access requests? | | |
| 8.5 | Can you support data deletion requests? | | |
| 8.6 | Do you process personal data only as instructed by customers (no secondary use)? | | |
| 8.7 | Are you willing to sign a Data Processing Agreement (DPA)? | | |
| 8.8 | Do you transfer personal data internationally? If so, what safeguards are in place? | | |
| 8.9 | How do you handle personal data of EU residents? | | |
| 8.10 | Do you use customer data for AI/ML training? | | |

---

## Scoring Summary (To be completed by assessor)

| Section | Max Score | Actual Score | % |
|---------|-----------|--------------|---|
| 1. Organization & Compliance | 45 | | |
| 2. Access Control | 45 | | |
| 3. Data Protection | 60 | | |
| 4. Security Operations | 45 | | |
| 5. Incident Response | 30 | | |
| 6. Business Continuity | 30 | | |
| 7. Subprocessors | 30 | | |
| 8. Privacy | 30 | | |
| **TOTAL** | **315** | | |

---

[← Back to Exercise Overview](README.md)
