# Exercise 09: Data Pipeline Compliance Review

**Effort Level:** Medium-High
**Time to Complete:** 4-6 hours
**Target Audience:** Data Engineers, ML Engineers, Cloud Architects, DevOps

---

## Why This Exercise Exists

> You're a data engineer. You build pipelines that move terabytes daily. You don't think about compliance—that's Legal's job, right?
>
> Wrong. That pipeline you deployed last week? It copies EU customer data to a US data warehouse. That's potentially a GDPR violation. The logs you're storing? They contain IP addresses—that's personal data. The ML training set you created? It might need to be deleted when customers exercise their "right to be forgotten."
>
> This exercise teaches you to think about compliance **before** you deploy.

---

## Learning Objectives

By completing this exercise, you will be able to:

1. **Identify** compliance risks in data pipeline architectures
2. **Classify** data by sensitivity level and applicable regulations
3. **Design** pipelines that respect data residency requirements
4. **Implement** data retention and deletion policies
5. **Audit** existing pipelines for compliance gaps
6. **Document** data lineage for regulatory requirements

---

## Background

### What Data Engineers Need to Know

| Concept | What It Means for Your Pipeline |
|---------|--------------------------------|
| **Data Residency** | Some data can't leave certain countries/regions |
| **Data Minimization** | Only collect/store what you actually need |
| **Purpose Limitation** | Data collected for X can't be used for Y without consent |
| **Retention Limits** | You can't keep data forever—policies vary by type |
| **Right to Deletion** | Users can request their data be deleted—from everywhere |
| **Data Lineage** | You must track where data came from and where it went |
| **Audit Logging** | You must log who accessed what and when |
| **Encryption** | Data at rest and in transit must be protected |

### Common Pipeline Compliance Failures

| Failure | Example | Consequence |
|---------|---------|-------------|
| Cross-border transfer | EU data replicated to US S3 bucket | GDPR violation, potential €20M+ fine |
| Over-retention | Keeping deleted users in analytics DB | Data minimization violation |
| Purpose creep | Marketing uses data collected for support | Purpose limitation violation |
| Missing lineage | Can't prove where training data came from | Audit failure, model recall |
| Log exposure | PII in application logs sent to Splunk | Security breach |
| Backup sprawl | Deleted data still in 47 backup copies | Deletion request not fulfilled |

---

## Files in This Exercise

| File | Description |
|------|-------------|
| [README.md](README.md) | This file—overview and instructions |
| [pipeline-scenarios.md](pipeline-scenarios.md) | 8 data pipeline architectures to review |
| [compliance-checklist.md](compliance-checklist.md) | Checklist template for pipeline review |
| [cloud-considerations.md](cloud-considerations.md) | AWS/Azure/GCP compliance specifics |
| [solutions.md](solutions.md) | Detailed compliance review with findings |

---

## Instructions

### Part 1: Study the Compliance Checklist

Review [compliance-checklist.md](compliance-checklist.md) to understand what to look for when reviewing a data pipeline.

### Part 2: Review Each Pipeline Scenario

For each scenario in [pipeline-scenarios.md](pipeline-scenarios.md):

1. **Diagram the data flow** - Where does data come from? Where does it go?
2. **Classify the data** - What types of data? What regulations apply?
3. **Identify risks** - What could go wrong from a compliance perspective?
4. **Recommend fixes** - How would you redesign for compliance?
5. **Document findings** - Write a brief compliance assessment

### Part 3: Compare to Solutions

Review [solutions.md](solutions.md) to compare your findings.

---

## Key Concepts

### Data Classification

| Level | Examples | Handling Requirements |
|-------|----------|----------------------|
| **Public** | Marketing content, public APIs | No special requirements |
| **Internal** | Employee directories, internal docs | Access controls |
| **Confidential** | Customer data, financial records | Encryption, access logging |
| **Restricted** | SSN, health records, payment cards | Encryption, strict access, compliance frameworks |

### Regulatory Quick Reference

| Regulation | Applies To | Key Pipeline Requirements |
|------------|-----------|---------------------------|
| **GDPR** | EU residents' data | Consent, deletion rights, 72-hour breach notification, data minimization |
| **CCPA** | California residents | Right to know, right to delete, opt-out of sale |
| **HIPAA** | US health data | Encryption, access controls, audit trails, BAAs |
| **PCI-DSS** | Payment card data | Encryption, segmentation, no CVV storage |
| **SOC 2** | Service providers | Controls for security, availability, confidentiality |

### Cloud Data Residency

| Cloud Provider | Region Consideration |
|----------------|---------------------|
| **AWS** | Data stays in region unless you configure cross-region replication |
| **Azure** | Some services replicate globally by default (check settings) |
| **GCP** | Multi-region storage may span countries |
| **All** | Backups, logs, and metadata may replicate to other regions |

---

## Pipeline Review Framework

For each pipeline, answer:

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         PIPELINE COMPLIANCE REVIEW                           │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│  1. DATA INVENTORY                                                           │
│     □ What data does this pipeline process?                                  │
│     □ What is the sensitivity classification?                                │
│     □ What regulations apply?                                                │
│                                                                              │
│  2. DATA FLOW                                                                │
│     □ Where does data originate?                                             │
│     □ Where does data travel? (regions, systems)                             │
│     □ Where does data land? (final destinations)                             │
│     □ Are there any cross-border transfers?                                  │
│                                                                              │
│  3. ACCESS & SECURITY                                                        │
│     □ Who/what has access at each stage?                                     │
│     □ Is data encrypted at rest? In transit?                                 │
│     □ Are access logs maintained?                                            │
│                                                                              │
│  4. RETENTION & DELETION                                                     │
│     □ How long is data retained?                                             │
│     □ Can individual records be deleted?                                     │
│     □ Are backups included in deletion scope?                                │
│                                                                              │
│  5. LINEAGE & AUDIT                                                          │
│     □ Can you trace data back to its source?                                 │
│     □ Can you prove what transformations occurred?                           │
│     □ Would this survive a regulatory audit?                                 │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## Real-World Context

### Why This Matters

- **Marriott (2020):** $23.8M GDPR fine—failed to do due diligence on acquired company's data practices
- **British Airways (2020):** $26M GDPR fine—inadequate security measures in data processing
- **H&M (2020):** €35M GDPR fine—excessive employee data processing
- **Amazon (2021):** €746M GDPR fine—processing personal data without proper consent

Many of these involved technical decisions made by engineers who didn't consider compliance implications.

---

## Navigation

To return to the main branch:
```bash
git checkout main
```

To go to the previous exercise:
```bash
git checkout claude/exercise-08-communications-review-simulation-21lOv
```

To go to the next exercise:
```bash
git checkout claude/exercise-10-ml-model-governance-21lOv
```
