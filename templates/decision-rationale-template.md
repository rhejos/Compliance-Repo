# Decision Rationale Template

A structured format for documenting compliance decisions and the reasoning behind them.

---

## Why This Document Exists

**Purpose:** Capture not just *what* was decided, but *why*—so the decision is defensible months or years later.

**Risk it mitigates:**
- "Why did we do it that way?" — Documents reasoning at the time
- "Who approved this?" — Identifies decision-maker and authority
- "Did we consider the alternatives?" — Shows due diligence
- "What information did you have?" — Captures context that may be forgotten

**When to use:**
- Any decision that could be questioned by auditors or regulators
- Judgment calls where reasonable people could disagree
- Policy exceptions or one-time approvals
- Situations where you're choosing between imperfect options
- Decisions made under time pressure

---

## Decision Rationale Record

### Summary

| Field | Entry |
|-------|-------|
| **Decision ID** | DEC-[YEAR]-[NUMBER] |
| **Date** | |
| **Decision Maker** | |
| **Title/Role** | |
| **Authority** | [ ] Policy grants authority [ ] Delegated by: [ ] Escalated and approved by: |

### The Decision

**Question Being Decided:**
> [What specific question or issue required a decision?]

**Decision Made:**
> [Clear statement of what was decided]

**Effective Date:**
> [When does this decision take effect?]

**Scope:**
> [Who/what does this apply to?]

---

### Context

**Background:**
> [What led to this decision? What's the situation?]

**Time Pressure:**
> [ ] None — standard process
> [ ] Moderate — needed within days
> [ ] High — needed within hours
> [ ] Urgent — needed immediately

**Information Available:**
> [What facts did you have when making this decision?]

**Information NOT Available:**
> [What would have been helpful but wasn't known?]

---

### Analysis

**Options Considered:**

| Option | Description | Pros | Cons |
|--------|-------------|------|------|
| A | | | |
| B | | | |
| C | | | |

**Decision Criteria:**

| Criterion | Weight | Notes |
|-----------|--------|-------|
| Regulatory risk | High/Med/Low | |
| Business impact | High/Med/Low | |
| Customer impact | High/Med/Low | |
| Precedent set | High/Med/Low | |
| Reversibility | High/Med/Low | |

**Why This Option:**
> [Explain why the chosen option was selected over alternatives]

**Why Not Other Options:**
> [Explain why alternatives were rejected]

---

### Risk Acknowledgment

**Risks of This Decision:**

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| | | | |
| | | | |

**Acceptable Because:**
> [Why are these risks acceptable given the circumstances?]

---

### Stakeholders

**Consulted:**
| Name | Role | Input Provided |
|------|------|----------------|
| | | |
| | | |

**Informed:**
| Name | Role | Date Informed |
|------|------|---------------|
| | | |
| | | |

---

### Review & Expiration

| Field | Entry |
|-------|-------|
| **Review Date** | [When should this decision be revisited?] |
| **Expiration** | [ ] Permanent [ ] Expires on: [ ] Until condition: |
| **Trigger for Re-evaluation** | [What would cause us to reconsider?] |

---

### Documentation

**Supporting Documents:**
- [ ] Policy reference:
- [ ] Legal opinion:
- [ ] Risk assessment:
- [ ] Meeting notes:
- [ ] Email thread:

**Signature:**

| Decision Maker | Date |
|----------------|------|
| | |

---

## Example: Completed Decision Rationale

### Summary

| Field | Entry |
|-------|-------|
| **Decision ID** | DEC-2024-0018 |
| **Date** | 2024-03-16 |
| **Decision Maker** | M. Johnson |
| **Title/Role** | VP, Compliance |
| **Authority** | Policy grants authority for customer remediation decisions |

### The Decision

**Question Being Decided:**
> Should we proactively notify all 4 affected customers of the deletion workflow gap, or only the customer who complained?

**Decision Made:**
> Notify all 4 affected customers proactively, with an explanation of what happened and confirmation that their data is now fully deleted.

**Effective Date:**
> Immediately

**Scope:**
> The 4 customers whose deletion requests were incompletely processed between Jan-Mar 2024

### Context

**Background:**
> Customer complaint revealed that our deletion workflow didn't include the marketing platform. Investigation found 3 other customers with the same issue.

**Time Pressure:**
> Moderate — one customer threatening regulatory complaint

**Information Available:**
> - List of 4 affected customers
> - Confirmation that all data is now deleted
> - Root cause identified

**Information NOT Available:**
> - Whether any affected customer noticed
> - Regulatory appetite for enforcement on self-reported issues

### Analysis

**Options Considered:**

| Option | Description | Pros | Cons |
|--------|-------------|------|------|
| A | Only notify complaining customer | Less exposure, faster | Other customers may discover later, looks like cover-up |
| B | Notify all 4 proactively | Transparent, builds trust | May create issues where none existed |
| C | Wait and notify if asked | Minimizes work | High risk if discovered, not defensible |

**Why This Option (B):**
> Transparency is our stated value. If another customer discovers this later, our failure to notify proactively becomes a second failure. The downside of proactive notification (slight embarrassment) is smaller than the downside of being caught hiding it.

**Why Not Other Options:**
> Option A treats customers unequally based on who complained loudest—not defensible. Option C is indefensible if discovered and violates our transparency commitments.

### Risk Acknowledgment

**Risks of This Decision:**

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| Other customers may complain/escalate | Medium | Medium | Offer direct line to compliance for questions |
| May trigger regulatory inquiry | Low | Medium | Document remediation thoroughly |

**Acceptable Because:**
> The alternative (being caught not disclosing) is worse. Proactive disclosure is mitigating, not aggravating.

---

## Quick Reference: When to Document a Decision

| Situation | Document? |
|-----------|-----------|
| Standard process followed | No |
| Exception to policy | Yes |
| Judgment call between options | Yes |
| Regulatory interpretation | Yes |
| Customer escalation resolution | Yes |
| Vendor risk acceptance | Yes |
| Incident response decisions | Yes |
| "This feels risky but we're doing it anyway" | Definitely yes |
