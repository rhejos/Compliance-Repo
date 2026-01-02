# Exercise 05: Policy Gap Analysis

**Effort Level:** Medium
**Time to Complete:** 4-6 hours
**Skills Demonstrated:** Control mapping, gap identification, remediation planning

---

## Background

### What Is a Policy Gap Analysis?

A policy gap analysis compares an organization's current policies, procedures, and controls against a compliance framework's requirements to identify:
- **Gaps**: Requirements that are not addressed at all
- **Partial implementations**: Requirements that are partially addressed
- **Deficiencies**: Areas where implementation exists but doesn't meet the standard
- **Strengths**: Areas of full compliance or exceeding requirements

### Why Is This Important?

Gap analysis is essential for:

| Purpose | Value |
|---------|-------|
| **Audit preparation** | Identify issues before auditors find them |
| **Prioritization** | Focus resources on highest-risk gaps |
| **Roadmap development** | Create actionable remediation plans |
| **Risk visibility** | Understand actual vs. claimed compliance posture |
| **Budget justification** | Support resource requests with evidence |

### Real-World Context

Organizations routinely perform gap analyses for:
- Initial certification efforts (SOC 2, ISO 27001)
- New regulatory requirements (GDPR, state privacy laws)
- Post-incident assessments
- M&A due diligence
- Annual compliance health checks

---

## Learning Objectives

By completing this exercise, you will be able to:

1. **Map** framework requirements to organizational controls
2. **Assess** current state against compliance requirements
3. **Identify** and categorize gaps by severity
4. **Develop** prioritized remediation recommendations
5. **Document** findings in a professional format

---

## Instructions

### Part 1: Study the Framework Requirements

Review the [SOC 2 Requirements Summary](soc2-requirements.md) for the framework we'll analyze against.

### Part 2: Review Mock Company Policies

Study the [Mock Company Policies](mock-policies.md) representing the current state.

### Part 3: Conduct Gap Analysis

Complete the gap analysis using the [Gap Analysis Template](gap-analysis-template.md).

### Part 4: Compare to Solutions

Check your analysis against the [Solutions](solutions.md).

---

## Files in This Exercise

| File | Description |
|------|-------------|
| [README.md](README.md) | This file - overview and instructions |
| [soc2-requirements.md](soc2-requirements.md) | SOC 2 Trust Service Criteria |
| [mock-policies.md](mock-policies.md) | Sample company policies to assess |
| [gap-analysis-template.md](gap-analysis-template.md) | Template for your analysis |
| [solutions.md](solutions.md) | Completed analysis with explanations |

---

## Key Concepts

### Gap Analysis Methodology

```
┌─────────────────────────────────────────────────────────────────┐
│                    GAP ANALYSIS PROCESS                          │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  1. DEFINE SCOPE                                                 │
│     • Which framework/requirements?                              │
│     • Which systems/processes in scope?                          │
│     • What's the timeline?                                       │
│                                                                  │
│  2. GATHER CURRENT STATE                                         │
│     • Collect policies and procedures                            │
│     • Interview control owners                                   │
│     • Review evidence of control operation                       │
│                                                                  │
│  3. MAP REQUIREMENTS                                             │
│     • Align current controls to requirements                     │
│     • Document how each requirement is addressed                 │
│     • Identify gaps and overlaps                                 │
│                                                                  │
│  4. ASSESS GAPS                                                  │
│     • Categorize: Full/Partial/None                              │
│     • Evaluate severity and risk                                 │
│     • Prioritize based on impact                                 │
│                                                                  │
│  5. DEVELOP REMEDIATION                                          │
│     • Recommend specific actions                                 │
│     • Estimate effort and timeline                               │
│     • Assign ownership                                           │
│                                                                  │
│  6. REPORT FINDINGS                                              │
│     • Executive summary                                          │
│     • Detailed findings                                          │
│     • Remediation roadmap                                        │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

### Gap Severity Ratings

| Rating | Definition | Example |
|--------|------------|---------|
| **Critical** | Requirement completely unmet, immediate risk | No encryption for sensitive data |
| **High** | Significant gap, substantial remediation needed | Access reviews exist but not documented |
| **Medium** | Partial implementation, moderate effort to close | Training exists but not all employees complete |
| **Low** | Minor deficiency, easily remediated | Policy exists but needs minor updates |
| **None** | Fully compliant | Control documented, implemented, evidenced |

---

## Discussion Questions

1. How do you handle requirements that aren't clearly addressed by existing controls?
2. When is a "partial" implementation good enough?
3. How do you prioritize competing remediation activities?
4. What evidence is needed to demonstrate gap closure?
5. How often should gap analyses be repeated?

---

---

## Navigation

To return to the main branch with all frameworks and templates:
```bash
git checkout main
```

To navigate between exercises:
```bash
git checkout claude/exercise-04-vendor-risk-assessment-21lOv         # Previous
git checkout claude/exercise-06-communications-review-playbook-21lOv # Next
```
