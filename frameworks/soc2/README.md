# SOC 2 (Service Organization Control 2)

## What Is SOC 2?

SOC 2 is an auditing framework developed by the **American Institute of Certified Public Accountants (AICPA)** that evaluates how well service organizations protect customer data. It's particularly relevant for technology and SaaS companies that store, process, or transmit customer information.

---

## Why SOC 2 Matters

### For Organizations
- **Win enterprise deals** - Many large customers require SOC 2 compliance before signing contracts
- **Demonstrate security posture** - Provides third-party validation of security controls
- **Reduce audit fatigue** - One report can satisfy multiple customer security questionnaires
- **Competitive advantage** - Differentiates from competitors without SOC 2

### For Compliance Professionals
- **High demand skill** - SOC 2 expertise is sought after in tech industry
- **Broad applicability** - Concepts transfer to other frameworks
- **Continuous relevance** - Ongoing audits mean steady compliance work

---

## The Five Trust Service Criteria

SOC 2 is organized around five "Trust Service Criteria" (TSC). Organizations choose which criteria to include in their audit:

### 1. Security (Required)
The foundational criterion - must be included in every SOC 2 audit.

| Focus Area | Example Controls |
|------------|------------------|
| Access Control | Role-based access, MFA, access reviews |
| Network Security | Firewalls, intrusion detection, segmentation |
| Incident Response | Incident handling procedures, communication plans |
| Change Management | Approval workflows, testing requirements |
| Risk Assessment | Annual risk assessments, vulnerability scans |

### 2. Availability (Optional)
System uptime and accessibility commitments.

| Focus Area | Example Controls |
|------------|------------------|
| Uptime Monitoring | SLA tracking, availability metrics |
| Disaster Recovery | Backup procedures, failover capabilities |
| Capacity Planning | Performance monitoring, scaling procedures |
| Incident Management | Outage response, communication protocols |

### 3. Processing Integrity (Optional)
Data is processed completely, accurately, and in a timely manner.

| Focus Area | Example Controls |
|------------|------------------|
| Data Validation | Input validation, error handling |
| Processing Monitoring | Job monitoring, reconciliation |
| Error Correction | Exception handling, correction procedures |
| Quality Assurance | Testing procedures, acceptance criteria |

### 4. Confidentiality (Optional)
Protection of confidential information.

| Focus Area | Example Controls |
|------------|------------------|
| Data Classification | Classification schemes, handling procedures |
| Encryption | Encryption at rest and in transit |
| Access Restrictions | Need-to-know access, confidentiality agreements |
| Data Retention | Retention policies, secure disposal |

### 5. Privacy (Optional)
Personal information is collected, used, retained, and disclosed appropriately.

| Focus Area | Example Controls |
|------------|------------------|
| Notice | Privacy policies, collection notices |
| Choice & Consent | Opt-in/opt-out mechanisms |
| Access | Data subject access requests |
| Disclosure | Third-party sharing controls |

---

## SOC 2 Type I vs Type II

| Aspect | Type I | Type II |
|--------|--------|---------|
| **What It Tests** | Control design at a point in time | Control design AND operating effectiveness over time |
| **Time Period** | Single date (snapshot) | Typically 6-12 months |
| **Depth** | Are controls designed appropriately? | Are controls working consistently? |
| **Customer Preference** | Acceptable for newer companies | Preferred by most enterprise customers |
| **Common Use** | First-time SOC 2, new controls | Ongoing annual compliance |

### Progression Path
```
Year 1: SOC 2 Type I (prove controls exist)
     ↓
Year 2+: SOC 2 Type II (prove controls work over time)
```

---

## The SOC 2 Audit Process

### 1. Readiness Assessment (2-4 weeks)
- Gap analysis against Trust Service Criteria
- Identify missing controls
- Develop remediation plan

### 2. Remediation (4-12 weeks)
- Implement missing controls
- Document policies and procedures
- Train employees
- Collect initial evidence

### 3. Audit Period (Type II: 3-12 months)
- Operate controls consistently
- Collect evidence throughout period
- Address any control failures

### 4. Audit Fieldwork (2-4 weeks)
- Auditor requests evidence
- Interviews with control owners
- Testing of control effectiveness

