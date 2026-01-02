# ISO 27001 (Information Security Management Systems)

## What Is ISO 27001?

**ISO/IEC 27001** is an international standard published by the International Organization for Standardization (ISO) and the International Electrotechnical Commission (IEC). It specifies requirements for establishing, implementing, maintaining, and continually improving an Information Security Management System (ISMS).

---

## Why ISO 27001 Matters

### For Organizations
- **International recognition** - Accepted globally across industries
- **Systematic approach** - Comprehensive framework for security management
- **Competitive advantage** - Often required for enterprise contracts
- **Risk-based** - Focuses on what matters to YOUR organization

### For Compliance Professionals
- **Versatile credential** - Applies to any industry
- **Foundation for other frameworks** - Maps to SOC 2, NIST, and others
- **Career advancement** - ISO 27001 Lead Auditor/Implementer certifications valuable

---

## The ISMS Concept

An Information Security Management System is a systematic approach to managing sensitive information through:

```
┌─────────────────────────────────────────────────────────────┐
│                          ISMS                                │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│   PEOPLE          PROCESSES         TECHNOLOGY              │
│   ───────         ─────────         ──────────              │
│   • Training      • Policies        • Access Control        │
│   • Awareness     • Procedures      • Encryption            │
│   • Roles         • Risk Mgmt       • Monitoring            │
│   • Culture       • Audits          • Firewalls             │
│                                                              │
└─────────────────────────────────────────────────────────────┘
                           │
                           ▼
        ┌─────────────────────────────────────┐
        │  Protects: Confidentiality          │
        │           Integrity                  │
        │           Availability              │
        └─────────────────────────────────────┘
```

---

## ISO 27001 Structure

### Main Clauses (4-10)

The standard's requirements are organized into clauses:

| Clause | Title | Purpose |
|--------|-------|---------|
| **4** | Context of the Organization | Understand your environment and scope |
| **5** | Leadership | Management commitment and policy |
| **6** | Planning | Risk assessment and treatment |
| **7** | Support | Resources, competence, communication |
| **8** | Operation | Implementing and operating ISMS |
| **9** | Performance Evaluation | Monitoring, measurement, audit |
| **10** | Improvement | Nonconformities and continual improvement |

### The Plan-Do-Check-Act Cycle

ISO 27001 follows the PDCA continuous improvement model:

```
        ┌─────────────────────────────┐
        │           PLAN              │
        │  • Define scope             │
        │  • Assess risks             │
        │  • Select controls          │
        └──────────────┬──────────────┘
                       │
    ┌──────────────────┼──────────────────┐
    │                  ▼                  │
┌───┴───┐                            ┌────┴───┐
│  ACT  │                            │   DO   │
│       │                            │        │
│Improve│ ◄─────────────────────────►│Implement│
│ ISMS  │                            │ ISMS   │
└───┬───┘                            └────┬───┘
    │                  ▲                  │
    └──────────────────┼──────────────────┘
                       │
        ┌──────────────┴──────────────┐
        │          CHECK              │
        │  • Monitor controls         │
        │  • Internal audit           │
        │  • Management review        │
        └─────────────────────────────┘
```

---

## Annex A Controls

Annex A contains 93 controls (ISO 27001:2022) organized into 4 themes:

### Organizational Controls (37)
Policies, roles, responsibilities, and organizational measures.

| Example Controls | Description |
|-----------------|-------------|
| A.5.1 Policies for information security | Documented security policies |
| A.5.15 Access control | Rules for access management |
| A.5.23 Information security for cloud services | Cloud security measures |
| A.5.31 Legal and regulatory requirements | Compliance identification |

### People Controls (8)
Human resource security measures.

| Example Controls | Description |
|-----------------|-------------|
| A.6.1 Screening | Background checks |
| A.6.3 Information security awareness | Training and awareness |
| A.6.5 Responsibilities after termination | Exit procedures |

### Physical Controls (14)
Physical and environmental security.

| Example Controls | Description |
|-----------------|-------------|
| A.7.1 Physical security perimeters | Facility boundaries |
| A.7.4 Physical security monitoring | Surveillance |
| A.7.9 Security of assets off-premises | Mobile device/remote work |

### Technological Controls (34)
Technical security measures.

| Example Controls | Description |
|-----------------|-------------|
| A.8.2 Privileged access rights | Admin access management |
| A.8.5 Secure authentication | Authentication controls |
| A.8.12 Data leakage prevention | DLP measures |
| A.8.24 Use of cryptography | Encryption requirements |

---

## Risk Assessment Process

Risk assessment is the core of ISO 27001:

### Step 1: Establish Context
- Define scope boundaries
- Identify stakeholders
- Understand legal/regulatory requirements

### Step 2: Identify Risks
```
Risk = Threat × Vulnerability × Impact

Example:
┌──────────────────────────────────────────────────────────┐
│ Asset: Customer Database                                  │
│ Threat: Unauthorized access by external attacker         │
│ Vulnerability: Weak password policy                       │
│ Impact: Data breach, regulatory fines, reputation damage │
└──────────────────────────────────────────────────────────┘
```

### Step 3: Analyze Risks
Determine likelihood and impact:

