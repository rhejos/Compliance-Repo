# GDPR (General Data Protection Regulation)

## What Is GDPR?

The **General Data Protection Regulation (GDPR)** is a comprehensive data privacy law enacted by the European Union in 2018. It governs how organizations collect, process, store, and share personal data of individuals in the EU/EEA, regardless of where the organization is located.

---

## Why GDPR Matters

### Global Impact
- **Extraterritorial reach** - Applies to ANY organization processing EU residents' data
- **Substantial penalties** - Fines up to €20 million or 4% of global annual revenue
- **Gold standard** - Influenced privacy laws worldwide (CCPA, LGPD, POPIA, etc.)
- **Consumer expectations** - Set new baseline for privacy expectations globally

### For Compliance Professionals
- **Universal applicability** - Nearly every global company must comply
- **Ongoing requirements** - Not a one-time certification
- **Cross-functional** - Touches legal, IT, marketing, HR, operations

---

## Key Definitions

| Term | Definition |
|------|------------|
| **Personal Data** | Any information relating to an identified or identifiable natural person |
| **Data Subject** | The individual whose personal data is being processed |
| **Data Controller** | Entity that determines the purposes and means of processing |
| **Data Processor** | Entity that processes data on behalf of the controller |
| **Processing** | Any operation performed on personal data (collecting, storing, using, deleting) |
| **Special Category Data** | Sensitive data requiring extra protection (health, race, religion, etc.) |

### Personal Data Examples
```
Clearly Personal:          Less Obvious:              Special Category:
• Name                     • IP address               • Health records
• Email address            • Cookie identifiers       • Biometric data
• Phone number             • Device IDs               • Religious beliefs
• Social Security #        • Location data            • Political opinions
• Photo/Video              • Browsing history         • Sexual orientation
```

---

## The Seven GDPR Principles

Every data processing activity must comply with these core principles:

### 1. Lawfulness, Fairness, and Transparency
- Process data only with a valid legal basis
- Be fair in how you use data
- Be transparent about your practices

### 2. Purpose Limitation
- Collect data for specified, explicit, legitimate purposes
- Don't use data for incompatible purposes later

### 3. Data Minimization
- Collect only what you need
- Don't gather "just in case" data

### 4. Accuracy
- Keep personal data accurate and up to date
- Correct or delete inaccurate data promptly

### 5. Storage Limitation
- Keep data only as long as necessary
- Define and enforce retention periods

### 6. Integrity and Confidentiality
- Protect data with appropriate security measures
- Prevent unauthorized access, loss, or destruction

### 7. Accountability
- Demonstrate compliance with the above principles
- Maintain records and documentation

---

## Lawful Bases for Processing

You must have at least one legal basis to process personal data:

| Legal Basis | When to Use | Example |
|-------------|-------------|---------|
| **Consent** | Individual agrees to processing | Marketing email sign-up |
| **Contract** | Necessary to fulfill a contract | Processing order for purchased goods |
| **Legal Obligation** | Required by law | Tax record retention |
| **Vital Interests** | Protect someone's life | Emergency medical situation |
| **Public Task** | Official authority/public interest | Government agency functions |
| **Legitimate Interests** | Business need balanced against rights | Fraud prevention, network security |

### Consent Requirements
```
Valid Consent Must Be:
┌─────────────────────────────────────────────┐
│ ✓ Freely given (no penalty for refusing)   │
│ ✓ Specific (for defined purposes)          │
│ ✓ Informed (clear explanation provided)    │
│ ✓ Unambiguous (clear affirmative action)   │
│ ✓ Withdrawable (easy to revoke)            │
└─────────────────────────────────────────────┘

Invalid Consent:
✗ Pre-ticked boxes
✗ Bundled with T&Cs
✗ "By using this site you agree..."
✗ Consent buried in lengthy text
```

---

## Data Subject Rights

Individuals have powerful rights under GDPR:

| Right | Description | Response Time |
|-------|-------------|---------------|
| **Right of Access** | Obtain copy of their personal data | 1 month |
| **Right to Rectification** | Correct inaccurate data | 1 month |
| **Right to Erasure** | "Right to be forgotten" - delete their data | 1 month |
| **Right to Restrict Processing** | Limit how their data is used | 1 month |
| **Right to Data Portability** | Receive data in machine-readable format | 1 month |
| **Right to Object** | Object to certain types of processing | Without undue delay |
| **Rights re: Automated Decisions** | Not be subject to purely automated decisions | Varies |

