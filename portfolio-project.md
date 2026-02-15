# PROJECT 1: Trade Surveillance Alert Triage Framework

## Resume Line

> "Triaged 10 surveillance alert scenarios using structured Dismiss/Investigate/Escalate methodology, applying SEC, FINRA, and CFTC regulatory frameworks to identify spoofing, insider trading, wash trading, and market manipulation patterns."

---

## Triage Summary

| Alert # | Scenario Type | Decision |
|---------|--------------|----------|
| 1 | Spoofing pattern (market maker) | Dismiss |
| 2 | Pre-announcement position building | Investigate |
| 3 | Layering pattern (algorithmic) | Escalate |
| 4 | Wash trading suspicion | Investigate |
| 5 | Marking the close attempt | Escalate |
| 6 | Front-running suspicion | Dismiss |
| 7 | Unusual options activity | Escalate |
| 8 | Cross-border coordinated trading | Investigate |
| 9 | Communication flagged with trade correlation | Escalate |
| 10 | Customer suitability / pattern day trading | Investigate |

---

## Alert Documentation

### Alert 1: Rapid Order Cancellation — Potential Spoofing

**Alert Summary:** Market maker placed 47 buy orders (125,000 shares) and cancelled 94% within 400ms during post-earnings volatility in a large-cap technology stock.

**Key Data Points Reviewed:**
- 94% cancellation rate within 400ms
- Trader role: Senior equity market maker (8 years)
- 0.3% price movement during activity
- Post-earnings elevated volatility
- Firm activity = small fraction of 15M daily volume

**Risk Level:** Low

**Decision:** Dismiss

**Rationale:** High cancellation rates are inherent to market making — market makers routinely cancel 90%+ of quotes as they update two-sided markets. Post-earnings volatility provides a legitimate reason for rapid quote adjustments. Price impact was minimal and consistent with a volatile session.

**Regulatory Reference:** SEC Rule 10b-5 (anti-fraud); FINRA Rule 3110 (supervision). Spoofing defined under Dodd-Frank Section 747, but market-making activity has recognized exemptions under normal quoting obligations.

---

### Alert 2: Pre-Announcement Trading — Potential Insider Trading

**Alert Summary:** Healthcare sector analyst purchased $2.1M in a pharmaceutical stock (no prior trades in 12 months) three days before an FDA approval announcement, resulting in ~$980K unrealized gain.

**Key Data Points Reviewed:**
- $2.1M position — first MPHI trade in 12 months
- 3 days before FDA approval announcement
- Stock rose 47% on announcement day
- Analyst covers healthcare sector; firm published bullish research 2 weeks prior
- No identified connection to company insiders

**Risk Level:** Medium

**Decision:** Investigate

**Rationale:** The timing, position size, and break from the trader's normal pattern warrant further review. However, the FDA approval was publicly anticipated by multiple analysts, and the firm's own research supported a bullish thesis. Investigation needed to confirm no MNPI source before dismissing.

**Regulatory Reference:** SEC Rule 10b-5 (insider trading prohibition); SEC Rule 10b5-1 (trading plans); FINRA Rule 3110 (supervisory procedures for insider trading detection).

---

### Alert 3: Layering Pattern — Algorithmic Manipulation

**Alert Summary:** Proprietary algorithm placed stacked buy orders at multiple price levels in S&P 500 futures, cancelled all within 800ms, and simultaneously executed sell orders on the opposite side. Pattern repeated 12 times in 30 minutes.

**Key Data Points Reviewed:**
- Classic layering structure: stacked orders on bid, execution on ask
- 12 repetitions in 30 minutes (pattern = intent)
- 750 contracts / $190M notional per instance
- Algorithm's stated purpose (mean-reversion) doesn't match behavior
- FOMC announcement day (high volatility market-wide)

**Risk Level:** High

**Decision:** Escalate

**Rationale:** Repetition across 12 instances indicates programmatic intent, not accidental behavior. The pattern matches regulatory enforcement precedent for layering exactly. The algorithm is behaving contrary to its documented purpose, which raises questions about design intent. Since the firm developed the algorithm, this is potentially a firm-level compliance failure requiring immediate senior attention and possible algorithm suspension.

**Regulatory Reference:** CFTC Anti-Spoofing Rule (Dodd-Frank Section 747); SEC Rule 10b-5; CFTC v. Oystacher (2015) established precedent for algorithmic layering enforcement. JP Morgan $920M spoofing settlement (2020).

---

### Alert 4: Wash Trading — Inter-Fund Round Trips

**Alert Summary:** Same portfolio manager executed offsetting trades between two funds he manages (Apex Growth and Apex Value), resulting in zero net position change and generating 3% of daily volume in a low-liquidity ETF.

