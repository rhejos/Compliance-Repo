# Vendor Risk Assessment Framework

This framework provides the methodology for assessing and scoring vendor risk.

---

## 1. Vendor Tiering Criteria

### Step 1: Determine Inherent Risk Tier

Evaluate these factors to assign an initial risk tier:

| Factor | Critical | High | Medium | Low |
|--------|----------|------|--------|-----|
| **Data Access** | PII, PHI, financial, credentials | Business data, analytics | Metadata, logs | No data access |
| **Data Volume** | 100K+ records | 10K-100K records | 1K-10K records | <1K records |
| **System Access** | Production systems, admin rights | User-level production | Non-production | No system access |
| **Integration** | Core business process, API integration | Significant integration | Limited integration | No integration |
| **Replaceability** | Sole source, 6+ months to replace | Difficult, 3-6 months | Moderate, 1-3 months | Easy, <1 month |
| **Regulatory Impact** | Direct regulatory scope | Indirect regulatory impact | Audit evidence role | No regulatory impact |

### Scoring Matrix

| Risk Score | Tier | Description |
|------------|------|-------------|
| 4+ Critical factors | **Critical** | Mission-critical vendors with highest risk |
| 2+ High or Critical factors | **High** | Significant risk requiring full assessment |
| 2+ Medium factors | **Medium** | Moderate risk, standard assessment |
| Mostly Low factors | **Low** | Minimal risk, abbreviated review |

---

## 2. Assessment Requirements by Tier

| Tier | Questionnaire | Evidence Required | Review Level | Frequency |
|------|---------------|-------------------|--------------|-----------|
| **Critical** | Full (150+ questions) | SOC 2 Type II, pen test, policies | Security team + Legal | Annual |
| **High** | Standard (80-100 questions) | SOC 2 report, certifications | Security team | Annual |
| **Medium** | Basic (40-60 questions) | Certifications, self-attestation | Compliance analyst | Biennial |
| **Low** | Minimal (15-20 questions) | Self-attestation | Business owner | Triennial |

---

## 3. Scoring Methodology

### Question Scoring

Each question response is scored:

| Score | Meaning | Criteria |
|-------|---------|----------|
| **3** | Exceeds expectations | Control exceeds industry standard |
| **2** | Meets expectations | Control meets expected standard |
| **1** | Partial | Control exists but gaps present |
| **0** | Does not meet | Control missing or significantly deficient |
| **N/A** | Not applicable | Question doesn't apply to vendor's scope |

### Weighting by Category

| Category | Weight | Rationale |
|----------|--------|-----------|
| Access Control | 15% | Fundamental security control |
| Data Protection | 20% | Core to protecting your data |
| Security Operations | 15% | Detection and response capability |
| Compliance | 15% | Regulatory alignment |
| Incident Response | 10% | Breach handling |
| Business Continuity | 10% | Availability assurance |
| Privacy | 10% | Data subject protection |
| Physical Security | 5% | May be less relevant for SaaS |

### Calculating Overall Score

```
Category Score = (Sum of question scores) / (Maximum possible score) × 100

Weighted Total = Σ (Category Score × Category Weight)

Example:
Access Control:    80/100 × 0.15 = 12.0
Data Protection:   90/100 × 0.20 = 18.0
Security Ops:      70/100 × 0.15 = 10.5
Compliance:        100/100 × 0.15 = 15.0
Incident Response: 60/100 × 0.10 = 6.0
Business Cont:     80/100 × 0.10 = 8.0
Privacy:           75/100 × 0.10 = 7.5
Physical Security: 90/100 × 0.05 = 4.5
─────────────────────────────────────────
Total Weighted Score:              81.5
```

### Score Interpretation

| Score Range | Rating | Recommendation |
|-------------|--------|----------------|
| 90-100 | Excellent | Approve |
| 80-89 | Good | Approve with minor recommendations |
| 70-79 | Acceptable | Approve with documented risks and timeline |
| 60-69 | Needs Improvement | Conditional approval with remediation required |
| <60 | Unacceptable | Do not approve or require significant remediation |

---

## 4. Critical Control Areas

Certain controls are mandatory regardless of score. Failure = automatic escalation:

### Mandatory Controls

