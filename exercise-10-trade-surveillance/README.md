# Exercise 10: Trade Surveillance Alert Triage

## Background

Trade surveillance is the backbone of market integrity compliance at trading firms. Every day, surveillance systems generate hundreds or thousands of alerts flagging potentially suspicious trading activity. The challenge isn't detecting anomalies—it's **triaging them correctly**.

Most alerts are false positives: legitimate trading that happens to trigger a rule. But buried in the noise are genuine red flags—potential market manipulation, insider trading, or regulatory violations that could result in enforcement actions, fines, or criminal charges.

**Your job as a compliance analyst is to separate signal from noise.**

This exercise simulates what compliance teams at quantitative trading firms, banks, and broker-dealers do daily: review alerts, apply judgment, and make defensible decisions about what to escalate, investigate, or dismiss.

---

## Why This Matters

| Stakeholder | Why Alert Triage Matters |
|-------------|-------------------------|
| **Regulators (SEC, FINRA, FCA)** | Expect firms to have effective surveillance and act on red flags |
| **The Firm** | Failure to detect manipulation = fines, reputational damage, lost licenses |
| **Traders** | False accusations damage careers; missed violations enable bad actors |
| **Markets** | Manipulation undermines price discovery and investor confidence |

**Real consequences:**
- JP Morgan: $920M fine (2020) for spoofing in metals and Treasury markets
- Citadel Securities: $22M fine (2017) for misleading statements about trading practices
- Individual traders have received prison sentences for spoofing

---

## Learning Objectives

By completing this exercise, you will:

1. **Recognize common market manipulation patterns** (spoofing, layering, wash trading, front-running)
2. **Apply a structured triage framework** to surveillance alerts
3. **Distinguish genuine red flags from false positives** using contextual analysis
4. **Document triage decisions defensibly** for regulators and auditors
5. **Understand regulatory expectations** across jurisdictions (SEC, FINRA, MAR, MiFID II)

---

## Exercise Materials

| File | Description |
|------|-------------|
| [alert-scenarios.md](alert-scenarios.md) | 10 surveillance alerts to triage |
| [triage-framework.md](triage-framework.md) | Decision framework for alert review |
| [regulatory-context.md](regulatory-context.md) | Key regulations and manipulation types |
| [solutions.md](solutions.md) | Model answers with reasoning |
| [references.md](references.md) | Sources: SEC, FINRA, CFTC rules, enforcement cases |

---

## Instructions

### Step 1: Review the Regulatory Context (15 min)

Read [regulatory-context.md](regulatory-context.md) to understand:
- Types of market manipulation
- What regulators look for
- Documentation expectations

### Step 2: Learn the Triage Framework (10 min)

Study [triage-framework.md](triage-framework.md) to understand:
- The three-tier decision model (Dismiss / Investigate / Escalate)
- Factors that increase or decrease concern
- Documentation requirements for each tier

### Step 3: Triage the Alerts (60-90 min)

Work through each scenario in [alert-scenarios.md](alert-scenarios.md):

1. Read the alert details
2. Identify the potential violation type
3. Apply the triage framework
4. Make your decision (Dismiss / Investigate / Escalate)
5. Document your reasoning

**Important:** Write out your reasoning before checking solutions. The goal is to develop your judgment, not memorize answers.

### Step 4: Compare to Solutions (30 min)

Review [solutions.md](solutions.md) and compare your reasoning:
- Did you reach the same conclusions?
- Did you consider the same factors?
- What did you miss or weigh differently?

### Step 5: Reflection

Answer these questions:
1. Which alerts were hardest to triage? Why?
2. What contextual information would have helped your decisions?
3. How would you improve the firm's surveillance rules to reduce false positives?

---

## Deliverables

1. **Completed triage decisions** for all 10 alerts with documented reasoning
2. **Reflection notes** answering the questions above
3. **Optional:** Draft a recommendation memo for one escalated alert

---

## Time Estimate

| Component | Time |
|-----------|------|
| Regulatory context review | 15 min |
| Triage framework study | 10 min |
| Alert triage (10 scenarios) | 60-90 min |
| Solution comparison | 30 min |
| Reflection | 15 min |
| **Total** | **2-3 hours** |

---

## Skills Demonstrated

| Skill | How This Exercise Shows It |
|-------|---------------------------|
| Pattern recognition | Identifying manipulation types from trading data |
| Judgment under ambiguity | Making decisions with incomplete information |
| Regulatory knowledge | Applying SEC, FINRA, MAR requirements |
| Risk prioritization | Triaging alerts by severity and likelihood |
| Documentation rigor | Writing defensible rationales |
| Commercial awareness | Balancing compliance with business impact |

---

## Who This Is For

- Compliance analysts at trading firms, banks, or broker-dealers
- Surveillance team members
- Anyone interviewing for financial services compliance roles
- Risk professionals expanding into market conduct

---

## Prerequisites

- Basic understanding of trading (orders, executions, order books)
- Familiarity with market manipulation concepts (helpful but not required—covered in regulatory-context.md)

---

## Next Steps

After completing this exercise:
- Review [Exercise 06: Communications Review Playbook](../exercise-06-communications-review-playbook) for related surveillance skills
- Study the [Glossary](../resources/glossary.md) for financial services terms
- Practice documenting decisions using the [Decision Rationale Template](../templates/decision-rationale-template.md)
