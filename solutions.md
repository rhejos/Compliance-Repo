# Data Pipeline Compliance Review - Solutions

Detailed compliance analysis for each pipeline scenario.

---

## Scenario 1: Customer Analytics Pipeline

**E-commerce platform (US-based, serves EU customers)**

### Compliance Issues Found

| Issue | Severity | Regulation |
|-------|----------|------------|
| EU customer data transferred to US without legal basis | Critical | GDPR Art. 44-49 |
| No data classification in place | High | GDPR Art. 5, SOC 2 |
| Unlimited retention ("keep everything forever") | High | GDPR Art. 5(1)(e) |
| 47 people with access (no least privilege) | High | GDPR Art. 32, SOC 2 |
| No deletion process for data subject requests | Critical | GDPR Art. 17 |
| IP addresses collected without minimization | Medium | GDPR Art. 5(1)(c) |

### Regulations Violated

- **GDPR** - Primary concern due to EU customers
- **CCPA** - If California residents are included
- **SOC 2** - If enterprise customers require it

### Recommended Fixes

1. **Cross-Border Transfer:**
   - Implement Standard Contractual Clauses (SCCs)
   - OR deploy EU data processing in EU region (eu-west-1)
   - Update architecture: EU users → Kafka (EU) → Spark (EU) → Snowflake (EU)

2. **Data Classification:**
   - Classify all data fields by sensitivity
   - Implement tagging in Snowflake
   - Document in data catalog

3. **Retention Policy:**
   - Define retention periods by data type:
     - Purchase history: 7 years (financial records)
     - Click streams: 13 months (analytics)
     - IP addresses: 30 days
   - Implement automated deletion jobs

4. **Access Control:**
   - Review and reduce from 47 to need-to-know only
   - Implement role-based access
   - Add access logging

5. **Deletion Process:**
   - Build deletion API that propagates through pipeline
   - Include Kafka topic cleanup
   - Include Snowflake record deletion
   - Audit trail for deletion requests

### Questions for Stakeholders

- What legal basis are we using for EU data processing (consent/legitimate interest)?
- Do we have SCCs or other transfer mechanisms in place?
- What's the business justification for 47 people needing Snowflake access?
- Are there downstream systems not shown that receive this data?

---

## Scenario 2: ML Training Data Pipeline

**HR Tech startup - Hiring predictions**

### Compliance Issues Found

| Issue | Severity | Regulation |
|-------|----------|------------|
| Demographics used as training features | Critical | EEOC, EU AI Act |
| Automated hiring decisions without human review | Critical | GDPR Art. 22, EEOC |
| No model cards or documentation | High | EU AI Act, NYC Local Law 144 |
| Data from 50+ clients mixed together | High | Data agreements, GDPR |
| No process to remove data from trained model | High | GDPR Art. 17 |
| Training data kept indefinitely | High | GDPR Art. 5(1)(e) |

### Regulations Violated

- **GDPR Article 22** - Automated individual decision-making
- **EU AI Act** - High-risk AI system (hiring)
- **NYC Local Law 144** - AI in hiring requires bias audits
- **EEOC Guidelines** - Potential disparate impact
- **State laws** - IL BIPA, MD AI hiring laws

### Recommended Fixes

1. **Remove Demographics from Features:**
   - Demographics should NOT be training features
   - Use only for bias testing (separate from training)
   - Implement fairness constraints in training

2. **Human-in-the-Loop:**
   - Change from "hire/no-hire" to "score with explanation"
   - Require human review of all decisions
   - Document human override capability

3. **Model Documentation:**
   - Create model cards for all models:
     - Training data sources
     - Features used
     - Performance metrics by demographic group
     - Known limitations
   - Version control all documentation

4. **Data Isolation:**
   - Separate data by client
   - Implement client-specific models or federated learning
   - Document data processing agreements per client

