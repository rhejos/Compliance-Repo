# Regulatory Context: Market Manipulation and Trading Violations

Understanding the regulatory landscape is essential for effective alert triage.

---

## Key Regulators and Their Focus

| Regulator | Jurisdiction | Primary Focus |
|-----------|--------------|---------------|
| **SEC** | United States | Securities fraud, insider trading, market manipulation |
| **FINRA** | United States | Broker-dealer conduct, suitability, best execution |
| **CFTC** | United States | Derivatives, commodities, futures manipulation |
| **FCA** | United Kingdom | Market abuse, conduct risk |
| **ESMA** | European Union | MAR enforcement, MiFID II compliance |

---

## Types of Market Manipulation

### 1. Spoofing

**Definition:** Placing orders with intent to cancel before execution to create false impression of supply/demand.

**Key Elements:**
- Orders placed without intent to execute
- Purpose is to move prices or induce others to trade
- Orders cancelled before execution

**Detection Indicators:**
- High order-to-trade ratio
- Rapid cancellations (milliseconds to seconds)
- Orders placed away from market but close enough to influence
- Pattern of cancellation when orders approach execution

**Regulatory Basis:**
- Dodd-Frank Act Section 747 (US)
- CEA Section 4c(a)(5) (US - Futures)
- MAR Article 12 (EU)

**Penalties:** Up to $1M per violation and 10 years imprisonment (US)

---

### 2. Layering

**Definition:** Placing multiple orders at different price levels to create appearance of depth, then cancelling.

**Key Elements:**
- Multiple orders "stacked" at successive price levels
- Creates illusion of market interest
- Executed trade on opposite side benefits from artificial price move

**Detection Indicators:**
- Stacked orders at multiple price levels
- Orders cancelled in sequence
- Opposite-side execution during or after layering
- Repeated pattern

**Example Pattern:**
```
Order Book Before Layering:
Bid         Ask
$50.00 x 100    $50.05 x 100

During Layering (manipulator adds fake bids):
Bid              Ask
$50.04 x 500     $50.05 x 100
$50.03 x 500
$50.02 x 500
$50.01 x 500
$50.00 x 100

Result: Sellers see "strong demand," sell at higher prices.
Manipulator cancels bids and buys at lower prices.
```

---

### 3. Wash Trading

**Definition:** Simultaneously buying and selling the same security to create misleading appearance of market activity.

**Key Elements:**
- No change in beneficial ownership
- Creates artificial volume
- May be used to manipulate prices or generate commissions

**Detection Indicators:**
- Same beneficial owner on both sides
- Trades that offset each other
- No economic purpose
- Pattern of matching trades

**Regulatory Basis:**
- Securities Exchange Act Section 9(a)(1) (US)
- MAR Article 12(1)(a) (EU)

**Note:** Legitimate cross-trades between accounts (e.g., rebalancing) may appear similar but have valid business purpose.

---

### 4. Marking the Close

**Definition:** Executing trades near market close to artificially influence the closing price.

**Key Elements:**
- Trades concentrated in final minutes
- Purpose is to affect closing price (which is used for valuations, derivatives settlement)
- Often occurs at month/quarter end

**Detection Indicators:**
- Unusual volume in final minutes
- Trades at or above offer / at or below bid
- Securities held in portfolios with NAV-based compensation
- Coincides with month-end, quarter-end, index rebalancing

**Why It Matters:**
- Mutual fund NAVs calculated at closing prices
- Options/derivatives settle based on closing prices
- Index inclusions/exclusions based on closing prices
- Performance fees often calculated at period-end

---

### 5. Front-Running

**Definition:** Trading ahead of a known client order to profit from the anticipated price impact.

**Key Elements:**
- Knowledge of pending client order
- Trading in same direction before executing client order
- Profiting from price movement caused by client order

**Detection Indicators:**
- Employee trading before large client orders
- Correlation between personal/prop trades and subsequent client activity
- Information access to order flow

**Regulatory Basis:**
- FINRA Rule 5270 (Front Running of Block Transactions)
- SEC Rule 10b-5 (Fraud)
- MiFID II Article 16 (EU)

