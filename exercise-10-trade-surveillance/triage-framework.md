# Trade Surveillance Alert Triage Framework

A structured approach to reviewing and dispositioning surveillance alerts.

---

## The Three-Tier Decision Model

Every alert must be assigned to one of three tiers:

| Tier | Action | Timeline | Documentation |
|------|--------|----------|---------------|
| **DISMISS** | Close alert, no further action | Immediate | Brief rationale |
| **INVESTIGATE** | Gather additional information | 1-5 business days | Detailed analysis memo |
| **ESCALATE** | Immediately involve senior compliance/legal | Same day | Full escalation package |

---

## Decision Framework

### Step 1: Identify the Potential Violation Type

What rule or regulation might be violated?

| Category | Examples |
|----------|----------|
| Market Manipulation | Spoofing, layering, wash trading, marking the close |
| Insider Trading | Trading on MNPI, tipping |
| Front-Running | Trading ahead of client orders |
| Best Execution | Failing to obtain best price for clients |
| Suitability | Unsuitable recommendations, churning |
| Recordkeeping | Communication policy violations |

### Step 2: Assess the Indicators

#### Factors That INCREASE Concern

| Factor | Why It Matters |
|--------|----------------|
| **Pattern repetition** | Single instance could be accident; pattern suggests intent |
| **Timing correlation** | Activity coincides with news, announcements, or client orders |
| **Unusual size** | Significantly larger than normal trading for this person/account |
| **Cancellation rate** | High cancel-to-fill ratio suggests manipulative intent |
| **Profit realized** | Actual profits from suspicious activity increase regulatory risk |
| **Communication evidence** | Messages suggesting awareness or coordination |
| **Prior history** | Previous violations, warnings, or similar alerts |
| **Concealment behavior** | Deleting messages, using code words, avoiding recorded lines |

#### Factors That DECREASE Concern

| Factor | Why It Matters |
|--------|----------------|
| **Legitimate business purpose** | Market making, hedging, index rebalancing have valid reasons |
| **Consistent with normal activity** | Behavior matches historical pattern |
| **Market conditions explain it** | High volatility, news events cause unusual activity |
| **Pre-existing position/strategy** | Part of documented investment thesis |
| **No information advantage** | No access to or evidence of MNPI |
| **Proper approvals obtained** | Pre-clearance, manager sign-off |
| **Industry-wide pattern** | Multiple firms showing same behavior suggests market factor |

### Step 3: Apply the Decision Matrix

```
                    EVIDENCE OF INTENT
                    Low         Medium        High
                 ┌───────────┬───────────┬───────────┐
            Low  │  DISMISS  │  DISMISS  │INVESTIGATE│
POTENTIAL        ├───────────┼───────────┼───────────┤
HARM        Med  │  DISMISS  │INVESTIGATE│ ESCALATE  │
                 ├───────────┼───────────┼───────────┤
            High │INVESTIGATE│ ESCALATE  │ ESCALATE  │
                 └───────────┴───────────┴───────────┘
```

**Evidence of Intent:** Does the activity appear deliberate?
- Low: Easily explained by legitimate factors
- Medium: Some suspicious elements, but alternative explanations exist
- High: Clear pattern suggesting deliberate misconduct

**Potential Harm:** What's the worst-case scenario?
- Low: Minor rule violation, no market impact, no customer harm
- Medium: Moderate regulatory risk, some market/customer impact
- High: Significant market manipulation, major customer losses, criminal exposure

---

## Documentation Requirements by Tier

### DISMISS Documentation

Minimum required:
- Alert ID and timestamp
- One-sentence summary of alert
- Primary reason for dismissal
- Analyst name and date

**Example:**
> Alert #4721 (Spoofing - High Cancel Rate): Dismissed. Activity consistent with normal market-making during high-volatility period (earnings release). Cancel rate elevated but within historical range for this trader during similar events. — J. Smith, 3/15/24

### INVESTIGATE Documentation

Required elements:
- Alert details and summary
- Initial assessment of violation type
- Specific questions to be answered
- Information sources to consult
- Timeline for completion
- Analyst assignment

**Investigation Checklist:**
- [ ] Review trader's historical activity (90 days)
- [ ] Check for related communications
- [ ] Verify any news/announcements around the time
- [ ] Interview trader (if appropriate)
- [ ] Review order audit trail
- [ ] Check for similar alerts on same instrument/trader
- [ ] Document P&L impact

### ESCALATE Documentation

Full package required:
- Executive summary (1 paragraph)
- Detailed chronology of events
- Evidence inventory
- Violation analysis (what rules/laws potentially breached)
- Initial risk assessment
- Recommended next steps
- Preservation notice (if applicable)

**Escalation Path:**
1. Immediate verbal notification to Surveillance Manager
2. Written escalation memo within 4 hours
3. Legal notified within 24 hours (for potential criminal matters)
4. Senior management briefing as directed

---

## Common Triage Mistakes

### Mistake 1: Over-Reliance on Single Factors

**Wrong:** "High cancel rate = spoofing"
**Right:** High cancel rate is one indicator. Consider market conditions, trader role, historical patterns.

### Mistake 2: Ignoring Context

**Wrong:** Treating a market maker's activity the same as a portfolio manager's
**Right:** Market makers legitimately cancel orders frequently; PMs typically don't.

### Mistake 3: Confirmation Bias

**Wrong:** Looking only for evidence that confirms the alert
**Right:** Actively seek alternative explanations before concluding misconduct.

### Mistake 4: Timing Assumptions

**Wrong:** "Trading before news = insider trading"
**Right:** Correlation isn't causation. Many trades happen before news by chance.

### Mistake 5: Under-Documenting Dismissals

**Wrong:** Closing alerts with no rationale
**Right:** Every dismissal needs a documented reason. Regulators will ask.

---

## Questions to Ask for Every Alert

1. **What is the alleged misconduct?** (Be specific about the rule/violation)
2. **Who benefits?** (Follow the money—who profits if this is manipulation?)
3. **What's the alternative explanation?** (What legitimate reason could explain this?)
4. **What would I need to see to change my mind?** (What evidence would flip your decision?)
5. **How would this look to a regulator?** (Would an SEC examiner accept your rationale?)

---

## Red Flags Requiring Immediate Escalation

Escalate immediately if any of these are present:

- [ ] Direct evidence of tipping or MNPI sharing
- [ ] Communication suggesting intent to manipulate
- [ ] Customer complaint alleging fraud
- [ ] Trading ahead of known client orders
- [ ] Destruction of evidence or obstruction
- [ ] Pattern matching previous enforcement cases
- [ ] Media inquiry about the activity
- [ ] Regulatory inquiry already received

---

## Using This Framework

For each alert in [alert-scenarios.md](alert-scenarios.md):

1. Read the alert details completely
2. Identify the potential violation type
3. List factors that increase concern
4. List factors that decrease concern
5. Apply the decision matrix
6. Document your reasoning
7. Compare to the model answer in [solutions.md](solutions.md)

The goal is not to match answers perfectly—it's to develop a defensible decision-making process.
