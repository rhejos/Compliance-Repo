# Exercise 04: Vendor Risk Assessment

**Effort Level:** Medium
**Time to Complete:** 4-6 hours
**Skills Demonstrated:** Third-party risk management, questionnaire design, risk scoring

---

## Background

### What Is Vendor Risk Assessment?

Vendor risk assessment (also called third-party risk management or TPRM) is the process of:
- **Evaluating** the security and compliance posture of vendors before engagement
- **Categorizing** vendors based on the risk they present to your organization
- **Monitoring** vendor risk throughout the relationship
- **Managing** issues and ensuring continuous compliance

### Why Is This Important?

Your organization's security is only as strong as your weakest vendor:

| Statistic | Source |
|-----------|--------|
| 60% of data breaches involve third parties | Ponemon Institute |
| Average organization uses 1,000+ vendors | Gartner |
| 40% of organizations don't assess vendor security | Deloitte |

**High-Profile Third-Party Breaches:**
- Target (2013) - HVAC vendor compromised
- SolarWinds (2020) - Software supply chain attack
- Kaseya (2021) - MSP software breach
- MOVEit (2023) - File transfer software exploit

### Real-World Context

Compliance frameworks require vendor risk management:
- **SOC 2**: Trust Service Criteria CC9.2 (Vendor and Business Partner Risk)
- **ISO 27001**: A.5.22 (Supplier Security)
- **GDPR**: Articles 28-29 (Data Processor Requirements)
- **HIPAA**: Business Associate Agreements required
- **PCI-DSS**: Requirement 12.8 (Service Provider Management)

---

## Learning Objectives

By completing this exercise, you will be able to:

1. **Design** a vendor risk assessment questionnaire
2. **Categorize** vendors by risk tier
3. **Score** vendor responses objectively
4. **Identify** high-risk areas and remediation requirements
5. **Document** vendor risk decisions and acceptance

---

## Instructions

### Part 1: Study the TPRM Framework

Review the [Vendor Risk Framework](vendor-risk-framework.md) to understand assessment methodology.

### Part 2: Review the Questionnaire Template

Study the [Security Questionnaire Template](questionnaire-template.md) to understand question categories.

### Part 3: Assess Sample Vendors

Evaluate the vendor scenarios in [Vendor Assessments](vendor-assessments.md) using the framework.

### Part 4: Compare to Solutions

Check your assessments against the [Solutions](solutions.md).

---

## Files in This Exercise

| File | Description |
|------|-------------|
| [README.md](README.md) | This file - overview and instructions |
| [vendor-risk-framework.md](vendor-risk-framework.md) | Risk tiering and scoring methodology |
| [questionnaire-template.md](questionnaire-template.md) | Sample security questionnaire |
| [vendor-assessments.md](vendor-assessments.md) | Vendor scenarios to assess |
| [solutions.md](solutions.md) | Completed assessments with explanations |

---

## Key Concepts

### Vendor Risk Tiering

| Tier | Criteria | Assessment Depth | Review Frequency |
|------|----------|-----------------|------------------|
| **Critical** | Handles sensitive data, essential to operations, high regulatory impact | Full assessment + on-site | Annually |
| **High** | Handles PII, significant integration, meaningful impact | Full assessment | Annually |
| **Medium** | Limited data access, moderate integration | Standard questionnaire | Every 2 years |
| **Low** | No sensitive data, minimal integration | Abbreviated review | Every 3 years |

### Risk Categories

```
┌─────────────────────────────────────────────────────────────────┐
│                      VENDOR RISK DOMAINS                         │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  SECURITY                    COMPLIANCE                          │
│  ──────────                  ──────────                          │
│  • Access controls           • Regulatory certifications         │
│  • Encryption                • Audit reports (SOC 2, etc.)       │
│  • Vulnerability mgmt        • Industry standards                │
│  • Incident response         • Contractual compliance            │
│  • Security monitoring                                           │
│                                                                  │
│  PRIVACY                     OPERATIONAL                         │
│  ───────                     ───────────                         │
│  • Data handling             • Business continuity               │
│  • Data residency            • Financial stability               │
│  • Subprocessors             • Service levels                    │
│  • Breach notification       • Change management                 │
│  • Subject rights support                                        │
│                                                                  │
│  LEGAL/CONTRACTUAL           REPUTATIONAL                        │
│  ────────────────            ────────────                        │
│  • Liability terms           • Public perception                 │
│  • Insurance coverage        • Media coverage                    │
│  • Termination rights        • Industry reputation               │
│  • Data ownership                                                │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

### Assessment Process Flow

```
    ┌─────────────────┐
    │  New Vendor     │
    │  Request        │
    └────────┬────────┘
             │
             ▼
    ┌─────────────────┐
    │  Determine      │
    │  Risk Tier      │
    └────────┬────────┘
             │
             ▼
    ┌─────────────────┐
    │  Issue          │
    │  Questionnaire  │
    └────────┬────────┘
             │
             ▼
    ┌─────────────────┐
    │  Review         │
    │  Responses      │
    └────────┬────────┘
             │
             ▼
    ┌─────────────────┐       ┌─────────────────┐
    │  Acceptable?    │──NO──▶│  Remediation    │
    └────────┬────────┘       │  Required       │
             │                └────────┬────────┘
            YES                        │
             │                         ▼
             │                ┌─────────────────┐
             │                │  Risk Exception │
             │                │  If Accepted    │
             │                └────────┬────────┘
             │                         │
             ▼                         │
    ┌─────────────────┐◀───────────────┘
    │  Document &     │
    │  Approve        │
    └────────┬────────┘
             │
             ▼
    ┌─────────────────┐
    │  Ongoing        │
    │  Monitoring     │
    └─────────────────┘
```

---

## Discussion Questions

After completing the exercise, consider:

1. How do you handle vendors who won't complete security questionnaires?
2. When is a SOC 2 report sufficient vs. needing additional assessment?
3. How do you balance thoroughness with vendor relationship friction?
4. What compensating controls can mitigate vendor risk?
5. How do you assess vendors without security certifications?

---

[← Back to Exercises Overview](../README.md) | [Previous: Incident Response](../03-incident-response-workflow/README.md) | [Next: Policy Gap Analysis →](../05-policy-gap-analysis/README.md)
