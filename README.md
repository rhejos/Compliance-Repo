# Exercise 02: Regulatory Change Tracker

**Effort Level:** Low
**Time to Complete:** 2-3 hours
**Skills Demonstrated:** Regulatory monitoring, impact assessment, prioritization

---

## Background

### What Is a Regulatory Change Tracker?

A regulatory change tracker is a systematic process for:
- **Monitoring** new and changing laws, regulations, and standards
- **Assessing** relevance and impact to your organization
- **Prioritizing** response based on effective dates and business impact
- **Tracking** implementation of required changes

### Why Is This Important?

The regulatory landscape is constantly evolving. Organizations must stay ahead of changes to:

| Risk of Not Tracking | Consequence |
|---------------------|-------------|
| **Missed deadlines** | Fines, penalties, enforcement actions |
| **Reactive compliance** | Last-minute scrambles, poor implementation |
| **Resource misallocation** | Working on low-priority items while missing critical ones |
| **Audit findings** | "How do you stay current?" is a common auditor question |

### Real-World Context

Compliance professionals regularly deal with:
- New privacy laws (state, federal, international)
- Updated industry standards (PCI-DSS 4.0, ISO updates)
- Regulatory guidance and interpretations
- Enforcement trends indicating priority areas
- Industry-specific regulatory changes

A formal tracking process turns chaos into manageable workflow.

---

## Learning Objectives

By completing this exercise, you will be able to:

1. **Design** a regulatory change tracking process
2. **Assess** the relevance of regulatory changes to an organization
3. **Evaluate** the impact and effort required for compliance
4. **Prioritize** regulatory changes for implementation
5. **Document** tracking and assessment decisions

---

## Instructions

### Part 1: Review the Tracker Template

Study the [Regulatory Change Tracker Template](tracker-template.md) to understand the key fields and assessment criteria.

### Part 2: Complete the Assessments

Review each regulatory change in [Regulatory Updates](regulatory-updates.md). For each:
1. Assess applicability to the mock company
2. Determine impact level
3. Estimate implementation effort
4. Assign priority and owner
5. Recommend next steps

### Part 3: Compare to Solutions

After completing all assessments, review the [Solutions](solutions.md) to compare your analysis.

---

## Files in This Exercise

| File | Description |
|------|-------------|
| [README.md](README.md) | This file - overview and instructions |
| [company-profile.md](company-profile.md) | Mock company details for context |
| [tracker-template.md](tracker-template.md) | The tracker template and methodology |
| [regulatory-updates.md](regulatory-updates.md) | Regulatory changes to assess |
| [solutions.md](solutions.md) | Completed assessments with explanations |

---

## Key Concepts

### Regulatory Change Categories

| Category | Examples | Typical Lead Time |
|----------|----------|-------------------|
| **New Laws** | State privacy laws, sector-specific regulations | 6-24 months |
| **Amended Laws** | Updates to existing requirements | 3-12 months |
| **New Standards** | PCI-DSS updates, ISO revisions | 12-36 months |
| **Regulatory Guidance** | FAQ updates, enforcement guidance | Immediate - 6 months |
| **Industry Practices** | Best practices, peer expectations | Ongoing |

### Impact Assessment Framework

```
┌────────────────────────────────────────────────────────────┐
│                  IMPACT ASSESSMENT                          │
├────────────────────────────────────────────────────────────┤
│                                                             │
│  APPLICABILITY: Does this apply to us?                     │
│  ├── Industry/sector match?                                │
│  ├── Geographic scope (where we operate)?                  │
│  ├── Data types we handle?                                 │
│  └── Thresholds we meet (revenue, employees, etc.)?       │
│                                                             │
│  IMPACT: How much change is required?                      │
│  ├── Process changes needed?                               │
│  ├── Technology changes needed?                            │
│  ├── Training requirements?                                │
│  └── Documentation updates?                                │
│                                                             │
│  EFFORT: What resources are needed?                        │
│  ├── Staff time required?                                  │
│  ├── Budget implications?                                  │
│  ├── Third-party support needed?                           │
│  └── Timeline to effective date?                           │
│                                                             │
│  PRIORITY: How urgent is this?                             │
│  ├── Effective date proximity?                             │
│  ├── Penalty severity?                                     │
│  ├── Customer/market expectations?                         │
│  └── Dependencies with other initiatives?                  │
│                                                             │
└────────────────────────────────────────────────────────────┘
```

---

## Discussion Questions

After completing the exercise, consider:

1. How would you set up ongoing monitoring for regulatory changes?
2. What sources would you use to learn about new regulations?
3. How do you balance thoroughness with efficiency in assessments?
4. When would you involve Legal vs. handling internally in Compliance?
5. How do you handle ambiguous requirements in new regulations?

---

---

## Navigation

To return to the main branch with all frameworks and templates:
```bash
git checkout main
```

To navigate between exercises:
```bash
git checkout claude/exercise-01-escalation-decision-framework-21lOv  # Previous
git checkout claude/exercise-03-incident-response-workflow-21lOv     # Next
```
