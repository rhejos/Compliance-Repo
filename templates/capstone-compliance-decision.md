# Capstone: End-to-End Compliance Decision

This capstone demonstrates how to handle a compliance issue from detection to resolution—showing judgment, documentation, and defensible decision-making.

---

## Why This Document Exists

Compliance work isn't about following a script. It's about making defensible decisions when:
- The rules don't give a clear answer
- Multiple stakeholders have different priorities
- Time pressure conflicts with thoroughness
- The "right" answer depends on context

This capstone walks through that process.

---

## The Scenario

**Context:** A mid-sized company (500 employees, B2B SaaS) receives a customer complaint:

> "We requested deletion of our data 45 days ago. Your privacy policy says 30 days. We're still receiving marketing emails with our company name. We're evaluating whether to report this to regulators."

**What you know:**
- The customer is based in Germany (GDPR applies)
- They submitted a deletion request via email to support@company.com
- The support ticket was closed as "resolved" 30 days ago
- Marketing emails were sent 10 days ago and 3 days ago
- The customer is a $200K/year account

**What you don't know:**
- Whether all systems were actually purged
- Why marketing emails continued
- Whether this is an isolated incident or systemic

---

## Part 1: Initial Assessment

### Questions to Answer First

| Question | Why It Matters |
|----------|---------------|
| Is this a data breach? | Determines notification obligations |
| What's our exposure? | GDPR fines up to €20M or 4% of revenue |
| Is this systemic? | One customer vs. hundreds affected |
| What's the timeline pressure? | Customer may report to regulators |

### My Assessment

**Classification:** Potential GDPR Article 17 violation (Right to Erasure)

**Severity:** High
- Deletion request not fully honored
- Customer explicitly threatening regulatory complaint
- Marketing system retained data it shouldn't have

**Immediate Actions Needed:**
1. Stop marketing emails to this customer immediately
2. Investigate what data remains and where
3. Prepare customer response within 24 hours

---

## Part 2: Investigation

### Data Mapping

| System | Data Type | Deletion Status | Owner |
|--------|-----------|-----------------|-------|
| CRM (Salesforce) | Account, contacts | Deleted | Sales Ops |
| Support (Zendesk) | Tickets, emails | Deleted | Support |
| Marketing (HubSpot) | Email, company name | **NOT DELETED** | Marketing |
| Analytics (Mixpanel) | Usage events | Deleted | Product |
| Billing (Stripe) | Payment history | Retained (legal hold) | Finance |
| Backups | All of the above | **Unknown** | IT |

### Root Cause

The deletion workflow didn't include HubSpot. The support team marked the ticket "resolved" after deleting from CRM, Zendesk, and Mixpanel—but nobody owned the marketing system deletion.

**Systemic?** Yes. Checked 10 other deletion requests from the past 90 days—3 others have the same gap.

---

## Part 3: Decision Framework

### Options Considered

| Option | Pros | Cons |
|--------|------|------|
| **A: Quick fix, apologize** | Fast, preserves relationship | Doesn't fix systemic issue |
| **B: Full remediation + disclosure** | Transparent, defensible | Takes longer, may escalate |
| **C: Proactive regulator notification** | Shows good faith | May trigger investigation |

### Decision Criteria

| Factor | Weight | Notes |
|--------|--------|-------|
| Regulatory risk | High | GDPR requires "without undue delay" |
| Customer relationship | Medium | Large account, but trust is broken |
| Systemic impact | High | 3 other customers affected |
| Precedent | Medium | How we handle this sets expectations |

### My Recommendation

**Option B: Full remediation + disclosure**

**Rationale:**
1. GDPR requires deletion "without undue delay"—45 days is already a violation
2. The customer knows something is wrong—partial truth will backfire
3. Systemic issue means we need a process fix, not just a patch
4. Proactive disclosure to the customer (not regulator) shows good faith

---

## Part 4: Action Plan

### Immediate (24 hours)

| Action | Owner | Status |
|--------|-------|--------|
| Suppress customer in HubSpot | Marketing Ops | Done |
| Complete HubSpot deletion | Marketing Ops | Done |
| Verify backup retention policy | IT | In Progress |
| Draft customer response | Compliance | In Progress |

### Short-term (7 days)

| Action | Owner | Status |
|--------|-------|--------|
| Audit other 3 affected customers | Compliance | Pending |
| Fix deletion workflow to include HubSpot | Ops | Pending |
| Update deletion checklist | Compliance | Pending |
| Train support team on new process | Training | Pending |

### Long-term (30 days)

| Action | Owner | Status |
|--------|-------|--------|
| Implement deletion verification system | Engineering | Pending |
| Quarterly deletion audits | Compliance | Pending |
| Update privacy policy if needed | Legal | Pending |

---

## Part 5: Customer Response

**Draft email:**

> Subject: Follow-up on Your Data Deletion Request
>
> Dear [Customer],
>
> Thank you for bringing this to our attention. You're right—this shouldn't have happened.
>
> After investigating, we found that while your data was deleted from our primary systems within 30 days, our marketing platform was not included in our deletion workflow. This has now been corrected:
>
> - All your data has been deleted from all systems
> - We've implemented a fix to prevent this from happening again
> - We're auditing our processes to ensure compliance
>
> We take data protection seriously, and we failed to meet the standard you expect—and that we expect of ourselves. I'd welcome a call to discuss any remaining concerns.
>
> Sincerely,
> [Name], Compliance

---

## Part 6: Documentation for the File

### Decision Record

| Field | Value |
|-------|-------|
| Issue ID | COMP-2024-0042 |
| Date Identified | [Date] |
| Reported By | Customer complaint |
| Classification | GDPR Art. 17 violation |
| Severity | High |
| Root Cause | Incomplete deletion workflow |
| Systemic? | Yes (4 customers affected) |
| Resolution | Full deletion + process fix |
| Regulator Notified? | No (not required for this type) |
| Customer Notified? | Yes |
| Date Closed | [Date] |

### Lessons Learned

1. **Deletion checklists must cover ALL systems**—including marketing, analytics, and backups
2. **"Resolved" isn't resolved** until verified across systems
3. **Systemic checks matter**—one complaint often indicates a pattern
4. **Speed vs. thoroughness**: We chose thoroughness; customer appreciated transparency

---

## What This Capstone Demonstrates

| Skill | How It's Shown |
|-------|---------------|
| **Judgment under ambiguity** | Chose Option B when no option was perfect |
| **Regulatory interpretation** | Applied GDPR Art. 17 to real situation |
| **Root cause analysis** | Found systemic gap, not just one-off error |
| **Stakeholder communication** | Drafted customer response, escalation log |
| **Documentation rigor** | Created audit trail for future reference |
| **Process improvement** | Turned incident into workflow fix |

---

## Template: Use This Structure for Your Own Cases

```markdown
## Situation
[What happened? Who's affected? What's the timeline?]

## Assessment
[Classification, severity, immediate actions needed]

## Investigation
[What did you find? Root cause? Systemic or isolated?]

## Options Considered
[What choices did you have? Pros/cons of each]

## Decision & Rationale
[What did you decide? Why?]

## Action Plan
[Immediate, short-term, long-term actions]

## Documentation
[Decision record, lessons learned]
```