---

### 6. Insider Trading

**Definition:** Trading on material non-public information (MNPI).

**Key Elements:**
- Information is material (would affect investment decision)
- Information is non-public
- Trader knew or should have known information was MNPI
- Breach of duty (to company, clients, or source of information)

**Detection Indicators:**
- Trading before significant announcements
- Unusual position size or timing
- Communications with potential sources
- Break from normal trading pattern

**Types of MNPI:**
- Earnings surprises
- M&A activity
- FDA approvals/rejections
- Major contract wins/losses
- Executive departures
- Regulatory actions

**Tipper/Tippee Liability:** Both the person who shares MNPI and the person who trades on it can be liable.

---

### 7. Churning

**Definition:** Excessive trading in a customer account to generate commissions.

**Key Elements:**
- Excessive trading activity
- Purpose is to generate commissions, not serve client
- Broker has control over account

**Detection Indicators:**
- High turnover ratio
- High commission-to-equity ratio
- Trading frequency inconsistent with client objectives
- Customer complaints

**FINRA Thresholds (guidelines, not absolute):**
- Turnover ratio > 6x annually
- Cost-to-equity ratio > 20%

---

## Regulatory Expectations for Surveillance

### What Regulators Expect Firms to Have:

1. **Written supervisory procedures** for detecting manipulation
2. **Automated surveillance systems** appropriate to firm's business
3. **Timely review and disposition** of alerts
4. **Documentation** of triage decisions
5. **Escalation procedures** for serious matters
6. **Training** for surveillance staff
7. **Regular testing** of surveillance effectiveness

### Common Regulatory Criticisms:

- "Alert parameters too narrow" (missing activity)
- "Alert parameters too broad" (drowning in false positives)
- "Insufficient documentation of closures"
- "Failure to escalate serious matters"
- "Lack of holistic view" (not connecting related alerts)
- "Inadequate resources dedicated to surveillance"

---

## Cross-Border Considerations

| Issue | Implication |
|-------|-------------|
| **Dual-listed securities** | Activity on one exchange may be manipulation affecting the other |
| **Different time zones** | Coordination between desks may look suspicious |
| **Regulatory variation** | What's legal in one jurisdiction may be prohibited in another |
| **Information sharing** | Some jurisdictions restrict sharing with foreign regulators |

**MAR (EU) vs. US Approach:**
- MAR has broader definition of manipulation
- MAR includes "attempted" manipulation (intent alone can be violation)
- US generally requires actual effect on market

---

## Key Statutes and Rules Reference

| Regulation | Jurisdiction | What It Covers |
|------------|--------------|----------------|
| Securities Exchange Act §9, §10(b) | US | Market manipulation, fraud |
| Rule 10b-5 | US (SEC) | Fraud in securities transactions |
| Dodd-Frank Act §747 | US | Anti-spoofing provisions |
| FINRA Rule 5210 | US | Publication of quotes |
| FINRA Rule 5270 | US | Front-running block transactions |
| MAR (596/2014) | EU | Market abuse, manipulation |
| MiFID II | EU | Investor protection, market structure |
| Criminal Justice Act 1993 | UK | Insider dealing |

---

## Recent Enforcement Examples

| Year | Firm/Individual | Violation | Penalty |
|------|-----------------|-----------|---------|
| 2020 | JP Morgan | Spoofing (precious metals, Treasuries) | $920M |
| 2021 | Individual traders | Spoofing conspiracy | Prison (various) |
| 2022 | Broker-dealer | Best execution failures | $35M |
| 2023 | Hedge fund | Insider trading (M&A) | $45M + disgorgement |
| 2023 | Bank | Communication surveillance failures | $125M |

---

## Applying This to Alert Triage

When reviewing an alert:

1. **Identify the violation type** — Use definitions above
2. **Check the elements** — Does the activity meet all required elements?
3. **Consider regulatory perspective** — Would SEC/FINRA view this as problematic?
4. **Assess documentation needs** — What would you need to defend this decision?

Remember: Your job is not to prove guilt—it's to identify matters requiring further attention and document your reasoning.
