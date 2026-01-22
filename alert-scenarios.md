# Trade Surveillance Alert Scenarios

Review each alert and make a triage decision: **Dismiss**, **Investigate**, or **Escalate**.

Document your reasoning for each decision using the framework in [triage-framework.md](triage-framework.md).

---

## Alert 1: Rapid Order Cancellation

**Alert Type:** Potential Spoofing
**Timestamp:** 2024-03-15 09:32:14 EST
**Trader:** Marcus Chen (Desk: Equity Market Making)
**Instrument:** TECH Corp (TECH) — Large-cap technology stock

**Alert Details:**
```
Orders Placed:    47 buy orders totaling 125,000 shares
Orders Cancelled: 44 orders (94%) within 400ms of placement
Orders Executed:  3 orders totaling 8,200 shares
Time Window:      2 minutes 14 seconds
Price Movement:   Stock price increased 0.3% during activity
```

**Additional Context:**
- TECH Corp had elevated volatility due to earnings announcement the previous day
- Marcus Chen is a senior market maker with 8 years at the firm
- The firm was quoting two-sided markets in TECH throughout the day
- Average daily volume for TECH is 15M shares; firm's typical daily volume is 400K shares

**Your Triage Decision:** ____________

**Your Reasoning:**

---

## Alert 2: Pre-Announcement Trading

**Alert Type:** Potential Insider Trading
**Timestamp:** 2024-03-18 14:15:00 EST
**Trader:** Sarah Kim (Desk: Long/Short Equity)
**Instrument:** MediPharm Inc (MPHI) — Mid-cap pharmaceutical company

**Alert Details:**
```
Position Change:  Purchased 50,000 shares ($2.1M notional)
Timing:           3 days before FDA approval announcement
Price Movement:   Stock rose 47% on announcement day
Profit (Paper):   ~$980,000 unrealized gain
Prior Activity:   No MPHI trades in previous 12 months
```

**Additional Context:**
- FDA approval was publicly anticipated but timing was uncertain
- Multiple analyst reports predicted approval within Q1
- Sarah Kim covers healthcare sector and regularly trades pharma names
- The firm's research department published a bullish note on MPHI 2 weeks prior
- No connection identified between Sarah Kim and MediPharm employees

**Your Triage Decision:** ____________

**Your Reasoning:**

---

## Alert 3: Layering Pattern

**Alert Type:** Potential Layering/Spoofing
**Timestamp:** 2024-03-20 11:45:33 EST
**Trader:** Algorithm ID: ALPHA-7 (Strategy: Statistical Arbitrage)
**Instrument:** S&P 500 E-mini Futures (ES)

**Alert Details:**
```
Pattern Detected: Stacked orders on bid side at multiple price levels
Order Structure:  5 orders at $5,100.25, 5 at $5,100.00, 5 at $5,099.75
Total Size:       750 contracts ($190M notional)
Cancellation:     All orders cancelled within 800ms
Execution:        Simultaneous sell order executed at $5,100.50 (50 contracts)
Frequency:        Similar pattern occurred 12 times in 30-minute window
```

**Additional Context:**
- ALPHA-7 is a proprietary algorithm developed in-house
- The algorithm's stated purpose is mean-reversion arbitrage
- No recent changes to algorithm parameters
- Pattern occurs during high-volatility period (FOMC announcement day)
- Similar patterns observed from other market participants on same day

**Your Triage Decision:** ____________

**Your Reasoning:**

---

## Alert 4: Wash Trading Indicator

**Alert Type:** Potential Wash Trading
**Timestamp:** 2024-03-21 10:22:18 EST
**Accounts:** Account A (Fund: Apex Growth) and Account B (Fund: Apex Value)
**Instrument:** Regional Bank ETF (KRE)

