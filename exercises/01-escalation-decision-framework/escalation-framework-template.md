# Escalation Decision Framework Template

This template provides a structured approach to making and documenting escalation decisions.

---

## 1. Issue Classification

### Issue Categories

| Category | Description | Primary Owner |
|----------|-------------|---------------|
| **Security Incident** | Potential or confirmed breach, vulnerability, attack | IT Security |
| **Privacy Concern** | Data subject rights, unauthorized disclosure, consent issues | Privacy/Legal |
| **Regulatory Violation** | Breach of law/regulation, audit finding, enforcement action | Compliance/Legal |
| **Policy Violation** | Employee misconduct, procedure breach | Compliance/HR |
| **Third-Party Risk** | Vendor/partner security issue, contract breach | Vendor Management |
| **Financial Irregularity** | Suspicious transactions, fraud indicators | Finance/Compliance |
| **Reputational Risk** | Media inquiry, public complaint, social media issue | Communications/Legal |

---

## 2. Severity Assessment Matrix

Use this matrix to determine severity based on impact and likelihood:

### Impact Assessment

| Level | Business Impact | Regulatory Impact | Customer Impact |
|-------|----------------|-------------------|-----------------|
| **Critical** | Business continuity threatened | Enforcement action likely | Large-scale harm |
| **High** | Significant financial/operational impact | Investigation likely | Meaningful harm |
| **Medium** | Moderate impact, manageable | Minor finding likely | Limited impact |
| **Low** | Minimal impact | Unlikely finding | Negligible |

### Urgency Factors

Add urgency weight if any apply:
- [ ] Regulatory notification deadline approaching
- [ ] Media/public awareness imminent
- [ ] Ongoing harm to customers or employees
- [ ] Evidence at risk of destruction
- [ ] Multiple parties/systems affected
- [ ] Senior personnel involved
- [ ] Repeat occurrence

---

## 3. Escalation Decision Tree

```
START: Issue Identified
    │
    ▼
┌─────────────────────────────────────────────┐
│ Is there immediate harm occurring?          │
└─────────────────────────────────────────────┘
    │                    │
   YES                  NO
    │                    │
    ▼                    ▼
┌─────────┐    ┌─────────────────────────────────────────────┐
│CRITICAL │    │ Does this involve a potential legal         │
│Escalate │    │ violation or regulatory requirement?        │
│Immediately│   └─────────────────────────────────────────────┘
└─────────┘         │                    │
                   YES                  NO
                    │                    │
                    ▼                    ▼
           ┌─────────────────┐  ┌─────────────────────────────────────┐
           │ Is notification │  │ Does this involve senior leadership,│
           │ deadline < 72hrs?│  │ large financial impact, or multiple │
           └─────────────────┘  │ business units?                     │
              │         │       └─────────────────────────────────────┘
             YES       NO          │                    │
              │         │         YES                  NO
              ▼         ▼          │                    │
         ┌────────┐ ┌────────┐     ▼                    ▼
         │CRITICAL│ │  HIGH  │ ┌────────┐         ┌──────────────────┐
         └────────┘ └────────┘ │  HIGH  │         │ Is this a repeat │
                               └────────┘         │ issue or pattern?│
                                                  └──────────────────┘
                                                     │         │
                                                    YES       NO
                                                     │         │
                                                     ▼         ▼
                                                ┌────────┐ ┌────────┐
                                                │ MEDIUM │ │  LOW   │
                                                └────────┘ └────────┘
```

---

## 4. Escalation Matrix

| Severity | Escalate To | Timeline | Method | Documentation |
|----------|-------------|----------|--------|---------------|
| **Critical** | CCO/GC + relevant VP immediately; CEO if regulatory/reputational | Within 1 hour | Phone/in-person + immediate email | Incident report within 24 hours |
| **High** | Department head + Compliance Lead | Same business day | Email + phone if urgent | Written summary within 48 hours |
| **Medium** | Direct supervisor + functional owner | Within 48 hours | Email | Log in tracking system |
| **Low** | Note in system, discuss in regular check-in | Within 1 week | Email or verbal | Log in tracking system |

