# Solutions: Trade Surveillance Alert Triage

Model answers with detailed reasoning. Your answers may differ—what matters is the quality of your reasoning process.

---

## Alert 1: Rapid Order Cancellation

**Decision: DISMISS**

**Reasoning:**

Factors decreasing concern:
- Marcus Chen is a **market maker**—high cancellation rates are inherent to market making
- Earnings announcement created elevated volatility (legitimate reason for quote updates)
- 94% cancellation rate sounds high, but market makers routinely cancel 90%+ of quotes
- Activity represents small portion of daily volume (8,200 shares vs. 15M daily)
- Price movement (0.3%) is minimal and consistent with volatile day

Factors increasing concern:
- 94% cancellation rate
- Rapid timing (400ms)

**Why Dismiss:** Market making fundamentally requires constant quote updates. What looks like spoofing for a portfolio manager is normal business for a market maker. The key question is: was there intent to manipulate, or was this legitimate quote management during a volatile period?

The context (market maker role + earnings volatility + small price impact) strongly supports dismissal.

**Documentation:** "Alert dismissed. Activity consistent with market-making during earnings-driven volatility. Cancellation rate within normal range for market maker quotes. No evidence of manipulative intent."

---

## Alert 2: Pre-Announcement Trading

**Decision: INVESTIGATE**

**Reasoning:**

Factors increasing concern:
- Large position ($2.1M) in a stock she hadn't traded for 12 months
- Trade occurred 3 days before material announcement
- Significant profit (~$980K) from the position
- Break from normal pattern

