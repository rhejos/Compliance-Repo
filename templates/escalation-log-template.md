# Escalation Log Template

A standardized log for tracking compliance escalations from identification to resolution.

---

## Why This Document Exists

**Purpose:** Create a defensible record of what was escalated, when, to whom, and what happened.

**Risk it mitigates:**
- "We didn't know about it" — Timestamp proves awareness
- "Nobody told me" — Documents who was notified
- "We didn't act fast enough" — Shows response timeline
- "There's no record of what we decided" — Captures decision and rationale

**When to use:**
- Any issue that requires management attention
- Potential regulatory violations
- Customer complaints involving legal/compliance risk
- Incidents that may require disclosure
- Situations where judgment calls are made

---

## Escalation Log

### Issue Identification

| Field | Entry |
|-------|-------|
| **Log ID** | ESC-[YEAR]-[NUMBER] |
| **Date Identified** | |
| **Identified By** | |
| **Source** | [ ] Internal review [ ] Customer complaint [ ] Audit [ ] Alert [ ] Other: |
| **Initial Description** | |

### Classification

| Field | Entry |
|-------|-------|
| **Category** | [ ] Privacy [ ] Security [ ] Fraud [ ] Conduct [ ] Regulatory [ ] Operational [ ] Other: |
| **Severity** | [ ] Critical [ ] High [ ] Medium [ ] Low |
| **Regulatory Implications** | [ ] GDPR [ ] HIPAA [ ] SOX [ ] PCI-DSS [ ] SEC/FINRA [ ] State laws [ ] None apparent |
| **Estimated Impact** | # of people/records/customers affected: |

### Escalation Chain

| Date/Time | Escalated To | Role | Method | Acknowledged? |
|-----------|--------------|------|--------|---------------|
| | | | [ ] Email [ ] Call [ ] Meeting [ ] Slack | [ ] Yes [ ] No |
| | | | [ ] Email [ ] Call [ ] Meeting [ ] Slack | [ ] Yes [ ] No |
| | | | [ ] Email [ ] Call [ ] Meeting [ ] Slack | [ ] Yes [ ] No |

### Timeline

| Date/Time | Event | Action Taken | By Whom |
|-----------|-------|--------------|---------|
| | Issue identified | | |
| | Initial assessment | | |
| | Escalated to [role] | | |
| | Investigation started | | |
| | Root cause identified | | |
| | Remediation started | | |
| | Issue resolved | | |
| | Post-mortem completed | | |

### Decision Record

| Field | Entry |
|-------|-------|
| **Decision Made** | |
| **Decision Date** | |
| **Decision Maker** | |
| **Rationale** | |
| **Alternatives Considered** | |
| **Why Alternatives Rejected** | |

### Resolution

| Field | Entry |
|-------|-------|
| **Resolution Summary** | |
| **Date Resolved** | |
| **Systemic Fix Required?** | [ ] Yes [ ] No |
| **If Yes, Describe** | |
| **Notification Required?** | [ ] Customers [ ] Regulators [ ] Board [ ] None |
| **Notifications Sent** | Date: To: |

### Attachments

| Document | Location |
|----------|----------|
| Original complaint/alert | |
| Investigation notes | |
| Customer communication | |
| Remediation evidence | |

---

## Quick Reference: Escalation Criteria

When in doubt, escalate if:

| Condition | Always Escalate |
|-----------|----------------|
| Potential regulatory violation | Yes |
| Customer threatens legal action | Yes |
| Data breach (confirmed or suspected) | Yes |
| >100 people potentially affected | Yes |
| Media/reputational risk | Yes |
| You're unsure if it's serious | Yes — better to over-escalate |

---

## Example Entry

| Field | Example |
|-------|---------|
| **Log ID** | ESC-2024-0042 |
| **Date Identified** | 2024-03-15 09:30 |
| **Identified By** | J. Smith, Support Team |
| **Source** | Customer complaint |
| **Initial Description** | Customer claims deletion request not honored after 45 days |
| **Category** | Privacy |
| **Severity** | High |
| **Regulatory Implications** | GDPR (customer in Germany) |
| **Estimated Impact** | 1 customer confirmed, 3 others potentially affected |
| **Decision Made** | Full remediation + customer disclosure + process fix |
| **Rationale** | Transparency builds trust; systemic issue requires permanent fix |
| **Resolution Summary** | All data deleted, workflow updated, customer notified |
| **Date Resolved** | 2024-03-18 |