### Handling a Data Subject Request (DSR)
```
Step 1: Verify identity (ensure it's really them)
    ↓
Step 2: Acknowledge receipt (within a few days)
    ↓
Step 3: Search all systems for their data
    ↓
Step 4: Compile response
    ↓
Step 5: Review for third-party data / exemptions
    ↓
Step 6: Deliver response (within 1 month)
    ↓
Step 7: Document the request and response
```

---

## Data Breach Notification

GDPR requires notification of personal data breaches:

### To Supervisory Authority
- **Timeline**: Within 72 hours of becoming aware
- **When Required**: Unless unlikely to result in risk to individuals
- **Content**: Nature of breach, categories/numbers affected, consequences, measures taken

### To Affected Individuals
- **Timeline**: Without undue delay
- **When Required**: When breach likely results in HIGH risk to rights/freedoms
- **Content**: Clear language describing breach and recommended actions

### Breach Response Timeline
```
Hour 0:  Breach discovered
    ↓
Hour 1-4: Initial assessment and containment
    ↓
Hour 4-24: Investigation and impact assessment
    ↓
Hour 24-48: Prepare notification content
    ↓
Hour 72: Notify supervisory authority (if required)
    ↓
ASAP: Notify affected individuals (if high risk)
```

---

## Data Protection Impact Assessment (DPIA)

A DPIA is required when processing is likely to result in HIGH RISK to individuals.

### When Required
- Systematic monitoring of public areas (CCTV)
- Large-scale processing of special category data
- Automated decision-making with legal effects
- New technologies with unknown risks
- Profiling to make significant decisions

### DPIA Process
```
1. Describe the Processing
   └── What data? What purpose? What systems?

2. Assess Necessity & Proportionality
   └── Is this processing necessary? Proportionate?

3. Identify & Assess Risks
   └── What could go wrong? How likely? How severe?

4. Identify Measures to Mitigate Risks
   └── What controls reduce the risks?

5. Document & Review
   └── Record decisions, get sign-off, review periodically
```

---

## International Data Transfers

Transferring personal data outside the EU/EEA requires safeguards:

### Adequacy Decisions
Countries deemed to have adequate protection (data can flow freely):
- UK, Canada, Japan, New Zealand, Israel, Switzerland, and others

### Transfer Mechanisms (when no adequacy)
| Mechanism | Description |
|-----------|-------------|
| **Standard Contractual Clauses (SCCs)** | EU-approved contract terms |
| **Binding Corporate Rules** | Intra-group data sharing rules |
| **Explicit Consent** | Individual agrees to transfer (limited use) |
| **Contractual Necessity** | Transfer needed to fulfill contract |

---

## Key GDPR Roles

### Data Protection Officer (DPO)
Required for:
- Public authorities
- Organizations doing large-scale monitoring
- Organizations processing special category data at scale

Responsibilities:
- Advise on GDPR compliance
- Monitor compliance activities
- Cooperate with supervisory authority
- Be contact point for data subjects

### Supervisory Authority
- National data protection regulator
- Receives breach notifications
- Handles complaints
- Issues fines and enforcement actions

---

## Common GDPR Violations

| Violation | Typical Fine Range | Example |
|-----------|-------------------|---------|
| Insufficient legal basis | €10M - €50M+ | Processing without valid consent |
| Inadequate security | €5M - €20M+ | Data breach due to poor controls |
| Failure to honor DSRs | €1M - €10M | Ignoring deletion requests |
| Insufficient transparency | €5M - €50M+ | Unclear privacy notices |
| Unlawful international transfers | €10M - €400M+ | Transferring to US without safeguards |

---

## GDPR Compliance Checklist

```
□ Data inventory/mapping completed
□ Privacy notices updated
□ Lawful basis documented for each processing activity
□ Consent mechanisms compliant (where used)
□ DSR process established
□ Breach response plan in place
□ Vendor/processor agreements updated
□ International transfer mechanisms in place
□ DPIA process established
□ DPO appointed (if required)
□ Training program implemented
□ Records of processing maintained
```

---

## Practice Questions

1. What are the six lawful bases for processing personal data?
2. When must a data breach be reported to the supervisory authority?
3. What is the difference between a data controller and data processor?
4. What rights do data subjects have under GDPR?
5. When is a DPIA required?
6. What makes consent "valid" under GDPR?

---

[← Back to Frameworks Overview](../README.md) | [Previous: SOC 2](../soc2/README.md) | [Next: HIPAA →](../hipaa/README.md)