Factors decreasing concern:
- FDA approval was publicly anticipated (covered in analyst reports)
- Sarah Kim covers healthcare sector (it's her job to have views on pharma)
- Firm's research published bullish report 2 weeks prior
- No identified connection to company insiders

**Why Investigate (not Escalate):** The timing is suspicious, but the alternative explanation is credible—healthcare analysts are paid to predict FDA decisions. The firm's own research was bullish. However, the size, timing, and break from pattern warrant additional review.

**Investigation Steps:**
1. Review Sarah Kim's communications for potential sources
2. Check if she attended any industry conferences/meetings pre-trade
3. Review firm's information barriers—did she have access to any MNPI?
4. Compare to her historical pharma trading (how often does she take large directional positions?)
5. Interview Sarah about her investment thesis

**If Investigation Reveals:** No MNPI source → Dismiss with documentation
**If Investigation Reveals:** Any contact with company insiders → Escalate immediately

---

## Alert 3: Layering Pattern

**Decision: ESCALATE**

**Reasoning:**

Factors increasing concern:
- Classic layering pattern: stacked orders on one side, execution on opposite side
- Pattern repeated 12 times in 30 minutes (pattern = intent)
- Simultaneous execution on opposite side each time
- Algorithm is supposed to be "mean-reversion" but behaving like manipulation

Factors decreasing concern:
- FOMC day means high volatility industry-wide
- Other market participants showing similar patterns
- Proprietary trading (no customers harmed directly)

**Why Escalate:** Despite the mitigating factors, this alert shows the hallmarks of intentional layering:
1. Repetition (12 times) indicates this isn't accidental
2. The pattern matches regulatory enforcement examples exactly
3. The algorithm is doing something different than its stated purpose

**Critical Issue:** If the algorithm is layering, the firm created it. This isn't a rogue trader—it's potentially a firm-designed manipulation tool. This requires immediate senior attention and potentially algorithm shutdown.

**Escalation Package Should Include:**
- Full audit trail of all 12 instances
- Algorithm documentation and stated purpose
- Comparison to algorithm's intended behavior
- P&L analysis from the activity
- Recommendation to suspend algorithm pending review

---

## Alert 4: Wash Trading Indicator

**Decision: INVESTIGATE**

**Reasoning:**

Factors increasing concern:
- Same portfolio manager controls both accounts
- Net position change is zero
- Generated 3% of daily volume (potentially affecting price discovery)
- Low liquidity day means higher market impact

Factors decreasing concern:
- Different fund mandates (Apex Growth vs. Apex Value)
- Manager's explanation is plausible (rebalancing)
- Trades went through different brokers (suggests operational separation)

**Why Investigate (not Escalate):** The activity looks suspicious but has a potentially legitimate explanation. Inter-fund rebalancing is normal, but the execution raises questions.

**Investigation Steps:**
1. Review fund mandates—do allocation targets actually justify these trades?
2. Why same-day round trips instead of single transfer?
3. Was there any P&L impact or fee generation from these trades?
4. Are there better execution methods (internal cross vs. market trades)?
5. Interview portfolio manager about rationale

**Key Question:** If the trades were necessary for mandate compliance, why execute them in a way that generates volume and potential price impact? Could be operational failure (bad execution) rather than wash trading.

---

## Alert 5: Marking the Close

**Decision: ESCALATE**

**Reasoning:**

Factors increasing concern:
- Pattern at month/quarter end (when NAV matters most)
- Same pattern observed in prior months (December, January, February)
- Fund was underperforming—motive to boost NAV
- 7 of 8 securities closed at daily highs (statistically unlikely by chance)
- Small order sizes suggest awareness that large orders would be obvious

Factors decreasing concern:
- Trades within normal rebalancing parameters
- Individual trades are small

**Why Escalate:** The repetition across months is the key factor. One month could be coincidence. Four consecutive months of end-of-day trading that improves NAV is a pattern.

This is a textbook marking the close case:
- PM has incentive (performance-based compensation, fund rankings)
- Timing is calculated (final 2 minutes, quarter-end)
- Pattern is established (not first time)
- Effect is measurable (0.12% NAV improvement)

**Escalation Required Because:**
- Potential ongoing fraud affecting fund investors
- Pattern suggests intentionality, not coincidence
- May require regulatory notification
- Fund board may need to be informed

---

## Alert 6: Front-Running Suspicion

**Decision: DISMISS**

**Reasoning:**

Factors increasing concern:
- Personal trade occurred before large firm trade
- Same security, same direction
- Employee is in Compliance (access concerns)

Factors decreasing concern:
- Alex has no access to trading desk order flow
- Index rebalancing trades were announced internally 24 hours prior
- Trade was properly pre-cleared
- Trade size consistent with normal personal trading
- No communication found with trading desk

**Why Dismiss:** This is a coincidence, not front-running. The key elements of front-running are missing:
1. **Knowledge:** Alex had no access to the order
2. **Timing:** Index rebalancing was pre-announced firm-wide (arguably public within firm)
3. **Pattern:** Trade size is normal for Alex

If Alex had access to non-public order flow and traded ahead of it, that's front-running. Trading ahead of scheduled, internally-announced rebalancing is not.

**Documentation:** "Dismissed. Employee had no access to order flow. Index rebalancing trades were pre-announced. Trade size consistent with historical pattern. No evidence of information advantage."

**Note:** May recommend reviewing whether internal announcement of rebalancing trades creates unfair advantage. Policy question, not violation.

---

## Alert 7: Unusual Options Activity

**Decision: ESCALATE**

**Reasoning:**

Factors increasing concern:
- Massive directional bet (40% of open interest)
- Stock dropped 22% on news—put options highly profitable
- Trade occurred before unannounced material news
- Far out-of-the-money puts (18% OTM) = highly speculative
- No corporate calendar event to explain timing

Factors decreasing concern:
- Michael Torres regularly trades RTLC options
- Volatility desk takes directional positions
- Internal model flagged elevated implied vol

**Why Escalate:** While the volatility desk has latitude to take positions, this trade is extraordinary:
1. 40% of open interest = outsized position
2. 18% OTM puts are rarely profitable without significant information advantage
3. The news (CEO resignation + guidance cut) was not anticipated

The timing correlation is too strong to dismiss. Even if the internal model flagged elevated vol, that doesn't explain predicting the specific news.

**Escalation Steps:**
1. Immediately review Michael Torres's communications
2. Check for any connection to RTLC management
3. Review who else at the firm might have known about RTLC issues
4. Consider voluntary disclosure to regulators if evidence supports

**High Stakes:** If insider trading, potential criminal liability. Better to escalate and be wrong than dismiss and face regulatory criticism.

---

## Alert 8: Cross-Border Coordination

**Decision: INVESTIGATE**

**Reasoning:**

Factors increasing concern:
- Communication suggests coordination ("might create some opportunities")
- Significant profit from the activity ($340K)
- Appearance of one desk creating opportunity for another

Factors decreasing concern:
- Cross-listing arbitrage is legitimate strategy
- Global desks routinely share information
- Price discrepancy was within normal range
- Proprietary trading only (no client impact)

**Why Investigate (not Escalate):** The communication is concerning but potentially innocent. "Creating opportunities" could mean:
- (Innocent) "Our selling will move the price, and the arb will widen"
- (Problematic) "We're going to manipulate the LSE price so you can profit"

**Investigation Steps:**
1. Full review of communications between desks
2. Was the London selling legitimate portfolio management or solely to create arb?
3. Did London profit or lose from their trades?
4. Review firm's policies on inter-desk communication
5. Assess whether this is business-as-usual or coordinated manipulation

**Key Question:** Was London's selling a legitimate position change that happened to create an arbitrage opportunity? Or was it designed to manipulate prices for New York's benefit?

---

## Alert 9: Suspicious Communication

**Decision: ESCALATE**

**Reasoning:**

Factors increasing concern:
- Explicit tip: "might want to look at ACME before Thursday"
- Request to delete message = consciousness of guilt
- Ryan accessed calendar showing "ACME Discussion"
- Third party (John Smith's fund) traded profitably on the information
- ACME stock moved significantly on news

Factors decreasing concern:
- None significant

**Why Escalate:** This is textbook tipping:
1. **MNPI existed:** The "ACME Discussion" calendar entry suggests non-public information
2. **Information was shared:** "Can't say much but might want to look at ACME"
3. **Recipient traded:** John Smith's fund purchased shares before announcement
4. **Benefit exchanged:** "Drinks on me" suggests quid pro quo
5. **Concealment:** "Delete this" shows awareness of wrongdoing

**Immediate Actions:**
1. Preserve all Ryan Cooper communications
2. Litigation hold on relevant records
3. Notify Legal immediately—potential criminal matter
4. Consider whether to self-report to regulators
5. Assess firm's exposure (did anyone else know?)

**This is the most serious alert in the set.** Even though Ryan didn't trade personally, tipping is itself a violation. The firm may be liable for supervisory failures.

---

## Alert 10: Pattern Day Trading

**Decision: INVESTIGATE**

**Reasoning:**

Factors increasing concern:
- Customer profile mismatch (67-year-old retired teacher trading meme stocks on margin)
- Severe losses (34% in days)
- Risk tolerance on file ("Moderate") doesn't match activity
- Investment objective ("Retirement income") contradicts day trading
- Pattern suggests potential cognitive decline or gambling behavior

Factors decreasing concern:
- Customer passed PDT acknowledgment
- All trades customer-initiated
- Suitability review completed at account opening
- Customer is adult making own decisions

**Why Investigate (not Dismiss):** While this is customer-directed activity, the account profile raises suitability and elder financial exploitation concerns.

**Investigation Steps:**
1. Review customer service call recordings—any signs of confusion?
2. Was suitability questionnaire accurately completed, or pressured?
3. Has account profile been updated since opening?
4. Any third parties directing the trading (scam potential)?
5. Consider proactive outreach to customer

**Regulatory Risk:** FINRA expects firms to have reasonable supervision even for self-directed accounts. If customer is being exploited or experiencing cognitive issues, firm may have duty to act.

**Not a Dismiss:** Even though customer initiated the trades, the disconnect between profile and activity is too significant to ignore. An investigation to confirm the customer understands their activity is appropriate.

---

## Summary Table

| Alert | Decision | Primary Concern | Key Factor |
|-------|----------|-----------------|------------|
| 1 | DISMISS | Spoofing | Market maker role explains activity |
| 2 | INVESTIGATE | Insider trading | Suspicious timing, but credible alternative |
| 3 | ESCALATE | Layering | Algorithm showing repeated manipulation pattern |
| 4 | INVESTIGATE | Wash trading | Legitimate explanation needs verification |
| 5 | ESCALATE | Marking close | Pattern across multiple months |
| 6 | DISMISS | Front-running | No access to order flow, proper pre-clearance |
| 7 | ESCALATE | Insider trading | Extraordinary position before unannounced news |
| 8 | INVESTIGATE | Manipulation | Communication ambiguous, needs clarification |
| 9 | ESCALATE | Tipping | Explicit tip + trade + concealment |
| 10 | INVESTIGATE | Suitability | Profile mismatch requires verification |

---

## Key Takeaways

1. **Context matters:** Same activity can be legitimate (market maker) or suspicious (portfolio manager)

2. **Patterns > single instances:** One unusual event is noise; repeated patterns suggest intent

3. **Follow the money:** Who benefits? That's usually where the answer lies

4. **Communications are gold:** The most damning evidence usually comes from messages

5. **Document everything:** Your reasoning is as important as your conclusion

6. **When in doubt, investigate:** Investigation is not accusation—it's due diligence

7. **Know when to escalate:** Some matters require senior judgment immediately
