# Exercise 07: Audit Evidence Collection Guide

**Effort Level:** Medium
**Time to Complete:** 4-5 hours
**Skills Demonstrated:** Control-to-evidence mapping, audit preparation, documentation

---

## Background

### What Is Audit Evidence Collection?

Audit evidence collection is the systematic process of:
- **Identifying** what evidence is needed to demonstrate control effectiveness
- **Gathering** that evidence from systems and personnel
- **Organizing** evidence for auditor review
- **Presenting** evidence in a clear, auditor-friendly manner

### Why Is This Important?

| Without Good Evidence | With Good Evidence |
|----------------------|-------------------|
| Extended audit timelines | Efficient audits |
| Repeat requests from auditors | Clear first-time responses |
| Findings for undocumented controls | Clean audit opinions |
| Last-minute scrambles | Organized preparation |
| Staff frustration | Smooth process |

### Real-World Context

Audits happen regularly:
- SOC 2 Type II: Annual (covering 6-12 month period)
- ISO 27001: Annual surveillance, triennial recertification
- Financial audits: Annual
- Regulatory examinations: Periodic (varies by regulator)
- Customer audits: As requested

Being prepared with organized evidence makes all audits smoother.

---

## Learning Objectives

1. **Map** controls to required evidence types
2. **Create** evidence collection checklists
3. **Organize** evidence repositories effectively
4. **Understand** what auditors are looking for
5. **Prepare** for auditor interviews

---

## Files in This Exercise

| File | Description |
|------|-------------|
| [README.md](README.md) | This file - overview and instructions |
| [evidence-mapping.md](evidence-mapping.md) | Control-to-evidence mapping guide |
| [collection-exercise.md](collection-exercise.md) | Practice collecting evidence |
| [solutions.md](solutions.md) | Completed evidence collection |

---

## Key Concepts

### Evidence Types

| Type | Description | Examples |
|------|-------------|----------|
| **Screenshots** | Point-in-time visual proof | Config settings, access lists |
| **Reports** | System-generated outputs | User lists, audit logs |
| **Documents** | Policies and procedures | Security policy, IR plan |
| **Samples** | Representative selections | Change tickets, access reviews |
| **Attestations** | Signed statements | Management assertions |
| **Interviews** | Verbal confirmation | Process walkthroughs |

### Evidence Attributes

Good audit evidence is:

```
┌─────────────────────────────────────────────────────────────────┐
│              CHARACTERISTICS OF GOOD EVIDENCE                    │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  RELEVANT                    RELIABLE                            │
│  ──────────                  ──────────                          │
│  • Addresses specific        • From authoritative source         │
│    control objective         • System-generated preferred        │
│  • Covers audit period       • Independent verification          │
│  • Shows what auditor        • Not easily manipulated            │
│    is testing                                                    │
│                                                                  │
│  SUFFICIENT                  TIMELY                              │
│  ──────────                  ──────────                          │
│  • Enough to support         • From within audit period          │
│    conclusion                • Current (not outdated)            │
│  • Covers full population    • Demonstrates continuous           │
│    or valid sample             operation                         │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

### Population vs. Sample

| Approach | When Used | Example |
|----------|-----------|---------|
| **Full Population** | Small populations, critical controls | All 5 admin accounts reviewed |
| **Statistical Sample** | Large populations | 25 of 500 changes tested |
| **Haphazard Sample** | Quick testing | 5 random access reviews |
| **100% Automated** | System controls | All logins require MFA |

---

## Discussion Questions

1. How do you handle missing evidence for the audit period?
2. What do you do if evidence shows a control failure?
3. How do you prepare control owners for auditor interviews?
4. When is a screenshot sufficient vs. needing a system export?
5. How far in advance should evidence collection begin?

---

[← Back to Exercises Overview](../README.md) | [Previous: Communications Playbook](../06-communications-review-playbook/README.md) | [Next: Communications Simulation →](../08-communications-review-simulation/README.md)
