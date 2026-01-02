# Control-to-Evidence Mapping Guide

This guide shows what evidence is typically needed for common SOC 2 controls.

---

## Evidence Mapping Template

For each control, identify:
1. What the control requires
2. What evidence demonstrates the control works
3. Where to get that evidence
4. How often it needs to be collected

---

## Access Control Evidence

### AC-1: User Access Provisioning

**Control Statement:**
Access is authorized and provisioned based on job responsibilities.

| Evidence Type | Description | Source | Frequency |
|---------------|-------------|--------|-----------|
| Access request tickets | Sample of new user requests with approvals | Ticketing system | Per audit |
| User provisioning procedure | Documented process | Policy repository | Annual |
| Approval evidence | Manager/owner approvals in tickets | Ticketing system | Per audit |
| Access request form | Template showing required fields | Policy repository | Annual |

**Sample Selection:**
- Pull population of new users during audit period
- Sample 25 or 10% (whichever is smaller)
- Verify each has documented approval

---

### AC-2: User Access Termination

**Control Statement:**
Access is removed timely when no longer required.

| Evidence Type | Description | Source | Frequency |
|---------------|-------------|--------|-----------|
| Termination list | All terminations during period | HR system | Per audit |
| Access removal evidence | Tickets showing removal | Ticketing system | Per audit |
| Timeliness evidence | Comparison of term date to removal date | HR + IT systems | Per audit |
| Termination procedure | Documented process | Policy repository | Annual |

**Key Metric:**
- Calculate average days from termination to access removal
- SOC 2 expectation: Same day or next business day

---

### AC-3: Periodic Access Reviews

**Control Statement:**
Access is reviewed periodically to ensure appropriateness.

| Evidence Type | Description | Source | Frequency |
|---------------|-------------|--------|-----------|
| Access review schedule | When reviews are conducted | Compliance calendar | Annual |
| Access review report | User list provided to reviewers | IAM system export | Per review |
| Reviewer sign-off | Evidence of review completion | Email/ticket | Per review |
| Actions taken | Removed/modified access based on review | Change tickets | Per review |
| Access review procedure | Documented process | Policy repository | Annual |

**Sample Selection:**
- Provide evidence from each quarterly review
- Show population reviewed and decisions made

---

### AC-4: Multi-Factor Authentication

**Control Statement:**
MFA is required for remote/administrative access.

| Evidence Type | Description | Source | Frequency |
|---------------|-------------|--------|-----------|
| MFA policy/configuration | System settings requiring MFA | IdP admin console | Per audit |
| MFA enrollment report | Users enrolled in MFA | IdP system | Per audit |
| Gap analysis | Any users without MFA and justification | IdP system | Per audit |
| MFA technology documentation | What MFA method is used | Vendor docs | Annual |

**Screenshot Requirements:**
- Admin console showing MFA enforcement
- Settings showing where MFA is required
- Exception list (if any) with justification

---

## Change Management Evidence

### CM-1: Change Request and Approval

**Control Statement:**
Changes to production are authorized before implementation.

| Evidence Type | Description | Source | Frequency |
|---------------|-------------|--------|-----------|
| Change management policy | Documented process | Policy repository | Annual |
| Change request population | All changes during period | Change system | Per audit |
| Sample change tickets | Complete tickets with approvals | Change system | Per audit |
| Approval evidence | Sign-off before implementation | Tickets/email | Per audit |

**Sample Selection:**
- Pull all production changes during period
- Sample 25 or 10%
- Verify each has documented approval before deployment

---

### CM-2: Change Testing

**Control Statement:**
Changes are tested before deployment to production.

| Evidence Type | Description | Source | Frequency |
|---------------|-------------|--------|-----------|
| Testing requirements | Documented testing expectations | Policy | Annual |
| Test evidence in tickets | QA sign-off, test results | Change tickets | Per audit |
| Test environment | Evidence of non-prod testing | System screenshots | Per audit |
| Deployment logs | Showing staging before prod | CI/CD system | Per audit |

---

### CM-3: Segregation of Duties

**Control Statement:**
The person deploying changes is different from the person developing.