---

## 5. Escalation Communication Template

### For Critical/High Severity

```
SUBJECT: [CRITICAL/HIGH] [Issue Type] - [Brief Description]

SUMMARY:
• What: [1-2 sentence description of the issue]
• When: [When discovered, when occurred if known]
• Impact: [Who/what is affected]
• Status: [Current state - contained, ongoing, etc.]

IMMEDIATE ACTIONS TAKEN:
• [Action 1]
• [Action 2]

RECOMMENDED NEXT STEPS:
• [Recommendation 1]
• [Recommendation 2]

DECISION NEEDED:
• [Specific decision required, if any]

TIMELINE:
• [Any deadlines or time-sensitive factors]

Contact: [Your name and phone number]
```

### For Medium/Low Severity

```
SUBJECT: [MEDIUM/LOW] [Issue Type] - [Brief Description]

ISSUE: [Description of the issue]

BACKGROUND: [Relevant context]

ANALYSIS: [Your assessment]

RECOMMENDED ACTION: [What you suggest]

TIMELINE: [When action is needed]
```

---

## 6. Documentation Requirements

### Minimum Documentation for All Escalations

| Element | Description |
|---------|-------------|
| **Date/Time** | When the issue was identified and escalated |
| **Issue Description** | Clear, factual description of what occurred |
| **Severity Assessment** | Level and rationale for classification |
| **Escalation Path** | Who was notified and when |
| **Immediate Actions** | What was done to address/contain |
| **Decision/Outcome** | What was decided and by whom |
| **Follow-up Required** | Outstanding actions and owners |

### Evidence Preservation

For Critical/High issues, also preserve:
- [ ] Screenshots of relevant systems
- [ ] Copies of relevant communications
- [ ] System logs (request from IT)
- [ ] Timeline of events
- [ ] Names of involved parties

---

## 7. Escalation Log Template

| Date | Issue ID | Category | Severity | Summary | Escalated To | Decision | Status |
|------|----------|----------|----------|---------|--------------|----------|--------|
| | | | | | | | |

---

## 8. Special Escalation Paths

### Whistleblower/Ethics Concerns
- Route directly to Ethics Hotline or General Counsel
- Do not investigate independently
- Maintain strict confidentiality

### Senior Leadership Involved
- May need to skip normal chain of command
- Consider escalating to GC or Board directly
- Document rationale for path chosen

### Regulatory Inquiry
- Immediate notification to Legal/Compliance
- Do not respond directly without guidance
- Preserve all related documents

---

## Quick Reference Card

```
┌─────────────────────────────────────────────────────────────┐
│                    ESCALATION QUICK GUIDE                    │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  CRITICAL (Escalate within 1 hour)                          │
│  • Active breach or ongoing harm                            │
│  • Regulatory notification deadline imminent                │
│  • Senior leadership involvement                            │
│  → Call CCO/GC directly, then document                      │
│                                                              │
│  HIGH (Escalate same day)                                   │
│  • Potential regulatory violation                           │
│  • Significant financial or operational impact              │
│  • Multi-department issue                                   │
│  → Email + call department head                             │
│                                                              │
│  MEDIUM (Escalate within 48 hours)                          │
│  • Policy violation (non-senior)                            │
│  • Repeat issue or pattern                                  │
│  • Vendor concern                                           │
│  → Email to supervisor, log in system                       │
│                                                              │
│  LOW (Escalate within 1 week)                               │
│  • Minor process deviation                                  │
│  • First-time, low-impact issue                             │
│  • Clarification needed                                     │
│  → Log in system, discuss in 1:1                            │
│                                                              │
│  WHEN IN DOUBT: Escalate up. It's better to over-          │
│  communicate than to miss something important.              │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

---

[← Back to Exercise Overview](README.md)