5. **Deletion Capability:**
   - Track which individuals' data trained which model versions
   - Implement model retraining workflow for deletion requests
   - Or implement machine unlearning techniques

6. **Bias Auditing:**
   - Implement regular bias audits (quarterly)
   - Test for disparate impact across protected groups
   - Document and publish audit results

### Questions for Stakeholders

- Do client contracts allow data mixing across companies?
- What's the human review process for hiring recommendations?
- Have we conducted disparate impact testing?
- Do we operate in NYC (Local Law 144) or Illinois (BIPA)?

---

## Scenario 3: Healthcare Data Lake

**Health analytics provider - Research outputs**

### Compliance Issues Found

| Issue | Severity | Regulation |
|-------|----------|------------|
| "De-identified" data includes quasi-identifiers | Critical | HIPAA Safe Harbor |
| Zip codes + birth dates + admission dates = re-identification risk | Critical | HIPAA §164.514 |
| Research outputs shared without DUA verification | High | HIPAA |
| 90-day log retention (HIPAA requires 6 years) | High | HIPAA §164.530(j) |
| No minimum necessary review | Medium | HIPAA §164.502(b) |

### Regulations Violated

- **HIPAA Privacy Rule** - De-identification requirements
- **HIPAA Security Rule** - Audit controls
- **HITECH Act** - Breach notification if re-identification occurs

### HIPAA Safe Harbor Requirements Not Met

Per HIPAA Safe Harbor, these must be removed/generalized:
- ❌ Zip codes (must truncate to 3 digits for small populations)
- ❌ Birth dates (year only, or if >89 years, aggregate)
- ❌ Admission dates (must be removed)

**Expert Determination Alternative:**
- Hire qualified statistical expert
- Document re-identification risk assessment
- Apply appropriate protections

### Recommended Fixes

1. **Fix De-identification:**
   - Truncate zip codes to 3 digits
   - Convert birth dates to age ranges
   - Remove admission dates or aggregate to month/year
   - Remove all 18 HIPAA identifiers

2. **Extend Log Retention:**
   - Increase from 90 days to 6 years minimum
   - Include all access logs
   - Ensure logs are tamper-evident

3. **Research Output Controls:**
   - Implement Data Use Agreements (DUAs) for academic partners
   - Review minimum necessary before sharing
   - Add cell suppression for small counts

4. **Access Audit:**
   - Review who has access via Azure AD
   - Implement role-based access control
   - Add audit logging for all data access

5. **BAA Review:**
   - Verify BAAs cover all data uses
   - Include academic partners if they receive PHI
   - Document covered vs. non-covered uses

### Questions for Stakeholders

- Has our de-identification method been validated by an expert?
- Do academic partners sign DUAs before receiving data?
- What is the minimum data needed for each research use case?
- Are there any state-specific health privacy laws (CA CMIA, TX THIPA)?

---

## Scenario 4: Real-Time Fraud Detection

**Payment processor - Card data**

### Compliance Issues Found

| Issue | Severity | Regulation |
|-------|----------|------------|
| CVV stored in Kafka for 24 hours | Critical | PCI-DSS 3.2.2 |
| Full PAN in PostgreSQL | High | PCI-DSS 3.4 |
| Full transaction details in S3 archive | High | PCI-DSS 3.1 |
| 15 analysts with dashboard access (full data?) | Medium | PCI-DSS 7 |
| Weekly exports to partner banks | High | PCI-DSS 12.8 |

### PCI-DSS Requirements Analysis

| Requirement | Status | Issue |
|-------------|--------|-------|
| 3.2.2 - No CVV storage after auth | ❌ FAIL | CVV in Kafka 24 hours |
| 3.4 - Render PAN unreadable | ⚠️ Partial | Encrypted but not masked |
| 7.1 - Limit access | ⚠️ Partial | 15 analysts may be excessive |
| 9 - Physical security | ? | Need to verify |
| 10 - Track access | ? | Need to verify logging |
| 12.8 - Service provider management | ⚠️ Partial | Partner bank agreements |