**Key Data Points Reviewed:**
- Same PM controls both accounts
- Net position change: zero
- 75,000 shares traded = 3% of daily volume
- Low liquidity day (banking sector concerns)
- PM explanation: mandate-driven rebalancing
- Different fund mandates exist (Growth vs. Value)

**Risk Level:** Medium

**Decision:** Investigate

**Rationale:** The trades have characteristics of wash trading (same beneficial owner, zero net change, volume generation), but the manager's explanation of mandate-driven rebalancing is plausible. Investigation needed to verify whether fund mandates actually required these trades and whether better execution methods were available (e.g., internal crosses instead of market trades).

**Regulatory Reference:** Securities Exchange Act Section 9(a)(1) (wash trading prohibition); FINRA Rule 5210 (publication of transactions); SEC Rule 10b-5.

---

### Alert 5: Marking the Close — Quarter-End NAV Manipulation

**Alert Summary:** Portfolio manager placed small buy orders at or above the ask in 8 securities during the final 2 minutes of quarter-end trading. 7 of 8 securities closed at daily highs, boosting fund NAV by 0.12%. Same pattern observed in previous three months.

**Key Data Points Reviewed:**
- 8 trades in final 2 minutes, all at or above ask
- Quarter-end timing (NAV measurement point)
- 7/8 securities closed at daily highs
- Same pattern observed December through February
- Fund underperforming benchmark by 0.4% YTD
- Small order sizes (100-500 shares) suggest awareness

**Risk Level:** High

**Decision:** Escalate

**Rationale:** Four consecutive months of end-of-day trading that artificially improves NAV is a pattern, not a coincidence. The PM has clear motive (performance-based compensation, fund rankings), calculated timing (final 2 minutes, quarter-end), and the effect is measurable. Small order sizes suggest deliberate effort to avoid detection. This is textbook marking the close and may constitute ongoing fraud affecting fund investors.

**Regulatory Reference:** SEC Rule 10b-5; SEC v. Masri (2008) — established enforcement precedent for marking the close. FINRA Rule 5210; Investment Company Act Section 17(a) (fraud by investment company affiliates).

---

### Alert 6: Front-Running Suspicion — Personal Trade Before Firm Order

**Alert Summary:** Compliance analyst purchased 500 shares in personal account 17 minutes before the firm's Index Rebalancing desk executed a 50,000-share buy order in the same stock.

**Key Data Points Reviewed:**
- Personal trade pre-cleared through normal process
- Employee has no access to trading desk order flow
- Index rebalancing trades announced internally 24 hours prior
- Trade size (500 shares) consistent with employee's historical pattern (300-800 shares)
- No communication found between employee and trading desk

**Risk Level:** Low

**Decision:** Dismiss

**Rationale:** The key elements of front-running are absent: the employee had no access to non-public order flow, the rebalancing was pre-announced firm-wide, the trade was properly pre-cleared, and the position size matches normal personal trading behavior. This is a coincidence, not front-running.

**Regulatory Reference:** FINRA Rule 5270 (front-running prohibition); SEC Rule 17j-1 (personal trading by fund personnel). Note: may recommend policy review on whether internal rebalancing announcements create information advantages.

---

### Alert 7: Unusual Options Activity — Pre-News Directional Bet

**Alert Summary:** Volatility trader purchased 2,000 far out-of-the-money put contracts ($380K premium) representing 40% of open interest. Five days later, the company announced CEO resignation and lowered guidance; stock dropped 22%.

**Key Data Points Reviewed:**
- 40% of total open interest at strike = outsized position
- 18% out-of-the-money (rarely profitable without information advantage)
- No corporate calendar event to explain timing
- Stock dropped 22% on unannounced news 5 days later
- Trader has traded RTLC before (12 times/year) but never at this scale
- Internal model flagged "elevated implied volatility"

**Risk Level:** High

**Decision:** Escalate

**Rationale:** While the volatility desk regularly takes directional positions, this trade is extraordinary in size (40% of open interest) and conviction (18% OTM puts). The timing correlation with unannounced material news — CEO resignation and guidance cut — is too strong to dismiss. The internal vol model may explain heightened interest but doesn't explain predicting specific corporate events. Potential criminal liability if insider trading is confirmed.

**Regulatory Reference:** SEC Rule 10b-5; Securities Exchange Act Section 16(b) (short-swing profits); SEC enforcement focus on unusual options activity preceding announcements (SEC v. Raj Rajaratnam pattern).

---

### Alert 8: Cross-Border Coordination — Dual-Listed Arbitrage

**Alert Summary:** London desk sold 200,000 shares of a dual-listed stock at LSE open, depressing the price 2.1%. New York desk purchased 180,000 shares at NYSE open, capturing a $340K arbitrage profit. Chat message suggests coordination between desks.

