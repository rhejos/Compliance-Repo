# Communications Review Playbook Framework

This framework guides the creation of a comprehensive communications review playbook.

---

## 1. Playbook Structure

A complete playbook should include:

### Executive Summary
- Purpose of the communications review program
- Regulatory requirements driving the program
- Scope of communications covered
- Overview of review process

### Definitions
Key terms reviewers must understand:
- Material Non-Public Information (MNPI)
- Front-running
- Market manipulation
- Conflicts of interest
- Off-channel communications

### Roles and Responsibilities

| Role | Responsibilities |
|------|------------------|
| **Surveillance Team** | Daily queue review, initial assessment, documentation |
| **Compliance Manager** | Escalation review, investigation oversight |
| **Legal** | Legal exposure assessment, privilege review |
| **HR** | Employment-related matters, disciplinary action |
| **Business Management** | Context provision, employee discussions |

---

## 2. Communication Types Covered

### Email
- Corporate email (incoming and outgoing)
- Personal email on corporate devices (if policy allows)
- Email attachments

### Instant Messaging
- Corporate chat platforms (Slack, Teams, Symphony)
- Trading platform messaging
- SMS/text (on corporate devices)

### Voice Communications
- Recorded phone lines (trading desks)
- Voicemail transcriptions
- Video conferencing (if recorded)

### Other Channels
- Social media (LinkedIn, Twitter for business)
- Collaboration tools (SharePoint comments, etc.)
- Customer communication platforms

---

## 3. Review Triggers

### Lexicon-Based Triggers
Communications flagged when containing keywords/phrases:

**Insider Trading Indicators:**
- "between us", "keep quiet", "don't tell anyone"
- "announcement coming", "deal closing"
- "before the news", "inside info"

**Market Manipulation:**
- "move the market", "squeeze", "corner"
- "pump", "dump", "load up"

**Conflicts of Interest:**
- Personal trading discussions
- Outside business activities
- Undisclosed relationships

**Policy Violations:**
- Gift discussions exceeding thresholds
- Personal account trading
- Unauthorized commitments

### Behavioral Triggers
- Unusual communication patterns (volume, timing)
- Communications with external personal email
- After-hours communications on sensitive topics
- Multiple employees discussing same topic simultaneously

### Random Sampling
- 5% of all communications randomly selected
- Ensures coverage beyond lexicon detection

---

## 4. Review Queue Management

### Queue Prioritization

| Priority | Criteria | SLA |
|----------|----------|-----|
| **Critical** | Senior personnel involved, large $ amounts, urgent language | Same day |
| **High** | Multiple lexicon hits, customer-facing, external parties | 24 hours |
| **Medium** | Single lexicon hit, internal only | 48 hours |
| **Low** | Random sample, minimal flags | 72 hours |