| Control | Requirement | Failure Action |
|---------|-------------|----------------|
| **Encryption in Transit** | TLS 1.2+ for all data transmission | Cannot approve |
| **Encryption at Rest** | Encryption for stored sensitive data | Cannot approve |
| **Access Control** | Authentication and authorization controls | Cannot approve |
| **Incident Response** | Documented breach notification process | Escalate to Legal |
| **Subprocessor Management** | List of subprocessors available | Escalate to Legal |
| **Data Backup** | Regular backups with tested recovery | Risk exception required |
| **Security Certifications** | SOC 2 or ISO 27001 for High/Critical | Risk exception required |

---

## 5. Evidence Evaluation

### SOC 2 Report Review

When reviewing a vendor's SOC 2 report, check:

| Element | What to Look For |
|---------|------------------|
| **Report Type** | Type II preferred (tests operating effectiveness) |
| **Report Date** | Within 12 months |
| **Report Period** | Minimum 6-month period for Type II |
| **Scope** | Covers the services you're using |
| **Trust Criteria** | Includes Security; Availability if critical to you |
| **Subservice Orgs** | Inclusive or carve-out? If carve-out, assess separately |
| **Opinion** | Unqualified (clean) opinion |
| **Exceptions** | Review any noted exceptions or findings |
| **CUECs** | Are there user entity controls you must implement? |

### Red Flags in SOC 2 Reports

- Qualified opinion (indicates significant control failures)
- Numerous exceptions in testing
- Missing key trust criteria
- Report over 12 months old
- Carve-out of critical subservice organizations
- Bridge letter covering significant gap

### Other Evidence Types

| Evidence | What It Demonstrates |
|----------|---------------------|
| **ISO 27001 Certificate** | ISMS certified by accredited body |
| **Penetration Test Summary** | External security testing |
| **Policies** | Documented security practices |
| **Insurance Certificate** | Cyber liability coverage |
| **BAA/DPA** | Contractual privacy commitments |

---

## 6. Risk Acceptance Process

When a vendor doesn't meet requirements but business needs demand proceeding:

### Risk Exception Requirements

| Tier | Exception Approver | Duration | Documentation |
|------|-------------------|----------|---------------|
| **Critical** | CISO + General Counsel + Business VP | Max 6 months | Full risk assessment |
| **High** | CISO + Business Director | Max 12 months | Documented remediation plan |
| **Medium** | Security Manager | Max 18 months | Issue tracking |
| **Low** | Compliance Analyst | Max 24 months | Note in file |

### Exception Documentation Template

```
VENDOR RISK EXCEPTION REQUEST
=============================

Vendor Name: _________________
Risk Tier: _________________
Exception Requested: _________________

CURRENT GAP:
[Description of security/compliance gap]

BUSINESS JUSTIFICATION:
[Why this vendor is needed despite the gap]

COMPENSATING CONTROLS:
[What controls will mitigate the risk]

REMEDIATION PLAN:
[What the vendor will fix and by when]

RESIDUAL RISK:
[Risk that remains after compensating controls]

EXCEPTION PERIOD: _________________
REVIEW DATE: _________________

APPROVALS:
Security: _________________ Date: _______
Business: _________________ Date: _______
Legal (if required): _________________ Date: _______
```

---

## 7. Ongoing Monitoring

### Continuous Monitoring Activities

| Activity | Frequency | Responsible Party |
|----------|-----------|-------------------|
| Review public breach notifications | Ongoing | Security team |
| Check vendor news/reputation | Monthly | Vendor owner |
| Validate certifications current | Quarterly | Compliance |
| Full reassessment | Per tier schedule | Compliance |
| Review contract terms | At renewal | Legal/Procurement |

### Trigger Events for Reassessment

- Vendor reports a security incident
- Significant change in vendor services used
- Vendor acquisition or merger
- New regulatory requirements
- Material change in data shared
- Negative news coverage

---

## 8. Vendor Inventory Template

Maintain a register of all vendors:

| Field | Description |
|-------|-------------|
| Vendor Name | Legal name |
| Vendor Contact | Primary contact information |
| Service Description | What they provide |
| Data Types Shared | Categories of data |
| Risk Tier | Critical/High/Medium/Low |
| Last Assessment | Date |
| Next Assessment | Due date |
| Assessment Score | Overall score |
| Open Issues | Any unresolved findings |
| Contract End | Renewal date |
| Owner | Internal business owner |

---

[← Back to Exercise Overview](README.md)