**Key Data Points Reviewed:**
- Communication: "Going to clear out the GMC position... might create some opportunities on your side"
- $340K arbitrage profit
- London selling = 15% of daily LSE volume
- Price discrepancy within normal range (0.3%)
- Cross-listing arbitrage is a legitimate strategy
- Proprietary trading only (no client impact)

**Risk Level:** Medium

**Decision:** Investigate

**Rationale:** Cross-listing arbitrage is legitimate, but the communication raises questions about intent. "Creating opportunities" could be an innocent observation about natural market dynamics or could indicate deliberate price manipulation on one exchange to profit on another. Investigation needed to determine whether London's selling was a legitimate portfolio decision or was designed primarily to manipulate the LSE price for New York's benefit.

**Regulatory Reference:** SEC Rule 10b-5; FCA Market Abuse Regulation (MAR); EU MAR Article 12 (market manipulation across venues); MiFID II cross-border coordination requirements.

---

### Alert 9: Suspicious Communication — Tipping

**Alert Summary:** Trading assistant messaged an external hedge fund contact: "Can't say much but might want to look at ACME before Thursday. Delete this." The hedge fund bought ACME shares before Thursday's acquisition announcement (stock +15%).

**Key Data Points Reviewed:**
- Explicit tip: "might want to look at ACME before Thursday"
- Request to delete message = consciousness of guilt
- Employee accessed calendar entry titled "ACME Discussion" 2 hours before messaging
- External contact's fund traded profitably on the information
- "Drinks on me" suggests quid pro quo
- ACME announced acquisition on Thursday (stock +15%)

**Risk Level:** High

**Decision:** Escalate

**Rationale:** This is textbook tipping with all elements present: (1) MNPI existed (calendar entry for "ACME Discussion"), (2) information was shared ("look at ACME before Thursday"), (3) recipient traded profitably, (4) benefit exchanged ("drinks on me"), and (5) concealment attempted ("delete this"). Even though the tipper didn't trade personally, tipping itself is a violation. This is the most serious alert — potential criminal matter requiring immediate Legal notification, litigation hold on all records, and consideration of self-reporting to regulators.

**Regulatory Reference:** SEC Rule 10b-5; Dirks v. SEC (1983) established tipper-tippee liability framework; SEC v. Mayhew (tipping without personal trading); FINRA Rule 2010 (standards of commercial honor); potential criminal referral under Securities Exchange Act Section 32.

---

### Alert 10: Pattern Day Trading — Customer Suitability

**Alert Summary:** 67-year-old retired teacher with "Moderate" risk tolerance and "Retirement income" objective executed 23 day trades in meme stocks and leveraged ETFs over 5 business days, losing 34% of account value while using 80-90% margin.

**Key Data Points Reviewed:**
- Customer profile: Age 67, retired, limited trading experience
- Stated risk tolerance: Moderate; objective: Retirement income
- Actual activity: 23 day trades, high-volatility instruments, heavy margin
- Account value: $47K → $31K (-34%) in 5 days
- 3 customer service calls about margin calls
- All trades customer-initiated

**Risk Level:** Medium

**Decision:** Investigate

**Rationale:** The disconnect between the customer's profile (retired teacher, moderate risk, retirement income objective) and actual trading activity (aggressive day trading on margin in meme stocks) raises suitability and potential elder financial exploitation concerns. While the customer initiated all trades, FINRA expects firms to supervise even self-directed accounts when activity is clearly inconsistent with the stated profile. Investigation needed to confirm the customer understands their activity and is not being influenced by a third party.

**Regulatory Reference:** FINRA Rule 2111 (suitability); FINRA Rule 2090 (know your customer); FINRA Regulatory Notice 07-43 (senior investors); SEC Regulation Best Interest (Reg BI); FINRA Rule 3110 (supervision of customer accounts).

---

## Portfolio Value

### What This Project Demonstrates

| Competency | Evidence |
|-----------|----------|
| **Pattern recognition** | Identified spoofing, layering, insider trading, wash trading, marking the close, front-running, and tipping patterns |
| **Judgment under ambiguity** | Distinguished false positives from genuine red flags using contextual analysis |
| **Regulatory knowledge** | Applied SEC, FINRA, CFTC, FCA, and MAR requirements to each decision |
| **Risk prioritization** | Tiered alerts by severity — 4 escalated, 4 investigated, 2 dismissed |
| **Documentation rigor** | Wrote defensible rationales suitable for regulatory examination |
| **Commercial awareness** | Balanced compliance obligations with business context (market making, fund mandates) |

### Decision Distribution

```
ESCALATE (4):     Alerts 3, 5, 7, 9
INVESTIGATE (4):  Alerts 2, 4, 8, 10
DISMISS (2):      Alerts 1, 6
```

A realistic triage distribution — not everything is a violation, and not everything is a false positive. The value is in showing how you differentiate.