**Alert Details:**
```
Trade 1: Account A sells 25,000 shares to Account B at $42.15
Trade 2: Account B sells 25,000 shares to Account A at $42.17
Trade 3: Account A sells 25,000 shares to Account B at $42.14
Time Span: 45 minutes
Net Position Change: Zero for both accounts
Volume Generated: 75,000 shares (3% of daily volume)
```

**Additional Context:**
- Both funds are managed by the same portfolio manager (David Park)
- Trades executed through different brokers
- KRE had low liquidity that day due to banking sector concerns
- Portfolio manager explanation: "Rebalancing between funds based on mandate requirements"
- Fund mandates do have different sector allocation targets

**Your Triage Decision:** ____________

**Your Reasoning:**

---

## Alert 5: Marking the Close

**Alert Type:** Potential Price Manipulation
**Timestamp:** 2024-03-22 15:58:42 EST
**Trader:** Jennifer Walsh (Desk: Portfolio Management)
**Instrument:** Small-Cap Growth Fund holdings (multiple securities)

**Alert Details:**
```
Trades Executed: 8 different securities in final 2 minutes of trading
Pattern:         All trades were buy orders at or above the ask
Size:            Small orders (100-500 shares each)
Price Impact:    7 of 8 securities closed at or near daily highs
Portfolio NAV:   Fund NAV increased 0.12% vs. benchmark in final minutes
Month-End:       Yes — March 31 (quarter-end)
```

**Additional Context:**
- Jennifer Walsh is the lead PM for the Small-Cap Growth Fund
- Fund performance is measured vs. Russell 2000 at month-end
- Fund was underperforming benchmark by 0.4% YTD entering the day
- Similar pattern observed on previous month-ends (December, January, February)
- Trades were within normal portfolio rebalancing parameters

**Your Triage Decision:** ____________

**Your Reasoning:**

---

## Alert 6: Front-Running Suspicion

**Alert Type:** Potential Front-Running
**Timestamp:** 2024-03-25 09:15:00 EST
**Trader:** Personal Account of Alex Rivera (Compliance Analyst)
**Instrument:** Consumer Goods Co (CGC)

**Alert Details:**
```
Personal Trade:   Purchased 500 shares at $78.20 (9:15 AM)
Firm Trade:       Large buy order 50,000 shares executed at $78.45 avg (9:32 AM)
Price Movement:   Stock closed at $79.10 (+1.2%)
Personal Profit:  $450 (0.6% gain)
Pre-Clearance:    Trade was pre-cleared through normal process
```

**Additional Context:**
- Alex Rivera works in Compliance but has no access to trading desk order flow
- The firm's 50,000 share order was entered by a different desk (Index Rebalancing)
- Index rebalancing trades are scheduled and announced internally 24 hours prior
- Alex's trade size is consistent with his historical personal trading (avg. 300-800 shares)
- No communication found between Alex and Index Rebalancing desk

**Your Triage Decision:** ____________

**Your Reasoning:**

---

## Alert 7: Unusual Options Activity

**Alert Type:** Potential Information-Based Trading
**Timestamp:** 2024-03-26 13:45:00 EST
**Trader:** Michael Torres (Desk: Volatility Trading)
**Instrument:** Retail Corp (RTLC) — Options

**Alert Details:**
```
Trade:           Purchased 2,000 put option contracts (April $45 strike)
Premium Paid:    $380,000
Days to Expiry:  18 days
Stock Price:     $52.30 at time of trade
Break-Even:      Stock needs to fall to $43.10 (18% drop) for profit
Open Interest:   Alert trade represents 40% of total open interest at this strike
```

**Additional Context:**
- RTLC had no pending announcements on corporate calendar
- 5 days later, RTLC announced CEO resignation and lowered guidance; stock dropped 22%
- Michael Torres has traded RTLC options before (12 trades in past year, mixed results)
- Volatility desk regularly takes directional positions based on quantitative signals
- Internal model flagged RTLC as "elevated implied volatility" prior to the trade

**Your Triage Decision:** ____________

**Your Reasoning:**

---

## Alert 8: Cross-Border Coordination

