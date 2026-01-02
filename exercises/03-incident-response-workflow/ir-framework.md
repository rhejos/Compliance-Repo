# Incident Response Framework

This document provides the conceptual framework for incident response. Use this to inform your workflow design.

---

## 1. What Constitutes an Incident?

### Security Incident Definition

A security incident is any event that:
- Threatens the confidentiality, integrity, or availability of information assets
- Violates security policies
- Indicates potential unauthorized access or activity
- Could result in harm to the organization or its stakeholders

### Data Breach vs. Security Incident

```
┌─────────────────────────────────────────────────────────────────┐
│                    ALL SECURITY INCIDENTS                        │
│  ┌───────────────────────────────────────────────────────────┐  │
│  │                     DATA INCIDENTS                         │  │
│  │  ┌─────────────────────────────────────────────────────┐  │  │
│  │  │                   DATA BREACHES                      │  │  │
│  │  │  (Unauthorized access, acquisition, or disclosure    │  │  │
│  │  │   of personal data that compromises security)        │  │  │
│  │  └─────────────────────────────────────────────────────┘  │  │
│  │  (Incidents involving data but not meeting breach def)    │  │
│  └───────────────────────────────────────────────────────────┘  │
│  (Security incidents not involving data - DDoS, defacement)     │
└─────────────────────────────────────────────────────────────────┘
```

### Types of Incidents

| Category | Examples |
|----------|----------|
| **Malware** | Ransomware, viruses, trojans, spyware |
| **Phishing/Social Engineering** | Credential theft, BEC, pretexting |
| **Unauthorized Access** | Account compromise, insider threat, external intrusion |
| **Data Exposure** | Misconfiguration, accidental disclosure, lost device |
| **Denial of Service** | DDoS attacks, resource exhaustion |
| **Physical** | Theft, unauthorized facility access, device tampering |

---

## 2. Incident Response Phases (Detailed)

### Phase 1: Preparation

**Objective:** Be ready before incidents occur.

**Key Activities:**
- Develop and maintain incident response plan
- Define roles and responsibilities
- Establish communication channels and contact lists
- Deploy detection and monitoring tools
- Conduct training and tabletop exercises
- Establish relationships with external resources

**Deliverables:**
- [ ] Incident Response Plan (documented)
- [ ] IR Team roster with contact information
- [ ] Escalation matrix
- [ ] Communication templates
- [ ] Evidence collection procedures
- [ ] Vendor/partner contact list

### Phase 2: Detection and Analysis

**Objective:** Identify incidents and understand scope.

**Detection Sources:**
- Security monitoring (SIEM, IDS/IPS)
- Employee reports
- Customer complaints
- Third-party notifications
- Automated alerts
- Audit findings

**Analysis Steps:**
1. **Validate** - Confirm this is a real incident, not false positive
2. **Classify** - Determine type and severity
3. **Scope** - Identify affected systems, data, users
4. **Document** - Record timeline and initial findings
5. **Notify** - Alert appropriate stakeholders per matrix

**Key Questions:**
- What happened?
- When did it start/occur?
- What systems are affected?
- What data may be involved?
- Is it ongoing or contained?
- What is the potential impact?

### Phase 3: Containment

**Objective:** Limit damage and prevent spread.

**Short-Term Containment:**
- Isolate affected systems from network
- Disable compromised accounts
- Block malicious IPs/domains
- Preserve evidence before changes

**Long-Term Containment:**
- Apply temporary fixes
- Implement additional monitoring
- Prepare for system rebuild if needed
- Maintain business continuity

**Evidence Preservation:**
- Create forensic images before changes
- Preserve logs from all relevant systems
- Document chain of custody
- Capture screenshots and timestamps

### Phase 4: Eradication

**Objective:** Remove the threat completely.

**Activities:**
- Remove malware/unauthorized access
- Patch vulnerabilities exploited
- Reset compromised credentials
- Clean or rebuild affected systems
- Validate removal was successful

**Verification:**
- Scan systems for remaining threats
- Review logs for signs of persistence
- Test security controls
- Confirm no backdoors remain

### Phase 5: Recovery

**Objective:** Restore systems and operations safely.

**Recovery Steps:**
1. Restore from clean backups (if needed)
2. Rebuild systems from known-good images
3. Gradually return to production
4. Implement enhanced monitoring
5. Validate system integrity
6. Return to normal operations

**Monitoring:**
- Enhanced logging and alerting
- Close observation for recurrence
- User activity monitoring
- Regular check-ins with affected areas

### Phase 6: Post-Incident Activities

**Objective:** Learn and improve.

**Post-Incident Review (PIR):**
- What happened and why?
- What was the timeline?
- What worked well in response?
- What could be improved?
- What changes are needed?

**Documentation:**
- Final incident report
- Root cause analysis
- Recommendations
- Updated procedures/controls
- Regulatory reports (if required)

---

## 3. Notification Requirements

### Internal Notifications

| Audience | When to Notify | Information to Share |
|----------|----------------|---------------------|
| **IR Team** | Immediately on detection | Full details |
| **IT Leadership** | Severity 1-2 incidents | Status and impact |
| **Executive Team** | Severity 1 or regulatory | Summary and business impact |
| **Legal** | Potential breach or litigation | Full details |
| **Communications** | Customer/public impact likely | Messaging coordination |
| **HR** | Employee involvement | As appropriate |
| **Board** | Material incidents | Summary per governance |

