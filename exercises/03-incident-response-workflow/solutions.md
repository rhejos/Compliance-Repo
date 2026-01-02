# Solutions and Explanations

Compare your incident responses to these solutions.

---

## Workflow Design Solution

### Key Elements for TechFlow's IR Workflow

**Detection Sources:**
1. Security monitoring (SIEM alerts, endpoint detection)
2. Employee reports (email to security@, Slack #security-help)
3. Customer reports
4. Third-party notifications (vendors, researchers, partners)
5. Automated scanning (vulnerability scans, configuration checks)

**Initial Response Team:**
- Primary: Security Engineer (on-call rotation)
- Escalation: Security Lead → CCO → CEO
- After-hours: PagerDuty integration

**Severity Criteria:**

| Severity | Criteria |
|----------|----------|
| **P1** | Active attack, ransomware, breach of PII/PHI, production down, regulatory notification likely |
| **P2** | Confirmed compromise, data exposure possible, significant system impact |
| **P3** | Suspicious activity, contained threat, policy violation |
| **P4** | False positive investigation, minor anomaly, single system |

---

## Scenario 1: Phishing Success

### Solution

**Incident Type:** Account Compromise / Phishing

**Severity Level:** **P2 - HIGH**

**Reasoning:**
- Credentials confirmed compromised
- Same password used across systems (email + Salesforce)
- Access to customer contact information
- Unknown number of other affected employees
- 45-minute window for attacker action

**Immediate Actions (first 30 minutes):**
1. Force password reset on the employee's Microsoft account immediately
2. Revoke all active sessions for the account
3. Force password reset on Salesforce account
4. Check email for any sent messages since compromise
5. Initiate organization-wide search for who else received the phishing email

**Who to Notify Immediately:**
- Security team lead
- IT support (for account actions)
- Employee's manager (awareness, not investigation)

**Containment Steps:**
1. Reset all passwords for the affected user across all systems
2. Enable MFA if not already enabled
3. Review email rules for any unauthorized forwarding rules
4. Review Salesforce access logs for suspicious activity
5. Block the phishing domain at email gateway and firewall
6. Send warning to all employees about the phishing campaign

**Investigation Questions:**
1. How many employees received this email?
2. How many clicked and entered credentials?
3. What actions were taken with the compromised credentials (email sent, data accessed)?
4. Are there any signs of lateral movement?
5. What customer data was potentially accessed?

**Potential Notification Requirements:**
- If customer data was accessed/exfiltrated: May trigger GDPR/state breach notification
- If emails were sent impersonating the employee: Notify recipients
- Currently: Continue investigation before notification decision

### Key Lessons
- The password reuse is the critical escalation factor
- 45 minutes is enough time for significant attacker activity
- The campaign may be broader than one employee
- MFA would have prevented this

---

## Scenario 2: Ransomware Detection

### Solution

**Incident Type:** Ransomware / Malware

**Severity Level:** **P1 - CRITICAL**

**Reasoning:**
- Ransomware is actively encrypting files
- Multiple systems affected and spreading
- Weekend/early morning means delayed response
- CI/CD credentials at risk (supply chain implications)
- Even dev environment compromise is serious

**Immediate Actions (within first 15 minutes):**
1. Isolate the entire development network segment from production
2. Disconnect affected servers from network (pull network cables if needed)
3. Alert the on-call security engineer (via PagerDuty)
4. Preserve current state before any recovery actions
5. Check if production environment shows any signs of compromise

**Who to Wake Up/Call:**
- On-call Security Engineer (immediate)
- Security Lead (immediate)
- IT Infrastructure Lead (within 15 min)
- CCO (within 30 min)
- CEO (within 1 hour)
- Legal counsel (within 1 hour)

**Critical Questions to Answer:**
1. Is production affected or at risk?
2. How did the ransomware enter (attack vector)?
3. What is the scope of encrypted systems?
4. Do we have clean backups from before the infection?
5. Have CI/CD credentials been used for any malicious activity?
6. Has source code been exfiltrated?

**Containment Priority Actions:**
1. Network isolation of affected segment
2. Rotate ALL credentials stored on affected systems (CI/CD, API keys, etc.)
3. Disable any automated deployments
4. Check production for indicators of compromise
5. Engage incident response retainer if available

**Communication Plan:**
- Internal: War room established, hourly updates to leadership
- External: Prepare holding statement (do not communicate externally yet)
- Customers: Not yet - assess impact first

### Key Lessons
- Weekend timing tests readiness and on-call procedures
- Dev environment can be path to production
- Credential rotation is critical containment step
- "Not production data" doesn't mean low severity

---

## Scenario 3: Cloud Misconfiguration Discovery

### Solution

**Incident Type:** Data Exposure / Potential Breach

**Severity Level:** **P1 - CRITICAL**

**Reasoning:**
- Confirmed unauthorized access (3 IP addresses accessed bucket)
- 15,000 customer records potentially exposed
- Personal data involved (user information)
- 3-week exposure window
- Regulatory notification likely required (GDPR, CCPA, state laws)

**Immediate Actions:**
1. Secure the S3 bucket immediately (make private)
2. Preserve access logs before any changes
3. Notify Legal immediately (breach notification clock may be ticking)
4. Engage IR team for full investigation
5. Thank the security researcher and acknowledge receipt

**Investigation Steps:**
1. Analyze CloudTrail logs for all access to the bucket
2. Determine exactly what data was in the exposed archives
3. Identify the 3 IP addresses and their geographic locations
4. Determine how the misconfiguration occurred
5. Check for other misconfigured buckets
6. Assess if data was actually downloaded vs just accessed

**Key Questions for Breach Assessment:**
1. Was the data actually acquired by unauthorized parties?
2. What specific data elements were exposed (PII categories)?
3. Were EU residents' data included? (GDPR 72-hour requirement)
4. What states are affected customers in? (state notification laws)
5. Is there evidence of malicious intent vs automated scanning?

**Notification Considerations:**
- **Regulators:**
  - GDPR: 72 hours to supervisory authority (if EU data)
  - State AGs: Varies (CA, NY may require notification)
- **Customers:**
  - Required if personal data breach with risk to individuals
  - "Without undue delay" under GDPR
- **Timeline:**
  - Begin notification planning immediately
  - Legal to make final determination within 48 hours

**Legal Involvement:**
- Engage immediately - breach determination and notification decisions
- Consider attorney-client privilege for investigation documents
- Prepare notification templates for review
- Assess contractual notification requirements

### Key Lessons
- Security researchers can find issues before attackers (or after)
- 3-week exposure requires careful notification timeline analysis
- Unknown access by 3 IPs makes breach presumption more likely
- Backup data is still regulated data

---

## Scenario 4: Insider Access Concern

### Solution

**Incident Type:** Insider Threat / Potential Data Theft

**Severity Level:** **P2 - HIGH**

**Reasoning:**
- Potential theft of intellectual property
- Employee on notice period (elevated risk)
- Large data download confirmed
- Access to sensitive product information
- No USB monitoring limits visibility

**Immediate Actions:**
1. Preserve all access logs for the employee (before they can be altered)
2. Do NOT confront the employee yet
3. Notify HR and Legal before taking action
4. Image the employee's workstation (if possible without alerting)
5. Review what specific files were downloaded

**Stakeholders to Involve:**
- HR Director (employee relations, legal obligations)
- Legal Counsel (employment law, evidence handling)
- Security Lead (investigation)
- Employee's VP (business context, data sensitivity)

**Sensitive Considerations:**
1. Employee rights and privacy - cannot monitor without proper basis
2. False accusation risk - downloads might be legitimate
3. Accelerated departure - if confronted, employee may immediately leave
4. Evidence preservation - need to maintain chain of custody
5. Retaliation concerns - must handle carefully

**Evidence Preservation:**
1. Forensic image of workstation (if possible)
2. Complete access logs for all systems
3. Email logs (inbound/outbound, especially personal email)
4. Badge access logs (late nights corroborate story)
5. Cloud storage logs (personal Dropbox, Drive access from corp network)

**Potential Outcomes and Next Steps:**
1. If data theft confirmed: Consider accelerated termination, legal action, potential law enforcement
2. If legitimate activity: Document investigation, continue normal departure
3. Regardless: Review access controls for employees on notice period

### Key Lessons
- HR and Legal must be involved before action
- Resignation period is highest risk for data theft
- Lack of USB monitoring creates visibility gap
- Balance employee rights with protection of company data

---

## Scenario 5: Third-Party Breach Notification

### Solution

**Incident Type:** Third-Party/Vendor Data Breach

**Severity Level:** **P2 - HIGH**

**Reasoning:**
- Highly sensitive data (SSN, bank accounts)
- All 450 employees affected
- Notification delayed (6 weeks old)
- TechFlow didn't cause breach but must respond
- Employee harm possible (identity theft)

**Immediate Questions for Vendor:**
1. What specific TechFlow employee data was exposed?
2. Was the data actually accessed/exfiltrated or just exposed?
3. When exactly did the breach occur and when was it discovered?
4. What is the vendor doing to remediate and prevent recurrence?
5. What notification has the vendor already provided?
6. Are they offering credit monitoring to affected individuals?
7. Do they have cyber insurance covering this incident?

**Internal Actions:**
1. Engage Legal immediately
2. Assess TechFlow's own notification obligations
3. Prepare employee communication
4. Arrange credit monitoring for employees
5. Review vendor contract for breach notification terms
6. Document timeline for regulatory purposes

**Employee Notification:**
- **Timeline:** Within 24-48 hours of confirming details
- **Content:** What happened, what data exposed, what we're doing, what they should do
- **Support to offer:**
  - 2 years credit monitoring (at TechFlow's expense if vendor won't cover)
  - Identity theft protection service
  - FAQ and support resources
  - HR contact for questions

**Regulatory Considerations:**
1. TechFlow may have independent notification obligations as the data controller
2. State breach notification laws vary - some require TechFlow to notify directly
3. 6-week delay is concerning - timeline documentation important
4. May need to notify state AGs even if vendor already has

**Vendor Relationship:**
1. Review contract for breach notification timeline (likely violated)
2. Document contract violation for potential claims
3. Assess vendor's ongoing security posture
4. Consider vendor replacement or enhanced controls
5. Review all other vendors for similar risk

### Key Lessons
- Third-party breaches still require TechFlow response
- Delayed vendor notification is a red flag
- TechFlow may have independent notification obligations
- Employee data requires employee care
- Vendor contracts should specify breach notification requirements

---

## Summary

| Scenario | Type | Severity | Key Notification | Timeline |
|----------|------|----------|------------------|----------|
| 1. Phishing | Account Compromise | P2 - High | TBD based on data access | Investigation first |
| 2. Ransomware | Malware/Ransomware | P1 - Critical | Internal immediately | Immediate response |
| 3. Cloud Exposure | Data Breach | P1 - Critical | Regulators + Customers | 72 hrs (GDPR), varies by state |
| 4. Insider Threat | Data Theft | P2 - High | HR/Legal | Before any employee action |
| 5. Third-Party | Vendor Breach | P2 - High | Employees | Within 24-48 hours |

---

## Key Takeaways

1. **Severity is about impact, not intent** - Accidents can be P1 incidents
2. **Time is critical** - Early actions in ransomware can mean the difference between containment and catastrophe
3. **Legal should be early and often** - Breach notification decisions require legal input
4. **Document everything** - The timeline becomes critical for regulatory compliance
5. **Third-party incidents require your response** - You can't outsource responsibility
6. **HR matters in insider cases** - Employment law considerations are paramount
7. **Containment before investigation** - Stop the bleeding first

---

[← Back to Scenarios](incident-scenarios.md) | [← Back to Exercise Overview](README.md)
