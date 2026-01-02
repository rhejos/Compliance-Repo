# HIPAA (Health Insurance Portability and Accountability Act)

## What Is HIPAA?

**HIPAA** is a United States federal law enacted in 1996 that establishes national standards for protecting sensitive patient health information. It regulates how healthcare organizations and their business partners handle Protected Health Information (PHI).

---

## Why HIPAA Matters

### For Healthcare Industry
- **Legal requirement** - Violations can result in criminal charges
- **Patient trust** - Fundamental to healthcare relationships
- **Business necessity** - Required to participate in healthcare ecosystem

### For Compliance Professionals
- **Large industry** - Healthcare is ~18% of US GDP
- **Expanding scope** - Digital health, telehealth, health apps
- **Specialized knowledge** - HIPAA expertise commands premium

---

## Who Must Comply?

### Covered Entities
Organizations directly subject to HIPAA:

| Type | Examples |
|------|----------|
| **Healthcare Providers** | Hospitals, doctors, clinics, dentists, pharmacies |
| **Health Plans** | Insurance companies, HMOs, Medicare, Medicaid |
| **Healthcare Clearinghouses** | Entities that process health information |

### Business Associates
Organizations that handle PHI on behalf of covered entities:

| Type | Examples |
|------|----------|
| **IT/Cloud Providers** | EHR vendors, cloud hosting, data backup |
| **Administrative** | Billing companies, claims processors |
| **Professional Services** | Consultants, accountants, attorneys |
| **Physical Services** | Shredding companies, data centers |

---

## Protected Health Information (PHI)

PHI is individually identifiable health information that relates to:
- Past, present, or future physical/mental health
- Healthcare services provided
- Payment for healthcare services

### The 18 PHI Identifiers
```
Direct Identifiers:              Indirect Identifiers:
1. Names                         10. Account numbers
2. Geographic data < state       11. Certificate/license numbers
3. Dates (except year)           12. Vehicle identifiers
4. Phone numbers                 13. Device identifiers
5. Fax numbers                   14. Web URLs
6. Email addresses               15. IP addresses
7. Social Security numbers       16. Biometric identifiers
8. Medical record numbers        17. Full-face photographs
9. Health plan beneficiary #     18. Any other unique identifier
```

### PHI vs De-Identified Data
```
PHI (Protected):
"John Smith, DOB 03/15/1980, diagnosed with diabetes"

De-Identified (Not PHI):
"65-year-old male patient diagnosed with diabetes"
- No 18 identifiers present
- No reasonable basis to identify individual
```

---

## The Three HIPAA Rules

### 1. Privacy Rule
Establishes standards for when and how PHI can be used and disclosed.

**Permitted Uses and Disclosures (without authorization):**
| Purpose | Example |
|---------|---------|
| **Treatment** | Sharing records between providers for patient care |
| **Payment** | Submitting claims to insurance |
| **Healthcare Operations** | Quality improvement, training |
| **Required by Law** | Court orders, public health reporting |
| **Public Interest** | Abuse reporting, law enforcement |

**Patient Rights Under Privacy Rule:**
- Access their health records
- Request amendments to records
- Receive accounting of disclosures
- Request restrictions on uses
- Request confidential communications
- File complaints

### 2. Security Rule
Establishes standards for protecting electronic PHI (ePHI).

**Three Safeguard Categories:**

```
┌─────────────────────────────────────────────────────────────┐
│                  ADMINISTRATIVE SAFEGUARDS                   │
├─────────────────────────────────────────────────────────────┤
│ • Security Management Process (risk analysis, sanctions)    │
│ • Workforce Security (authorization, clearance)             │
│ • Information Access Management (access controls)           │
│ • Security Awareness Training                               │
│ • Security Incident Procedures                              │
│ • Contingency Plan (backup, disaster recovery)              │
│ • Evaluation (periodic assessment)                          │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│                   PHYSICAL SAFEGUARDS                        │
├─────────────────────────────────────────────────────────────┤
│ • Facility Access Controls                                   │
│ • Workstation Use policies                                   │
│ • Workstation Security                                       │
│ • Device and Media Controls (disposal, reuse)               │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│                   TECHNICAL SAFEGUARDS                       │
├─────────────────────────────────────────────────────────────┤
│ • Access Control (unique user ID, emergency access)         │
│ • Audit Controls (logging, monitoring)                      │
│ • Integrity Controls (data integrity)                       │
│ • Transmission Security (encryption)                        │
│ • Authentication                                             │
└─────────────────────────────────────────────────────────────┘
```