### External Notifications

| Stakeholder | Trigger | Timeline | Regulatory Basis |
|-------------|---------|----------|------------------|
| **Data Subjects (Customers)** | Personal data breach with high risk | "Without undue delay" | GDPR Art. 34, State laws |
| **Supervisory Authority** | Personal data breach (EU) | 72 hours | GDPR Art. 33 |
| **HHS** | PHI breach (500+) | 60 days | HIPAA |
| **HHS** | PHI breach (<500) | Annual | HIPAA |
| **State AG** | Varies by state | 24 hours - 60 days | State breach laws |
| **Law Enforcement** | Criminal activity | As appropriate | N/A |
| **Cyber Insurance** | Covered event | Per policy (often 24-48 hours) | Policy terms |
| **SEC** | Material incident (public companies) | 4 business days | SEC rules |

---

## 4. Decision Trees

### Breach Determination

```
INCIDENT IDENTIFIED
        │
        ▼
┌───────────────────────────────┐
│ Does it involve personal data? │
└───────────────────────────────┘
        │
    YES │           NO → Security incident,
        │                not data breach
        ▼
┌───────────────────────────────────────┐
│ Was there unauthorized access,        │
│ acquisition, or disclosure?           │
└───────────────────────────────────────┘
        │
    YES │           NO → Data incident,
        │                likely not breach
        ▼
┌───────────────────────────────────────┐
│ Does it compromise security or        │
│ create risk of harm?                  │
└───────────────────────────────────────┘
        │
    YES │           NO → May not be
        │                notifiable breach
        ▼
┌───────────────────────────────────────┐
│ PROBABLE DATA BREACH                   │
│ Conduct full breach assessment        │
│ Engage Legal for notification analysis│
└───────────────────────────────────────┘
```

### Notification Decision

```
BREACH CONFIRMED
        │
        ▼
┌───────────────────────────────────────┐
│ What data types are involved?         │
├───────────────────────────────────────┤
│ • PII (names, contact info)           │
│ • Sensitive PII (SSN, financial)      │
│ • PHI (health information)            │
│ • Financial (payment cards)           │
└───────────────────────────────────────┘
        │
        ▼
┌───────────────────────────────────────┐
│ What jurisdictions apply?             │
├───────────────────────────────────────┤
│ • Affected individuals' locations     │
│ • Organization's locations            │
│ • Data storage locations              │
└───────────────────────────────────────┘
        │
        ▼
┌───────────────────────────────────────┐
│ What are the notification triggers?   │
├───────────────────────────────────────┤
│ • Number of affected individuals      │
│ • Data types involved                 │
│ • Risk of harm                        │
│ • Encryption status                   │
└───────────────────────────────────────┘
        │
        ▼
┌───────────────────────────────────────┐
│ NOTIFICATION REQUIREMENTS MATRIX      │
│ Work with Legal to determine:         │
│ • Who must be notified                │
│ • Timeline for each notification      │
│ • Content requirements                │
└───────────────────────────────────────┘
```

---

## 5. Communication Templates

### Internal Status Update

```
INCIDENT STATUS UPDATE
======================
Incident ID: [IR-YYYY-###]
Status: [Active/Contained/Resolved]
Severity: [P1/P2/P3/P4]
Last Updated: [Date/Time]

CURRENT STATUS:
[Brief description of current state]

TIMELINE:
[Time] - [Event]
[Time] - [Event]

IMPACT:
• Systems: [Affected systems]
• Users: [Number/type affected]
• Data: [Data types potentially involved]

ACTIONS TAKEN:
• [Action 1]
• [Action 2]

NEXT STEPS:
• [Planned action 1]
• [Planned action 2]

NEXT UPDATE: [Time]
```

### Customer Notification Template

```
Subject: Important Security Notice from [Company]

Dear [Customer Name],

We are writing to inform you of a security incident that may affect your data.

WHAT HAPPENED:
[Clear, factual description of the incident]

WHAT INFORMATION WAS INVOLVED:
[Specific data types that may have been affected]

WHAT WE ARE DOING:
[Steps taken to address the incident and protect customers]

WHAT YOU CAN DO:
[Recommended actions for customers]

FOR MORE INFORMATION:
[Contact information, FAQ link, dedicated support line]

We take the security of your information seriously and sincerely apologize
for any concern this may cause.

Sincerely,
[Name]
[Title]
```

---

## 6. Key Metrics

| Metric | Definition | Target |
|--------|------------|--------|
| **Mean Time to Detect (MTTD)** | Time from incident start to detection | < 24 hours |
| **Mean Time to Respond (MTTR)** | Time from detection to initial response | < 1 hour (P1), < 4 hours (P2) |
| **Mean Time to Contain (MTTC)** | Time from detection to containment | < 4 hours (P1) |
| **Mean Time to Resolve** | Time from detection to full resolution | Varies by severity |
| **Notification Compliance** | % of notifications within required timeline | 100% |

---

[← Back to Exercise Overview](README.md)
