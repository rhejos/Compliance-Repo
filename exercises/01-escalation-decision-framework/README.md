# Exercise 01: Escalation Decision Framework

**Effort Level:** Low
**Time to Complete:** 2-4 hours
**Skills Demonstrated:** Judgment, risk assessment, documentation, decision-making

---

## Background

### What Is an Escalation Decision Framework?

An escalation decision framework is a structured approach that helps compliance professionals determine:
- **When** an issue should be escalated to senior management or other teams
- **To whom** the escalation should go
- **How quickly** action is needed
- **What information** should be included in the escalation

### Why Is This Important?

In compliance, making the right escalation decision is critical:

| Failure Mode | Consequence |
|--------------|-------------|
| **Under-escalation** | Issues grow into crises, regulatory violations, significant harm |
| **Over-escalation** | Management fatigue, loss of credibility, slowed operations |
| **Delayed escalation** | Missed notification deadlines, increased liability |
| **Poor documentation** | Inability to demonstrate due diligence, audit failures |

### Real-World Context

Every day, compliance professionals face decisions like:
- "Is this suspicious transaction worth escalating, or is it a false positive?"
- "This policy violation seems minor - should I involve Legal?"
- "This vendor hasn't responded to my security questions - how long do I wait?"
- "This employee complaint mentions something concerning - who needs to know?"

Having a clear framework removes ambiguity and ensures consistent, defensible decisions.

---

## Learning Objectives

By completing this exercise, you will be able to:

1. **Create** a decision tree for common escalation scenarios
2. **Define** severity levels and response timeframes
3. **Build** an escalation matrix mapping issues to appropriate parties
4. **Document** escalation decisions with proper rationale
5. **Apply** the framework to realistic scenarios

---

## Instructions

### Part 1: Review the Escalation Framework Template

Read through the [Escalation Framework Template](escalation-framework-template.md) to understand the key components.

### Part 2: Complete the Scenario Exercises

Work through each scenario in the [Scenarios](scenarios.md) file. For each:
1. Identify the issue type
2. Assess the severity level
3. Determine who to escalate to
4. Decide on the timeline
5. Draft a brief escalation summary

### Part 3: Compare to Solutions

After completing all scenarios, review the [Solutions](solutions.md) file to compare your answers.

---

## Files in This Exercise

| File | Description |
|------|-------------|
| [README.md](README.md) | This file - overview and instructions |
| [escalation-framework-template.md](escalation-framework-template.md) | The framework template to study |
| [scenarios.md](scenarios.md) | Practice scenarios to work through |
| [solutions.md](solutions.md) | Completed answers with explanations |

---

## Key Concepts

### Severity Levels

| Level | Description | Response Time | Example |
|-------|-------------|---------------|---------|
| **Critical** | Immediate harm or regulatory violation occurring | Immediate (within 1 hour) | Active data breach |
| **High** | Significant risk if not addressed promptly | Same day | Policy violation by senior employee |
| **Medium** | Notable issue requiring attention | Within 48 hours | Vendor contract missing key terms |
| **Low** | Minor issue for awareness/tracking | Within 1 week | Minor policy clarification needed |

### Escalation Paths

```
                    ┌─────────────────┐
                    │   Board / CEO   │
                    └────────┬────────┘
                             │
            Critical regulatory / reputational issues
                             │
                    ┌────────┴────────┐
                    │  General Counsel │
                    │    / CCO         │
                    └────────┬────────┘
                             │
              Legal exposure / regulatory matters
                             │
         ┌───────────────────┼───────────────────┐
         │                   │                   │
┌────────┴────────┐ ┌────────┴────────┐ ┌────────┴────────┐
│ Compliance Lead │ │   IT Security   │ │   HR Director   │
└────────┬────────┘ └────────┬────────┘ └────────┬────────┘
         │                   │                   │
   Policy issues     Security incidents   People issues
         │                   │                   │
┌────────┴────────┐ ┌────────┴────────┐ ┌────────┴────────┐
│ Compliance      │ │ Security        │ │ HR Business     │
│ Analyst         │ │ Analyst         │ │ Partner         │
└─────────────────┘ └─────────────────┘ └─────────────────┘
```

---

## Discussion Questions

After completing the exercise, consider:

1. How would you handle a situation where the framework isn't clear on the right path?
2. What happens if the person you need to escalate to is unavailable?
3. How do you balance thorough documentation with speed of escalation?
4. When might you deviate from the standard framework?
5. How do you handle situations where you're unsure of the severity?

---

[← Back to Exercises Overview](../README.md) | [Next: Regulatory Change Tracker →](../02-regulatory-change-tracker/README.md)