| Likelihood | Description |
|------------|-------------|
| Rare | May occur in exceptional circumstances |
| Unlikely | Could occur but not expected |
| Possible | Might occur at some time |
| Likely | Will probably occur |
| Almost Certain | Expected to occur regularly |

| Impact | Description |
|--------|-------------|
| Insignificant | No business impact |
| Minor | Limited impact, easily managed |
| Moderate | Significant impact requiring management |
| Major | Serious impact on operations |
| Catastrophic | Business-threatening |

### Step 4: Evaluate Risks
Risk matrix to prioritize:

```
             IMPACT
          Low  Med  High
       ┌─────┬─────┬─────┐
High   │ Med │High │Crit │
       ├─────┼─────┼─────┤
LIKELIHOOD Med │ Low │ Med │High │
       ├─────┼─────┼─────┤
Low    │ Low │ Low │ Med │
       └─────┴─────┴─────┘
```

### Step 5: Treat Risks
Select treatment option:

| Option | Description | When to Use |
|--------|-------------|-------------|
| **Avoid** | Eliminate the risk by removing cause | Risk exceeds appetite, activity not essential |
| **Mitigate** | Implement controls to reduce risk | Most common approach |
| **Transfer** | Shift risk to third party | Insurance, outsourcing |
| **Accept** | Acknowledge and monitor | Risk within appetite, cost of mitigation exceeds benefit |

---

## Statement of Applicability (SoA)

The SoA is a key document listing:
- All Annex A controls
- Whether each is applicable or not
- Justification for inclusion/exclusion
- Implementation status

```
Example SoA Entry:
┌────────┬─────────────────────────┬────────────┬─────────────────┬──────────┐
│Control │ Description             │ Applicable │ Justification   │ Status   │
├────────┼─────────────────────────┼────────────┼─────────────────┼──────────┤
│A.8.24  │ Use of cryptography     │ Yes        │ Protect data in │Implemented│
│        │                         │            │ transit/at rest │          │
├────────┼─────────────────────────┼────────────┼─────────────────┼──────────┤
│A.7.5   │ Protecting against      │ No         │ No physical     │   N/A    │
│        │ physical threats        │            │ data center     │          │
└────────┴─────────────────────────┴────────────┴─────────────────┴──────────┘
```

---

## Certification Process

### Stage 1 Audit (Documentation Review)
- Review ISMS documentation
- Assess readiness for Stage 2
- Identify any major gaps

### Stage 2 Audit (Implementation Audit)
- Verify ISMS implementation
- Interview personnel
- Review evidence
- Identify nonconformities

### Certification Decision
- Certification body reviews audit findings
- Certificate issued if requirements met
- Valid for 3 years

### Surveillance Audits
- Annual audits to verify ongoing compliance
- Subset of ISMS reviewed each year

### Recertification
- Full audit every 3 years
- Demonstrates continued compliance

```
Timeline:
Year 1: Stage 1 + Stage 2 → Certification
Year 2: Surveillance Audit
Year 3: Surveillance Audit
Year 4: Recertification Audit
(cycle repeats)
```

---

## Required Documentation

### Mandatory Documents
```
□ Scope of the ISMS
□ Information security policy
□ Risk assessment methodology
□ Risk assessment results
□ Risk treatment plan
□ Statement of Applicability
□ Information security objectives
□ Evidence of competence
□ Operational planning and control documents
□ Results of monitoring and measurement
□ Internal audit program and results
□ Results of management reviews
□ Nature of nonconformities and corrective actions
```

### Common Supporting Documents
```
□ Asset inventory
□ Acceptable use policy
□ Access control policy
□ Cryptographic policy
□ Incident response procedure
□ Business continuity plan
□ Supplier security policy
□ Data classification scheme
```

---

## ISO 27001 vs Other Frameworks

| Aspect | ISO 27001 | SOC 2 | NIST CSF |
|--------|-----------|-------|----------|
| **Type** | Certification | Attestation | Framework |
| **Scope** | Any organization | Service providers | Any organization |
| **Audit** | Accredited CB | Licensed CPA | Self-assessment |
| **Controls** | 93 (Annex A) | Trust Service Criteria | 108 subcategories |
| **Validity** | 3 years | Point-in-time/period | Ongoing |
| **Cost** | Higher | Medium | Lower |

---

## Implementation Timeline

Typical implementation for a medium-sized organization:

```
Phase 1: Initiation (Month 1-2)
├── Management commitment
├── Define scope
└── Gap analysis

Phase 2: Risk Assessment (Month 2-4)
├── Identify assets
├── Assess risks
└── Develop treatment plan

Phase 3: Implementation (Month 4-8)
├── Implement controls
├── Develop documentation
└── Train staff

Phase 4: Operation (Month 8-10)
├── Operate ISMS
├── Collect evidence
└── Internal audit

Phase 5: Certification (Month 10-12)
├── Stage 1 audit
├── Address findings
└── Stage 2 audit
```

---

## Practice Questions

1. What are the four themes of Annex A controls in ISO 27001:2022?
2. What is the purpose of the Statement of Applicability?
3. What are the four risk treatment options?
4. How long is an ISO 27001 certification valid?
5. What is the difference between Stage 1 and Stage 2 audits?
6. Why is the PDCA cycle important for ISMS?

---

[← Back to Frameworks Overview](../README.md) | [Previous: PCI-DSS](../pci-dss/README.md)
