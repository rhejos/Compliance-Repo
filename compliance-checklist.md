# Data Pipeline Compliance Checklist

Use this checklist when reviewing any data pipeline for compliance risks.

---

## Pre-Deployment Review

Complete this checklist before any new pipeline goes to production.

### 1. Data Inventory

| Check | Question | Answer |
|-------|----------|--------|
| [ ] | What data types does this pipeline process? | |
| [ ] | Does it include any PII (names, emails, IPs, device IDs)? | |
| [ ] | Does it include any sensitive data (health, financial, biometric)? | |
| [ ] | What is the data classification level? | Public / Internal / Confidential / Restricted |
| [ ] | Is there a data dictionary documenting all fields? | |

### 2. Regulatory Scope

| Regulation | Applies? | Why? |
|------------|----------|------|
| GDPR | Yes / No | |
| CCPA/CPRA | Yes / No | |
| HIPAA | Yes / No | |
| PCI-DSS | Yes / No | |
| SOC 2 | Yes / No | |
| Industry-specific | Yes / No | |

**Trigger Questions:**
- Does this process EU residents' data? → GDPR
- Does this process California residents' data? → CCPA
- Does this include health information? → HIPAA
- Does this include payment card data? → PCI-DSS
- Is this a B2B service with enterprise customers? → SOC 2

### 3. Data Flow Mapping

| Stage | Location | Data Present | Encryption |
|-------|----------|--------------|------------|
| Source | | | At rest / In transit |
| Ingestion | | | At rest / In transit |
| Processing | | | At rest / In transit |
| Storage | | | At rest / In transit |
| Output | | | At rest / In transit |

**Cross-Border Check:**
| Source Region | Destination Region | Legal Basis |
|---------------|-------------------|-------------|
| | | |
| | | |

### 4. Access Controls

| System/Stage | Who Has Access? | Access Level | Logged? |
|--------------|-----------------|--------------|---------|
| | | Read / Write / Admin | Yes / No |
| | | Read / Write / Admin | Yes / No |
| | | Read / Write / Admin | Yes / No |
| | | Read / Write / Admin | Yes / No |

**Questions:**
- [ ] Is access based on least-privilege principle?
- [ ] Are service accounts documented?
- [ ] Is there a process to revoke access when employees leave?
- [ ] Are access logs retained for required period?

### 5. Retention & Deletion

| Data Type | Retention Period | Deletion Process | Backups Included? |
|-----------|------------------|------------------|-------------------|
| | | | Yes / No |
| | | | Yes / No |
| | | | Yes / No |

**Deletion Capability Check:**
- [ ] Can individual records be deleted?
- [ ] Can deletion propagate to all downstream systems?
- [ ] Can deletion be verified/audited?
- [ ] Are ML models that used this data documented?

### 6. Data Lineage

- [ ] Can you trace any record back to its original source?
- [ ] Are all transformations documented?
- [ ] Is lineage stored in a queryable format?
- [ ] Can you prove data provenance for auditors?

**Lineage Documentation:**
| Source System | Transformation | Destination | Documentation |
|---------------|----------------|-------------|---------------|
| | | | |
| | | | |

### 7. Consent & Purpose

| Data Element | Original Collection Purpose | Current Use Purpose | Consent Covers Use? |
|--------------|----------------------------|---------------------|---------------------|
| | | | Yes / No |
| | | | Yes / No |
| | | | Yes / No |

**Purpose Limitation Check:**
- [ ] Is data being used only for the purpose it was collected?
- [ ] If purpose changed, was new consent obtained?
- [ ] Is consent tracked per data element?

### 8. Security Controls

| Control | Implemented? | Details |
|---------|--------------|---------|
| Encryption at rest | Yes / No | Algorithm: |
| Encryption in transit | Yes / No | TLS version: |
| Network segmentation | Yes / No | |
| Vulnerability scanning | Yes / No | Frequency: |
| Penetration testing | Yes / No | Last test: |
| Secret management | Yes / No | Tool: |
| WAF/DDoS protection | Yes / No | |

### 9. Third-Party Sharing

| Third Party | Data Shared | Purpose | DPA in Place? |
|-------------|-------------|---------|---------------|
| | | | Yes / No |
| | | | Yes / No |

**Third-Party Checklist:**
- [ ] Is each third party vetted for security/compliance?
- [ ] Are Data Processing Agreements (DPAs) signed?
- [ ] Is there a process to notify third parties of deletion requests?
- [ ] Are third parties documented in privacy policy?

### 10. Incident Response

- [ ] Is this pipeline covered by incident response plan?
- [ ] Are there alerts for suspicious access patterns?
- [ ] Is there a runbook for data breach involving this pipeline?
- [ ] Can affected individuals be identified within 72 hours?

---

## Quick Reference: Red Flags

Stop and escalate if you find any of these:

| Red Flag | Risk Level | Action |
|----------|------------|--------|
| EU data going to US without SCCs/adequacy decision | Critical | Stop deployment, consult legal |
| PII in logs without scrubbing | High | Implement scrubbing before deployment |
| No deletion capability for user data | High | Design deletion process |
| CVV/CVN stored anywhere | Critical | Never store CVV - PCI-DSS violation |
| Health data without HIPAA controls | Critical | Implement HIPAA compliance |
| Unlimited retention on personal data | High | Define retention policy |
| Demographics used in ML without bias testing | High | Implement fairness testing |
| No encryption on personal data | High | Implement encryption |
| 50+ people with access to sensitive data | Medium | Review and restrict access |
| No audit logs on data access | High | Implement logging |

---

## Sign-Off

| Role | Name | Date | Signature |
|------|------|------|-----------|
| Data Engineer | | | |
| Data Owner | | | |
| Security | | | |
| Legal/Compliance | | | |

**Notes:**