### 3. Breach Notification Rule
Requirements when PHI is compromised.

**What Is a Breach?**
Unauthorized acquisition, access, use, or disclosure of PHI that compromises security or privacy (unless low probability of compromise).

**Notification Requirements:**

| Recipient | Timeline | Threshold |
|-----------|----------|-----------|
| **Affected Individuals** | Within 60 days | All breaches |
| **HHS (Small Breach)** | Annual log | < 500 individuals |
| **HHS (Large Breach)** | Within 60 days | ≥ 500 individuals |
| **Media** | Within 60 days | ≥ 500 individuals in a state |

**Breach Risk Assessment (4 factors):**
1. Nature and extent of PHI involved
2. Unauthorized person who used/received PHI
3. Whether PHI was actually acquired or viewed
4. Extent to which risk has been mitigated

---

## Business Associate Agreements (BAAs)

Covered entities must have BAAs with all business associates before sharing PHI.

**Required BAA Elements:**
```
□ Permitted uses and disclosures of PHI
□ Requirement to safeguard PHI
□ Requirement to report breaches
□ Requirement to ensure subcontractors comply
□ Requirement to make PHI available to individuals
□ Requirement to make PHI available for amendments
□ Requirement to provide accounting of disclosures
□ Requirement to comply with Security Rule
□ Termination provisions
```

---

## Minimum Necessary Standard

Only access, use, or disclose the minimum amount of PHI necessary to accomplish the intended purpose.

**Applies to:**
- Uses within the organization
- Disclosures to other covered entities
- Requests from other covered entities

**Does NOT apply to:**
- Disclosures for treatment
- Disclosures to the individual
- Uses authorized by the individual
- Disclosures required by law

---

## HIPAA Penalties

### Civil Penalties (per violation)

| Tier | Culpability | Minimum | Maximum |
|------|-------------|---------|---------|
| 1 | Did not know | $100 | $50,000 |
| 2 | Reasonable cause | $1,000 | $50,000 |
| 3 | Willful neglect (corrected) | $10,000 | $50,000 |
| 4 | Willful neglect (not corrected) | $50,000 | $1.5M |

**Annual cap**: $1.5 million per violation category

### Criminal Penalties

| Offense | Maximum Fine | Maximum Prison |
|---------|--------------|----------------|
| Knowingly obtaining PHI | $50,000 | 1 year |
| Under false pretenses | $100,000 | 5 years |
| For personal gain/harm | $250,000 | 10 years |

---

## Common HIPAA Violations

| Violation | Example | Risk Level |
|-----------|---------|------------|
| **Unauthorized access** | Employee viewing celebrity records | High |
| **Lost/stolen devices** | Unencrypted laptop left in car | High |
| **Improper disposal** | PHI in regular trash | Medium |
| **Lack of safeguards** | No encryption, weak passwords | Medium |
| **Unauthorized disclosure** | Discussing patients in public | Medium |
| **Missing BAAs** | Cloud vendor without agreement | Medium |
| **No risk analysis** | Never conducted risk assessment | Medium |

---

## HIPAA Compliance Checklist

```
Administrative:
□ Designated Privacy and Security Officers
□ Risk analysis completed and documented
□ Policies and procedures documented
□ Workforce training completed
□ Sanction policy in place
□ Incident response procedures
□ BAAs with all business associates

Physical:
□ Facility access controls
□ Workstation security policies
□ Device and media disposal procedures
□ Visitor policies

Technical:
□ Unique user identification
□ Access controls implemented
□ Audit logging enabled
□ Encryption at rest and in transit
□ Automatic logoff configured
□ Integrity controls in place
```

---

## HIPAA vs Other Frameworks

| Aspect | HIPAA | GDPR | SOC 2 |
|--------|-------|------|-------|
| **Scope** | US healthcare | EU personal data | Service organizations |
| **Data Type** | PHI | Personal data | Customer data |
| **Enforcement** | HHS/OCR | DPAs | Market-driven |
| **Penalties** | Up to $1.5M/year | Up to 4% revenue | Loss of business |
| **Certification** | None (audit-based) | None | Attestation report |

---

## Practice Questions

1. What are the three categories of safeguards in the Security Rule?
2. What is the difference between a Covered Entity and Business Associate?
3. When is individual authorization required to disclose PHI?
4. What are the breach notification timelines?
5. What is the "minimum necessary" standard?
6. What must be included in a Business Associate Agreement?

---

[← Back to Frameworks Overview](../README.md) | [Previous: GDPR](../gdpr/README.md) | [Next: PCI-DSS →](../pci-dss/README.md)
