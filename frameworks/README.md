# Compliance Frameworks Overview

This section provides educational content on major compliance frameworks. Understanding these frameworks is essential for anyone working in Legal & Compliance, Information Security, or Risk Management.

---

## What Is a Compliance Framework?

A compliance framework is a structured set of guidelines, best practices, and requirements that organizations follow to:

1. **Meet regulatory obligations** - Satisfy legal and industry requirements
2. **Protect stakeholders** - Safeguard customers, employees, and partners
3. **Reduce risk** - Minimize exposure to security, privacy, and operational risks
4. **Build trust** - Demonstrate commitment to responsible practices
5. **Enable business** - Meet vendor/customer requirements for doing business

---

## Frameworks Covered

| Framework | Full Name | Primary Focus | Governing Body |
|-----------|-----------|---------------|----------------|
| [SOC 2](soc2/README.md) | Service Organization Control 2 | Service provider security & availability | AICPA |
| [GDPR](gdpr/README.md) | General Data Protection Regulation | Data privacy rights (EU) | European Union |
| [HIPAA](hipaa/README.md) | Health Insurance Portability and Accountability Act | Healthcare data protection | HHS (US) |
| [PCI-DSS](pci-dss/README.md) | Payment Card Industry Data Security Standard | Payment card data protection | PCI SSC |
| [ISO 27001](iso27001/README.md) | ISO/IEC 27001 | Information Security Management | ISO |

---

## Framework Comparison

| Aspect | SOC 2 | GDPR | HIPAA | PCI-DSS | ISO 27001 |
|--------|-------|------|-------|---------|-----------|
| **Mandatory?** | Voluntary | Mandatory (EU data) | Mandatory (US healthcare) | Mandatory (card data) | Voluntary |
| **Scope** | Service orgs | Any org with EU data | Healthcare entities | Payment processors | Any organization |
| **Audit Type** | Third-party | Regulator/DPA | HHS/OCR | QSA assessment | Certification body |
| **Penalty for Non-Compliance** | Loss of business | Up to 4% global revenue | Up to $1.5M/year | Fines + loss of processing | Loss of certification |
| **Certification?** | Attestation report | No formal cert | No formal cert | Compliance validation | Yes - certificate |

---

## How Frameworks Overlap

Many frameworks share common control areas:

```
                    ┌─────────────────────────────────────────┐
                    │           COMMON CONTROLS               │
                    ├─────────────────────────────────────────┤
                    │  • Access Control                       │
                    │  • Encryption                           │
                    │  • Incident Response                    │
                    │  • Vendor Management                    │
                    │  • Security Awareness Training          │
                    │  • Audit Logging                        │
                    │  • Change Management                    │
                    │  • Business Continuity                  │
                    └─────────────────────────────────────────┘
                              │
        ┌─────────────────────┼─────────────────────┐
        │                     │                     │
        ▼                     ▼                     ▼
   ┌─────────┐          ┌─────────┐          ┌─────────┐
   │  SOC 2  │          │  GDPR   │          │ PCI-DSS │
   │ ─────── │          │ ─────── │          │ ─────── │
   │ + Trust │          │ + Data  │          │ + Card  │
   │ Service │          │ Subject │          │ Holder  │
   │ Criteria│          │ Rights  │          │ Data    │
   └─────────┘          └─────────┘          └─────────┘
```

---

## Choosing Which Framework to Study

| If You're Interested In... | Focus On |
|---------------------------|----------|
| Tech/SaaS companies | SOC 2, ISO 27001 |
| Privacy and data protection | GDPR |
| Healthcare industry | HIPAA |
| Financial services/Payments | PCI-DSS, SOC 2 |
| General security management | ISO 27001 |
| Working with EU companies | GDPR |
| Broad compliance knowledge | All of them |

---

## Key Terms Across Frameworks

| Term | Definition |
|------|------------|
| **Control** | A safeguard or countermeasure to manage risk |
| **Audit** | Formal examination of compliance with requirements |
| **Evidence** | Documentation proving controls are in place and working |
| **Gap** | Difference between current state and required state |
| **Remediation** | Actions taken to address identified gaps |
| **Risk Assessment** | Process of identifying and evaluating risks |
| **Data Controller** | Entity that determines purposes of data processing (GDPR) |
| **Data Processor** | Entity that processes data on behalf of controller (GDPR) |
| **Covered Entity** | Healthcare provider, plan, or clearinghouse (HIPAA) |
| **Business Associate** | Vendor handling PHI on behalf of covered entity (HIPAA) |

---

## Next Steps

1. **Read each framework overview** to understand the basics
2. **Identify which frameworks** are most relevant to your career goals
3. **Complete the exercises** to apply your knowledge
4. **Use the templates** for real-world practice

Start with [SOC 2](soc2/README.md) - it's foundational for understanding compliance in technology companies.