### Recommended Fixes

1. **CVV - Immediate Fix Required:**
   - NEVER store CVV post-authorization
   - Remove from Kafka messages immediately after auth
   - Audit all locations CVV may have been stored
   - This is a PCI-DSS deal-breaker

2. **PAN Protection:**
   - Tokenize PANs at ingestion
   - Use tokenization service (e.g., Vault, AWS Payment Cryptography)
   - Store only tokens in PostgreSQL and S3
   - Keep mapping in isolated cardholder data environment (CDE)

3. **Network Segmentation:**
   - Isolate Kafka, PostgreSQL, and fraud analysis into CDE
   - Elasticsearch dashboards should show only masked/tokenized data
   - Implement strict network controls between CDE and corporate

4. **Access Review:**
   - Review 15 analyst access - do all need full PAN?
   - Most fraud analysis can use last-4 digits
   - Implement audit logging for all access

5. **Partner Exports:**
   - Review what data is in weekly exports
   - Verify partner banks are PCI-DSS compliant
   - Sign appropriate agreements
   - Consider if full PAN is needed or tokens sufficient

6. **Archive Review:**
   - What's in S3 archive?
   - If full PANs, need tokenization or encryption
   - Review retention policy (PCI-DSS doesn't require 7 years)

### Questions for Stakeholders

- Is there any business reason CVV is stored for 24 hours?
- Do all 15 analysts need to see full card numbers?
- What data is in the weekly partner bank exports?
- Is the network properly segmented into CDE and non-CDE?

---

## Scenario 5: Customer 360 Platform

**Retail conglomerate - Unified profiles**

### Compliance Issues Found

| Issue | Severity | Regulation |
|-------|----------|------------|
| No unified consent management | Critical | GDPR Art. 6-7, CCPA |
| Different systems collected consent differently | High | GDPR Art. 7 |
| Marketing uses data without clear consent basis | High | GDPR Art. 6 |
| No data subject access request capability | Critical | GDPR Art. 15, CCPA |
| No documentation of data origin | High | GDPR Art. 30 |
| Location data collected in-store | High | GDPR Art. 5 |

### Consent Matrix Problem

| Source | Consent Collected? | Consent Type | Covers Marketing? |
|--------|-------------------|--------------|-------------------|
| Online Store | ? | Unknown | Unknown |
| Mobile App | ? | Unknown | Unknown |
| In-Store POS | Unlikely | None | No |
| Customer Service | ? | Unknown | Unknown |

### Recommended Fixes

1. **Consent Inventory:**
   - Audit all 5 source systems
   - Document what consent was collected, when, and how
   - Map consent to specific data uses

2. **Consent Management Platform (CMP):**
   - Implement central consent management
   - Sync consent across all systems
   - Track consent timestamps and versions
   - Enable consent withdrawal

3. **Data Subject Rights:**
   - Build "My Data" dashboard for customers
   - Implement data export capability (portability)
   - Implement deletion capability across all systems
   - Include BigQuery and Marketing Automation

4. **Data Lineage:**
   - Implement data lineage tracking
   - Tag each record with source system
   - Document transformations
   - Use tools like Apache Atlas or similar

5. **Purpose Separation:**
   - Define clear purposes: fulfillment, support, marketing, analytics
   - Ensure consent covers each purpose
   - Don't merge data across purposes without consent

6. **Location Data:**
   - Review necessity of in-store location tracking
   - If needed, get explicit consent via app
   - Implement minimization (aggregate, not individual)

### Questions for Stakeholders

- What consent language was used in each source system?
- Do we have records of when customers consented?
- Are there contracts with customers that allow data use?
- What's the legal basis for combining data across systems?

---

## Scenario 6: Cross-Border Data Synchronization

**Global SaaS provider - Multi-region**

### Compliance Issues Found

| Issue | Severity | Regulation |
|-------|----------|------------|
| EU data replicates to US-East | Critical | GDPR Art. 44-49 |
| "Data residency" promise violated | Critical | Contract breach, GDPR |
| Legal team unaware of architecture | High | Governance failure |
| Backups stored in US | High | GDPR Art. 44-49 |
| Analytics warehouse aggregates all regions | High | GDPR Art. 44-49 |

### Data Flow Analysis

```
EU Customer Data Flow (Current - NON-COMPLIANT):
EU User → EU-WEST App → US-EAST Primary DB ← VIOLATION
                     → US Analytics ← VIOLATION
                     → US Backups ← VIOLATION
```

### Recommended Fixes

1. **Immediate Architecture Change:**
   - Stop replication of EU data to US
   - Options:
     a) EU-Primary: Make EU-West the primary for EU customers
     b) Regional Isolation: Separate databases per region
     c) Selective Replication: Only non-PII replicates