| Evidence Type | Description | Source | Frequency |
|---------------|-------------|--------|-----------|
| Deployment access list | Who can deploy to production | CI/CD system | Per audit |
| Sample changes | Different requestor vs. deployer | Change tickets | Per audit |
| SoD policy | Documented requirement | Policy repository | Annual |
| SoD violations | Any exceptions and approvals | Exception log | Per audit |

---

## Security Operations Evidence

### SO-1: Vulnerability Management

**Control Statement:**
Vulnerabilities are identified and remediated timely.

| Evidence Type | Description | Source | Frequency |
|---------------|-------------|--------|-----------|
| Vulnerability scanning policy | Frequency, scope, tools | Policy repository | Annual |
| Scan schedule/calendar | When scans are performed | Scanning tool | Per audit |
| Sample scan reports | Showing scans were run | Scanning tool | Per audit |
| Remediation evidence | Critical vulns addressed | Ticketing system | Per audit |
| Remediation SLAs | Defined timelines | Policy | Annual |

**Period Coverage:**
- Show scans from throughout the audit period
- Demonstrate continuous operation

---

### SO-2: Penetration Testing

**Control Statement:**
Annual penetration testing is performed.

| Evidence Type | Description | Source | Frequency |
|---------------|-------------|--------|-----------|
| Pen test policy | Frequency, scope requirements | Policy repository | Annual |
| Pen test report | Full report from tester | Third-party vendor | Annual |
| Remediation plan | Actions for critical findings | Internal tracking | Post-test |
| Remediation evidence | Fixes implemented | Ticketing system | Post-test |
| Tester qualifications | Independence, certifications | Vendor docs | Annual |

---

### SO-3: Security Monitoring

**Control Statement:**
Security events are monitored and investigated.

| Evidence Type | Description | Source | Frequency |
|---------------|-------------|--------|-----------|
| Monitoring configuration | What is monitored, alerting rules | SIEM console | Per audit |
| Sample alerts | Alerts generated and reviewed | SIEM/ticketing | Per audit |
| Investigation evidence | Follow-up on sample alerts | Tickets/notes | Per audit |
| Log retention configuration | Retention period settings | SIEM console | Per audit |

---

## Incident Response Evidence

### IR-1: Incident Response Plan

**Control Statement:**
Documented incident response procedures exist.

| Evidence Type | Description | Source | Frequency |
|---------------|-------------|--------|-----------|
| IR plan document | Full incident response plan | Policy repository | Annual |
| Contact lists | Current team contacts | IR plan/separate doc | Annual |
| Escalation procedures | Documented escalation paths | IR plan | Annual |
| Communication templates | Prepared notifications | IR plan | Annual |
| Plan approval | Management sign-off | Document metadata | Annual |

---

### IR-2: Incident Response Testing

**Control Statement:**
IR plan is tested at least annually.

| Evidence Type | Description | Source | Frequency |
|---------------|-------------|--------|-----------|
| Test schedule | When tests are planned | Compliance calendar | Annual |
| Test evidence | Tabletop exercise materials | Meeting notes | Annual |
| Participant list | Who attended | Sign-in sheet | Per test |
| Lessons learned | Improvements identified | Post-test report | Per test |
| Plan updates | Changes made based on test | Document history | Post-test |

---

## Evidence Collection Tips

### Organization Best Practices

```
audit-evidence/
├── 2024-soc2/
│   ├── 01-access-control/
│   │   ├── AC-1-provisioning/
│   │   │   ├── policy.pdf
│   │   │   ├── sample-tickets/
│   │   │   └── evidence-index.xlsx
│   │   ├── AC-2-termination/
│   │   └── AC-3-reviews/
│   ├── 02-change-management/
│   ├── 03-security-operations/
│   └── evidence-tracker.xlsx
```

### Evidence Index Template

| Control ID | Control Name | Evidence Description | File Name | Date | Status |
|------------|--------------|---------------------|-----------|------|--------|
| AC-1 | Provisioning | Sample tickets (25) | AC1-tickets.zip | 2024-01-15 | Complete |
| AC-1 | Provisioning | Provisioning policy | AC1-policy.pdf | 2024-01-15 | Complete |

### Screenshot Best Practices

- Include full URL/system name
- Show timestamp
- Highlight relevant settings
- Include date captured in filename
- Add brief annotation if needed

---

[← Back to Exercise Overview](README.md)
