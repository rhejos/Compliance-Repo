# Exercise 03: Incident Response Workflow

**Effort Level:** Low-Medium
**Time to Complete:** 3-4 hours
**Skills Demonstrated:** Process design, notification requirements, decision documentation

---

## Background

### What Is an Incident Response Workflow?

An incident response workflow is a structured process that defines:
- **How** security and data incidents are identified, assessed, and managed
- **Who** is responsible at each stage
- **When** internal and external notifications must occur
- **What** documentation is required throughout

### Why Is This Important?

Effective incident response directly impacts:

| Factor | With Good IR Workflow | Without Good IR Workflow |
|--------|----------------------|-------------------------|
| **Response Time** | Minutes to hours | Hours to days |
| **Regulatory Compliance** | Meet notification deadlines | Miss deadlines, face penalties |
| **Damage Limitation** | Contain quickly | Allow spread |
| **Evidence Preservation** | Proper chain of custody | Lost/contaminated evidence |
| **Stakeholder Communication** | Clear, timely updates | Confusion, mistrust |
| **Post-Incident Learning** | Systematic improvement | Repeat mistakes |

### Real-World Context

Regulatory requirements for incident notification are strict:
- **GDPR**: 72 hours to supervisory authority
- **HIPAA**: 60 days to HHS (immediately if 500+ affected)
- **SEC**: 4 business days for material incidents
- **State Breach Laws**: Vary from "immediately" to 60 days
- **Contracts**: Often 24-48 hours to customers

A well-designed workflow ensures these deadlines are met.

---

## Learning Objectives

By completing this exercise, you will be able to:

1. **Design** an incident response workflow with clear phases
2. **Define** roles and responsibilities for incident response
3. **Document** notification requirements and decision points
4. **Create** communication templates for different stakeholders
5. **Build** a decision matrix for incident classification

---

## Instructions

### Part 1: Study the IR Framework

Review the [Incident Response Framework](ir-framework.md) to understand the phases and components.

### Part 2: Complete the Workflow Design

Using the [Workflow Template](workflow-template.md), design an incident response workflow for the mock company.

### Part 3: Work Through Incident Scenarios

Apply your workflow to the scenarios in [Incident Scenarios](incident-scenarios.md).

### Part 4: Compare to Solutions

Check your work against the [Solutions](solutions.md).

---

## Files in This Exercise

| File | Description |
|------|-------------|
| [README.md](README.md) | This file - overview and instructions |
| [ir-framework.md](ir-framework.md) | Incident response concepts and framework |
| [workflow-template.md](workflow-template.md) | Template for designing your workflow |
| [incident-scenarios.md](incident-scenarios.md) | Practice scenarios |
| [solutions.md](solutions.md) | Completed solutions with explanations |

---

## Key Concepts

### Incident Response Phases

```
┌──────────────────────────────────────────────────────────────────┐
│                    INCIDENT RESPONSE LIFECYCLE                    │
├──────────────────────────────────────────────────────────────────┤
│                                                                   │
│  1. PREPARATION          2. DETECTION &         3. CONTAINMENT   │
│  ─────────────           ANALYSIS               ─────────────    │
│  • IR plan               ─────────────          • Isolate         │
│  • Team training         • Alert triage         • Preserve        │
│  • Tools ready           • Classification       • Limit spread    │
│  • Contacts updated      • Scope assessment     • Short-term fix  │
│                                                                   │
├──────────────────────────────────────────────────────────────────┤
│                                                                   │
│  4. ERADICATION          5. RECOVERY            6. POST-INCIDENT │
│  ─────────────           ─────────────          ─────────────    │
│  • Remove threat         • Restore systems      • Root cause      │
│  • Patch/remediate       • Verify integrity     • Lessons learned │
│  • Validate clean        • Monitor closely      • Update plan     │
│                          • Return to normal     • Report          │
│                                                                   │
└──────────────────────────────────────────────────────────────────┘
```

### Incident Severity Levels

| Severity | Description | Examples | Response Time |
|----------|-------------|----------|---------------|
| **Critical (P1)** | Business-threatening, active attack, major breach | Ransomware active, large data breach, critical system down | Immediate (all hands) |
| **High (P2)** | Significant impact, potential breach, limited spread | Confirmed malware, phishing compromise, suspected breach | Within 1 hour |
| **Medium (P3)** | Moderate impact, contained issue | Suspicious activity, minor policy violation, false positive under investigation | Within 4 hours |
| **Low (P4)** | Minimal impact, single user/system | Isolated malware (contained), spam, minor anomaly | Within 24 hours |

### RACI Matrix Example

| Activity | Security | Legal | Comms | Exec | IT | Compliance |
|----------|----------|-------|-------|------|-----|------------|
| Initial Triage | R/A | I | - | - | C | I |
| Classification | R/A | C | - | I | C | C |
| Containment | R/A | I | - | I | C | I |
| Legal Assessment | C | R/A | I | I | - | C |
| External Notification | C | A | R | I | - | C |
| Customer Comms | C | C | R/A | A | - | C |
| Remediation | R/A | I | - | I | C | I |
| Post-Mortem | R | C | - | I | C | A |

**R** = Responsible, **A** = Accountable, **C** = Consulted, **I** = Informed

---

## Discussion Questions

After completing the exercise, consider:

1. How do you balance speed of response with accuracy of information?
2. What happens when key personnel are unavailable during an incident?
3. How do you handle incidents that occur outside business hours?
4. When is it appropriate to engage external resources (forensics, legal, PR)?
5. How do you maintain confidentiality while coordinating response?

---

[← Back to Exercises Overview](../README.md) | [Previous: Regulatory Tracker](../02-regulatory-change-tracker/README.md) | [Next: Vendor Risk Assessment →](../04-vendor-risk-assessment/README.md)