### 5. Report Issuance (2-4 weeks)
- Auditor drafts report
- Management reviews and responds
- Final report issued

---

## Common SOC 2 Controls

### Access Control
```
┌─────────────────────────────────────────────────────────┐
│ CC6.1 - Logical Access Security                         │
├─────────────────────────────────────────────────────────┤
│ • Unique user IDs for all users                         │
│ • Multi-factor authentication (MFA)                     │
│ • Password complexity requirements                      │
│ • Quarterly access reviews                              │
│ • Timely deprovisioning (within 24 hours of term)      │
│ • Privileged access management                          │
└─────────────────────────────────────────────────────────┘
```

### Change Management
```
┌─────────────────────────────────────────────────────────┐
│ CC8.1 - Change Management                               │
├─────────────────────────────────────────────────────────┤
│ • Documented change requests                            │
│ • Testing in non-production environment                 │
│ • Segregation of duties (dev ≠ deploy)                 │
│ • Approval before production deployment                 │
│ • Rollback procedures                                   │
└─────────────────────────────────────────────────────────┘
```

### Incident Response
```
┌─────────────────────────────────────────────────────────┐
│ CC7.4 - Incident Response                               │
├─────────────────────────────────────────────────────────┤
│ • Documented incident response plan                     │
│ • Defined severity levels                               │
│ • Communication procedures                              │
│ • Post-incident reviews                                 │
│ • Annual tabletop exercises                             │
└─────────────────────────────────────────────────────────┘
```

---

## Evidence Examples

| Control | Evidence Types |
|---------|---------------|
| Access Reviews | Screenshots of review completion, access review reports |
| MFA Enforcement | Configuration screenshots, policy documents |
| Background Checks | Anonymized completion records, policy |
| Security Training | Completion reports, training content |
| Vulnerability Scanning | Scan reports, remediation tickets |
| Change Approvals | Ticket screenshots, deployment logs |
| Incident Response | Incident tickets, post-mortem documents |

---

## Common Audit Findings

| Finding | Risk Level | Typical Remediation |
|---------|------------|---------------------|
| Incomplete access reviews | Medium | Implement quarterly review process |
| Missing MFA | High | Enable MFA for all users |
| Delayed deprovisioning | Medium | Automate with HR system integration |
| Undocumented changes | Medium | Implement change management system |
| No security training | Medium | Deploy annual training program |
| Missing encryption | High | Implement encryption at rest/transit |

---

## Key Terminology

| Term | Definition |
|------|------------|
| **Trust Service Criteria (TSC)** | The five categories of controls (Security, Availability, etc.) |
| **Common Criteria (CC)** | Specific control points within each TSC |
| **Service Auditor** | CPA firm conducting the SOC 2 audit |
| **User Entity** | Customer of the service organization |
| **Subservice Organization** | Third party that the service org relies on |
| **Complementary User Entity Controls (CUECs)** | Controls customers must implement |
| **Carve-out vs Inclusive** | Whether subservice orgs are included in scope |

---

## SOC 2 vs Other Frameworks

| Comparison | SOC 2 | ISO 27001 |
|------------|-------|-----------|
| Standard Body | AICPA | ISO |
| Output | Attestation report | Certification |
| Auditor | Licensed CPA firm | Accredited certification body |
| Validity | Point in time / period | 3 years (with surveillance) |
| Focus | Service organizations | Any organization |

---

## Resources for Further Learning

1. **AICPA Trust Services Criteria** - Official criteria documentation
2. **SOC 2 Academy** - Free online courses
3. **Sample SOC 2 Reports** - Review structure and content
4. **Vendor Security Questionnaires** - See how customers evaluate SOC 2

---

## Practice Questions

1. What is the only required Trust Service Criterion for SOC 2?
2. What is the difference between Type I and Type II reports?
3. Why might a startup pursue Type I before Type II?
4. What evidence would you collect to demonstrate access review controls?
5. How do CUECs affect the scope of a SOC 2 report?

---

[← Back to Frameworks Overview](../README.md) | [Next: GDPR →](../gdpr/README.md)