**Alert Type:** Potential Coordinated Trading
**Timestamp:** 2024-03-27 08:00:00 GMT / 03:00:00 EST
**Entities:** London Desk and New York Desk
**Instrument:** Global Mining Corp (GMC) — Dual-listed (LSE and NYSE)

**Alert Details:**
```
London Activity:  Heavy selling in GMC.L starting at market open (08:00 GMT)
                  Sold 200,000 shares, representing 15% of daily LSE volume
                  Price declined 2.1% during selling

New York Activity: Heavy buying in GMC starting at NYSE open (09:30 EST)
                   Bought 180,000 shares, representing 8% of daily NYSE volume
                   Arbitrage profit estimated at $340,000

Communication:    Chat message from London trader to NY trader at 07:55 GMT:
                  "Going to clear out the GMC position this morning,
                   might create some opportunities on your side"
```

**Additional Context:**
- Cross-listing arbitrage is a legitimate trading strategy
- The firm has a global equity desk that coordinates positions
- Price discrepancy between listings was within normal range (0.3%)
- Both desks have independent P&L but share information
- No client orders were involved—all proprietary trading

**Your Triage Decision:** ____________

**Your Reasoning:**

---

## Alert 9: Suspicious Communication

**Alert Type:** Communication Surveillance Flag
**Timestamp:** 2024-03-28 16:45:00 EST
**Employee:** Trading Assistant Ryan Cooper
**Medium:** Bloomberg Terminal Chat

**Alert Details:**
```
Message Content:
Ryan Cooper → External Contact (John Smith, Hedge Fund PM):
"Can't say much but might want to look at ACME before Thursday.
Just a feeling. Delete this."

Follow-up:
John Smith → Ryan Cooper:
"Got it. Drinks on me next week."
```

**Additional Context:**
- ACME Industries announced an acquisition on Thursday (stock +15%)
- Ryan Cooper is an administrative assistant with access to trader calendars
- Review of Ryan's access logs shows he viewed a calendar entry titled "ACME Discussion" 2 hours before the message
- No trades in ACME found in Ryan Cooper's personal account
- John Smith's hedge fund purchased ACME shares Wednesday (day before announcement)

**Your Triage Decision:** ____________

**Your Reasoning:**

---

## Alert 10: Pattern Day Trading

**Alert Type:** Customer Protection / Suitability
**Timestamp:** 2024-03-29 11:00:00 EST
**Account:** Retail Customer Account #4472891
**Customer:** Individual investor, Age 67, Retired teacher

**Alert Details:**
```
Trading Activity (Past 5 Business Days):
- 23 round-trip day trades
- Instruments: High-volatility meme stocks and leveraged ETFs
- Account Value: Started at $47,000, now at $31,000 (-34%)
- Margin Usage: Consistently at 80-90% of available margin
- Pattern: Trading concentrated in first and last hour of market

Account Profile:
- Risk Tolerance (on file): "Moderate"
- Investment Objective: "Retirement income"
- Trading Experience: "Limited"
- Account opened: 6 months ago
```

**Additional Context:**
- Customer passed pattern day trader acknowledgment when account equity exceeded $25K
- Customer has called customer service 3 times asking about margin calls
- No evidence of unauthorized trading—all trades customer-initiated
- Firm's suitability review was completed at account opening
- Similar accounts at the firm have experienced comparable losses

**Your Triage Decision:** ____________

**Your Reasoning:**

---

## Triage Summary

After completing your analysis, fill in this summary:

| Alert # | Decision | Primary Concern | Confidence |
|---------|----------|-----------------|------------|
| 1 | | | |
| 2 | | | |
| 3 | | | |
| 4 | | | |
| 5 | | | |
| 6 | | | |
| 7 | | | |
| 8 | | | |
| 9 | | | |
| 10 | | | |

**Confidence Scale:** High / Medium / Low

---

Now compare your decisions to [solutions.md](solutions.md).