2. **Recommended Architecture:**
   ```
   EU Users → EU-WEST (Primary for EU) → EU-WEST Read Replicas only
   US Users → US-EAST (Primary for US) → US replicas
   APAC Users → APAC (Primary for APAC) → APAC replicas
   ```

3. **Analytics Solution:**
   - EU analytics stays in EU
   - Aggregate/anonymize before sending to US
   - Or: Regional analytics warehouses

4. **Backup Solution:**
   - EU backups stay in EU region
   - Use regional backup services
   - Document backup locations

5. **Legal Alignment:**
   - Brief legal team on actual architecture
   - Update customer contracts if needed
   - Implement transfer impact assessments

6. **Technical Implementation:**
   - Use database row-level filtering for replication
   - Tag data with origin region
   - Implement controls to prevent cross-region leakage

### Questions for Stakeholders

- Which EU enterprise customers were promised data residency?
- What exactly was promised (processing, storage, backups)?
- Can we modify contracts or must we fix architecture?
- What's the timeline for remediation?

---

## Scenario 7: Log Aggregation Pipeline

**SaaS platform - Application logs**

### Compliance Issues Found

| Issue | Severity | Regulation |
|-------|----------|------------|
| Passwords logged on login errors | Critical | Security, GDPR Art. 32 |
| Tokens in request URLs | High | Security |
| PII in logs (emails, IPs, user IDs) | High | GDPR Art. 5 |
| Logs retained "forever" | High | GDPR Art. 5(1)(e) |
| Request/response bodies logged | High | Data minimization |
| Third-party (Sentry) receives data | High | GDPR Art. 28 |
| 20+ engineers with access | Medium | GDPR Art. 32 |

### Recommended Fixes

1. **Immediate: Stop Logging Passwords:**
   - Add scrubbing at Fluentd layer
   - Pattern: Scrub any field named "password", "pwd", "secret"
   - Review and purge existing logs with passwords

2. **URL Token Scrubbing:**
   - Scrub query parameters: token, api_key, auth, etc.
   - Implement allowlist of safe parameters

3. **PII Scrubbing Pipeline:**
   ```
   App Logs → Fluentd (scrubbing) → Elasticsearch (scrubbed) → S3 (scrubbed)

   Scrub:
   - Email patterns (regex)
   - IP addresses (mask or hash)
   - Names (if detectable)
   - Any identified PII fields
   ```

4. **Retention Policy:**
   - Elasticsearch: 30-90 days (operational needs)
   - S3: Delete after 1 year (or legal requirement)
   - Implement automated lifecycle policies

5. **Request Body Logging:**
   - Default: Don't log request/response bodies
   - If needed: Implement selective logging with scrubbing
   - Never log at DEBUG level in production

6. **Third-Party DPA:**
   - Sign Data Processing Agreement with Sentry
   - Configure Sentry to scrub PII
   - Review what data is sent