### Reviewer Assignment
- Random assignment to prevent bias
- Conflicts of interest (don't review own department)
- Workload balancing
- Expertise matching (complex products to experienced reviewers)

---

## 5. Review Process

### Step 1: Context Gathering
Before making a judgment:
- Read the full communication thread (not just flagged message)
- Identify all participants and their roles
- Check recent news/events related to mentioned topics
- Review prior communications from same parties if available

### Step 2: Assessment
Apply the decision framework:

```
┌─────────────────────────────────────────────────────────────────┐
│                    REVIEW DECISION TREE                          │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  Is there a potentially concerning communication?                │
│                    │                                             │
│           ┌───────┴───────┐                                     │
│          YES              NO → Document as clear, close         │
│           │                                                      │
│           ▼                                                      │
│  Is there sufficient context to make a determination?           │
│                    │                                             │
│           ┌───────┴───────┐                                     │
│          YES              NO → Gather additional context        │
│           │                                                      │
│           ▼                                                      │
│  Does this appear to be a policy or legal violation?            │
│                    │                                             │
│           ┌───────┴───────┐                                     │
│          YES              NO → Close with documentation         │
│           │                    (may note for monitoring)        │
│           ▼                                                      │
│  ESCALATE per escalation matrix                                 │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

### Step 3: Documentation
Every review must document:
- Date and time of review
- Reviewer name
- Communication summary (no cut/paste of content)
- Participants
- Trigger/lexicon that flagged it
- Context gathered
- Decision and rationale
- Escalation (if any)

---

## 6. Escalation Matrix

| Issue Type | First Escalation | Second Escalation | Timeline |
|------------|-----------------|-------------------|----------|
| **Potential insider trading** | Chief Compliance Officer | General Counsel | Immediate |
| **Market manipulation concern** | Compliance Manager | CCO + Legal | Same day |
| **Harassment/discrimination** | HR Director | General Counsel | 24 hours |
| **Conflict of interest** | Compliance Manager | CCO + Business Head | 48 hours |
| **Gift policy violation** | Compliance Manager | Ethics Officer | 48 hours |
| **Personal trading violation** | Compliance Manager | CCO | 24 hours |
| **Off-channel communications** | Compliance Manager | CCO + Legal | 24 hours |
| **Data leakage** | Information Security | CCO + Legal | Immediate |

---

## 7. Documentation Templates

### Standard Review Form

```
COMMUNICATIONS REVIEW DOCUMENTATION
===================================

Review ID: CR-[YEAR]-[NUMBER]
Date/Time:
Reviewer:

COMMUNICATION DETAILS
--------------------
Date of Communication:
Channel: [Email/Chat/Voice/Other]
Participants:
Direction: [Internal/External/Both]
Trigger: [Lexicon: specify / Random sample]

REVIEW SUMMARY
--------------
Brief Description:
[2-3 sentence summary of communication - do NOT copy content]

Context Gathered:
[What additional context was obtained]

DECISION
--------
Disposition: [Clear/False Positive/Monitor/Escalate]

Rationale:
[Explanation of decision]

ESCALATION (if applicable)
--------------------------
Escalated To:
Date/Time of Escalation:
Reference Number:

Reviewer Signature: _________________ Date: _______
```

### Escalation Memorandum

```
ESCALATION MEMORANDUM
====================

TO: [Escalation recipient]
FROM: [Reviewer name]
DATE:
RE: Potential [Issue Type] - Review ID: CR-[XXX]

SUMMARY
-------
[Brief summary of concern - 2-3 sentences]

COMMUNICATION DETAILS
--------------------
Date(s):
Participants:
Channel:

KEY FACTS
---------
• [Fact 1]
• [Fact 2]
• [Fact 3]

CONCERNING ELEMENTS
------------------
[What specifically raised concerns]

CONTEXT
-------
[Relevant context that was gathered]

RECOMMENDED ACTION
-----------------
[Suggested next steps]

Attachments: [List any attached evidence/screenshots]
```

---

## 8. Quality Assurance

### Reviewer Quality Checks
- 10% of reviews audited by senior compliance
- Calibration sessions monthly
- Error tracking and feedback

### Metrics Tracked
| Metric | Target | Purpose |
|--------|--------|---------|
| Reviews completed | 100% within SLA | Timeliness |
| Escalation rate | Trend monitoring | Volume awareness |
| False positive rate | <80% | Lexicon effectiveness |
| QA error rate | <5% | Reviewer accuracy |
| Time per review | 5-15 minutes average | Efficiency |

---

## 9. Reviewer Training

### Initial Training
- Regulatory framework overview
- Lexicon interpretation
- Escalation procedures
- Documentation standards
- System navigation

### Ongoing Training
- Monthly calibration sessions
- Regulatory updates
- Case study reviews
- New product/business education

---

## 10. Confidentiality

### Reviewer Obligations
- Communications reviewed are confidential
- No discussion with colleagues about specific reviews
- No retaliation against employees whose communications are reviewed
- Escalation through proper channels only

### Data Protection
- Review notes contain summaries, not quotes
- Access to surveillance system is logged
- Review data retained per policy (typically 7 years)

---

[← Back to Exercise Overview](README.md)
