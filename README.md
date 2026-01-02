# Exercise 06: Communications Review Playbook

**Effort Level:** Medium
**Time to Complete:** 4-5 hours
**Skills Demonstrated:** Surveillance criteria development, escalation path design, documentation

---

## Background

### What Is a Communications Review Playbook?

A communications review playbook is a comprehensive guide that defines:
- **What** types of communications are subject to review (email, chat, etc.)
- **Why** communications are reviewed (regulatory requirements, risk mitigation)
- **How** reviewers should assess flagged communications
- **When** issues should be escalated
- **Where** decisions and actions should be documented

### Why Is This Important?

Regulated industries (financial services, healthcare, legal) are required to monitor communications for:

| Concern | Examples | Regulatory Basis |
|---------|----------|------------------|
| **Market Manipulation** | Spoofing, layering, pump-and-dump discussions | SEC, FINRA |
| **Insider Trading** | MNPI sharing, front-running | SEC Rule 10b-5 |
| **Harassment/Discrimination** | Hostile work environment, retaliation | Employment law |
| **Data Leakage** | Customer data sharing, trade secrets | Privacy laws, IP |
| **Conflicts of Interest** | Personal relationships affecting business | Firm policies |
| **Gifts & Entertainment** | Excessive gifts, bribery indicators | Anti-corruption |
| **Record Retention** | Off-channel communications | FINRA, SEC |

### Real-World Context

Many organizations use surveillance systems that:
1. Capture business communications (email, chat, voice)
2. Apply lexicons and patterns to flag potentially concerning messages
3. Present flagged items to reviewers for human analysis
4. Require reviewers to make escalation decisions
5. Maintain audit trail of all reviews and decisions

This playbook guides the human review process.

---

## Learning Objectives

By completing this exercise, you will be able to:

1. **Define** review criteria for different communication types
2. **Create** lexicons for surveillance systems
3. **Design** escalation paths for various issue types
4. **Build** documentation templates for review findings
5. **Apply** judgment in ambiguous situations

---

## Files in This Exercise

| File | Description |
|------|-------------|
| [README.md](README.md) | This file - overview and instructions |
| [playbook-framework.md](playbook-framework.md) | Structure and components of a playbook |
| [lexicon-development.md](lexicon-development.md) | How to create surveillance lexicons |
| [review-scenarios.md](review-scenarios.md) | Practice reviewing flagged communications |
| [solutions.md](solutions.md) | Completed reviews with explanations |

---

## Key Concepts

### Communications Surveillance Framework

```
┌─────────────────────────────────────────────────────────────────┐
│                 COMMUNICATIONS REVIEW PROCESS                    │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  1. CAPTURE                 2. DETECT                            │
│  ─────────                  ──────────                           │
│  • Email systems            • Lexicon matching                   │
│  • Chat platforms           • Pattern detection                  │
│  • Voice (transcribed)      • Behavioral analytics               │
│  • Social media             • Random sampling                    │
│                                                                  │
│  3. REVIEW                  4. ESCALATE                          │
│  ──────────                 ───────────                          │
│  • Queue management         • Compliance escalation              │
│  • Context analysis         • Legal referral                     │
│  • False positive ID        • HR involvement                     │
│  • Documentation            • Management notification            │
│                                                                  │
│  5. RESOLVE                 6. REPORT                            │
│  ──────────                 ──────────                           │
│  • Investigation            • Metrics and trends                 │
│  • Remediation              • Regulatory reporting               │
│  • Training                 • Audit documentation                │
│  • Policy updates                                                │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

### Review Decision Framework

| Decision | When to Use | Documentation Required |
|----------|-------------|----------------------|
| **Clear - No Issue** | Context clearly explains flag, routine business | Brief note on context |
| **False Positive** | Lexicon triggered but no actual concern | Note why not applicable |
| **Requires Context** | Need more information to decide | Note questions, gather info |
| **Monitor** | Minor concern, watch for patterns | Document and flag for trend |
| **Escalate** | Policy violation or potential legal issue | Full documentation + referral |

---

## Discussion Questions

After completing the exercise, consider:

1. How do you balance employee privacy with regulatory obligations?
2. What training do reviewers need to make good judgments?
3. How do you handle cultural differences in communication style?
4. When should you escalate vs. gather more context?
5. How do you maintain objectivity in reviewing colleagues' communications?

---

---

## Navigation

To return to the main branch with all frameworks and templates:
```bash
git checkout main
```

To navigate between exercises:
```bash
git checkout claude/exercise-05-policy-gap-analysis-21lOv         # Previous
git checkout claude/exercise-07-audit-evidence-collection-21lOv   # Next
```