7. **Access Review:**
   - Review 20+ engineer access
   - Implement role-based access
   - Scrubbed logs can have broader access
   - Raw logs (if any) need restricted access

### Questions for Stakeholders

- Is there a legitimate need for DEBUG logging in production?
- What's the minimum log retention for operational needs?
- Do we have a DPA with Sentry?
- Can we reduce the 20+ engineers to essential only?

---

## Scenario 8: IoT Data Platform

**Smart home device manufacturer**

### Compliance Issues Found

| Issue | Severity | Regulation |
|-------|----------|------------|
| Vague ToS ("may be used to improve products") | High | GDPR Art. 13-14, CCPA |
| Voice recordings kept for "model improvement" | Critical | GDPR Art. 5, wiretap laws |
| Data shared with insurance/energy partners | Critical | GDPR Art. 6, CCPA |
| No way for users to see their data | Critical | GDPR Art. 15, CCPA |
| No way for users to delete data | Critical | GDPR Art. 17, CCPA |
| EU and US users treated identically | High | GDPR |
| Behavioral inference (when home/away) | High | GDPR Art. 9 (profiling) |

### Sensitive Data Analysis

| Data Type | Sensitivity | Risk |
|-----------|-------------|------|
| Voice commands | High | Recording consent issues |
| Usage patterns | Medium | Behavioral profiling |
| Device location (home address) | High | Physical security |
| "When home/away" inference | High | Burglary risk if exposed |
| Other devices on network | High | Household profiling |

### Recommended Fixes

1. **Consent Overhaul:**
   - Explicit opt-in for voice recording storage
   - Separate consent for partner data sharing
   - Clear consent for "improvement" uses
   - Easy opt-out mechanisms

2. **Voice Recording Policy:**
   - Default: Don't store voice recordings
   - If stored: Explicit consent with duration
   - Allow review and deletion
   - Consider on-device processing

3. **Partner Data Sharing:**
   - Require explicit, informed consent
   - Disclose which partners and what data
   - CCPA: "Do Not Sell My Information" option
   - Implement preference center

4. **Data Subject Rights:**
   - Build data access portal
   - Show all collected data types
   - Enable data export (portability)
   - Enable deletion with confirmation

5. **EU-Specific Handling:**
   - Process EU data in EU region
   - Apply GDPR requirements to EU users
   - Consider GDPR as baseline for all users

6. **Privacy by Design:**
   - Minimize data collection
   - Process locally where possible
   - Aggregate rather than individual-level
   - Default privacy-protective settings

### Regulatory Risk Matrix

| Regulation | Risk Level | Key Issues |
|------------|------------|------------|
| GDPR | Critical | Consent, data subject rights, transfers |
| CCPA | High | Sale of data to partners, access rights |
| Wiretap laws | Critical | Voice recording without clear consent |
| FTC | High | Deceptive practices (vague ToS) |

### Questions for Stakeholders

- Is voice recording storage necessary for product function?
- What's the business model with insurance/energy partners?
- Can we process more data on-device?
- What would happen to revenue if we required opt-in for sharing?

---

## Summary: Common Patterns

### Across All Scenarios

| Pattern | Frequency | Impact |
|---------|-----------|--------|
| Cross-border data transfer issues | 4/8 | Critical |
| Missing deletion capability | 6/8 | High |
| Excessive data retention | 5/8 | High |
| Too many people with access | 5/8 | Medium-High |
| Consent/legal basis unclear | 4/8 | High |
| Missing data lineage | 4/8 | Medium |
| Third-party sharing without controls | 3/8 | High |

### Top Remediation Priorities (All Organizations)

1. **Map your data flows** - Know where data goes
2. **Implement deletion** - If you can't delete, you'll fail GDPR
3. **Control access** - Least privilege always
4. **Define retention** - "Forever" is never acceptable
5. **Document consent** - Know your legal basis
6. **Encrypt everything** - At rest and in transit
7. **Log access** - You'll need it for audits
