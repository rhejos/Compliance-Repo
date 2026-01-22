# Mitigation Library

Sample mitigation measures mapped to DSA Article 34 risk categories with regulatory traceability.

---

## How to Use This Library

1. **Identify the risk** you need to mitigate
2. **Find relevant mitigations** in the category below
3. **Assess proportionality** — is the mitigation appropriate for your risk level?
4. **Document traceability** — link to DSA/OSA articles
5. **Plan implementation** — timeline, resources, success metrics

---

## Category 1: Illegal Content Mitigations

### Detection Measures

| Mitigation | Description | Applicable Content | DSA Article | OSA Section |
|------------|-------------|-------------------|-------------|-------------|
| **Hash-matching databases** | Compare content against known illegal material | CSAM, terrorism | Art. 35(1)(a) | s. 9 |
| **PhotoDNA / GIFCT** | Industry consortium databases | CSAM, terrorism | Art. 35(1)(a) | s. 9 |
| **ML classifiers** | Automated detection of violating content | All illegal content | Art. 35(1)(a) | s. 9 |
| **Keyword/phrase detection** | Flag content with known problematic terms | Hate speech, threats | Art. 35(1)(a) | s. 9 |
| **User behavior signals** | Detect suspicious account patterns | Fraud, scams | Art. 35(1)(a) | s. 9 |
| **Trusted flagger programs** | Priority review for expert reporters | All illegal content | Art. 22 | s. 9 |

### Response Measures

| Mitigation | Description | Speed | DSA Article | OSA Section |
|------------|-------------|-------|-------------|-------------|
| **Immediate removal** | Delete content upon detection | Real-time | Art. 16 | s. 9 |
| **Geo-blocking** | Restrict content in specific jurisdictions | Hours | Art. 35(1)(b) | s. 9 |
| **Labeling/warnings** | Add context without removal | Minutes | Art. 35(1)(c) | N/A |
| **Reduce distribution** | Limit algorithmic amplification | Minutes | Art. 35(1)(c) | N/A |
| **Account suspension** | Disable repeat offender accounts | Hours-days | Art. 23 | s. 9 |
| **Law enforcement referral** | Report to authorities (CSAM, terrorism) | Hours | Art. 18 | s. 9 |

### Prevention Measures

| Mitigation | Description | DSA Article | OSA Section |
|------------|-------------|-------------|-------------|
| **Upload filters** | Prevent known illegal content from posting | Art. 35(1)(a) | s. 9 |
| **Friction points** | Slow down sharing of potentially harmful content | Art. 35(1)(c) | N/A |
| **Seller verification** | Verify marketplace participants | Art. 30-31 | s. 9 |
| **Link preview warnings** | Alert users about suspicious external links | Art. 35(1)(c) | s. 9 |

---

## Category 2: Fundamental Rights Mitigations

### Freedom of Expression Protections

| Mitigation | Description | DSA Article | Notes |
|------------|-------------|-------------|-------|
| **Clear policies** | Transparent content rules | Art. 14 | Reduces arbitrary enforcement |
| **Human review for context** | Human judgment for ambiguous cases | Art. 35(1)(d) | Prevents over-automation errors |
| **Appeal mechanisms** | Allow users to contest decisions | Art. 20 | Due process requirement |
| **Proportionate enforcement** | Graduated responses (warn → restrict → remove) | Art. 35(1)(b) | Least restrictive means |
| **Public interest exceptions** | Newsworthy content protections | Art. 35(1)(d) | Journalism, political speech |

### Privacy Protections

| Mitigation | Description | DSA Article | Related Framework |
|------------|-------------|-------------|-------------------|
| **Data minimization** | Collect only necessary data | Art. 34(2) | GDPR Art. 5 |
| **Privacy by default** | Restrictive default settings | Art. 28 | GDPR Art. 25 |
| **User data controls** | Allow users to manage their data | Art. 35(1)(d) | GDPR Art. 15-22 |
| **Transparency on profiling** | Explain algorithmic decisions | Art. 27 | GDPR Art. 22 |

### Non-Discrimination Protections

| Mitigation | Description | DSA Article | Implementation |
|------------|-------------|-------------|----------------|
| **Algorithmic bias audits** | Test for discriminatory outcomes | Art. 37 | External audit required for VLOPs |
| **Diverse training data** | Ensure ML models trained on representative data | Art. 35(1)(a) | Development practice |
| **Demographic impact analysis** | Measure policy impact by group | Art. 35(1)(d) | Ongoing monitoring |
| **Appeals data disaggregation** | Track appeals by user demographics | Art. 20 | Identify disparate impact |

---

## Category 3: Civic Discourse Mitigations

### Election Integrity Measures

| Mitigation | Description | DSA Article | Timing |
|------------|-------------|-------------|--------|
| **Election-specific policies** | Enhanced rules during elections | Art. 35(1)(b) | Pre-election activation |
| **Political ad library** | Public archive of political advertising | Art. 39 | Ongoing requirement |
| **Ad transparency** | Disclose funding and targeting | Art. 39 | Real-time |
| **Voter information hubs** | Authoritative election information | Art. 35(1)(c) | Election periods |
| **Rapid response teams** | Dedicated staff for election threats | Art. 36 | Election periods |
| **Fact-checking partnerships** | Third-party verification | Art. 35(1)(c) | Ongoing |

### Disinformation Countermeasures

| Mitigation | Description | DSA Article | Notes |
|------------|-------------|-------------|-------|
| **Authoritative source amplification** | Boost credible sources | Art. 35(1)(c) | Health, elections |
| **Misinformation labels** | Add context to false claims | Art. 35(1)(c) | Without removal |
| **Source transparency** | Show content origin | Art. 35(1)(c) | Combat foreign interference |
| **Sharing friction** | Require confirmation before sharing viral claims | Art. 35(1)(c) | Slow spread |
| **Prebunking campaigns** | Proactive inoculation against false narratives | Art. 35(1)(c) | Prevention focus |

### Coordinated Inauthentic Behavior

| Mitigation | Description | DSA Article | Detection Method |
|------------|-------------|-------------|------------------|
| **Fake account detection** | Identify and remove inauthentic accounts | Art. 35(1)(a) | Behavioral analysis |
| **Bot detection** | Identify automated accounts | Art. 35(1)(a) | Velocity signals |
| **Network disruption** | Remove coordinated networks | Art. 35(1)(a) | Graph analysis |
| **Transparency reports** | Disclose takedown operations | Art. 15, 42 | Public accountability |

---

## Category 4: Public Health and Minors Mitigations

### Public Health Measures

| Mitigation | Description | DSA Article | OSA Section |
|------------|-------------|-------------|-------------|
| **Health misinformation policy** | Rules against dangerous health claims | Art. 35(1)(b) | s. 9 |
| **Expert partnerships** | WHO, CDC, national health authorities | Art. 35(1)(c) | N/A |
| **Crisis response protocol** | Rapid action during health emergencies | Art. 36 | N/A |
| **Resource links** | Connect at-risk users to help | Art. 35(1)(c) | s. 11 |
| **Sensitive content warnings** | Interstitials for graphic content | Art. 35(1)(c) | s. 11 |

### Protection of Minors

| Mitigation | Description | DSA Article | OSA Section |
|------------|-------------|-------------|-------------|
| **Age verification/assurance** | Verify or estimate user age | Art. 28 | s. 11 |
| **Minor-specific defaults** | Restricted settings for under-18 | Art. 28 | s. 11 |
| **Restricted DMs** | Limit adult-minor messaging | Art. 28 | s. 11 |
| **No targeted ads to minors** | Prohibit profiling-based ads | Art. 28(2) | s. 11 |
| **Parental controls** | Tools for guardian oversight | Art. 28(3) | s. 11 |
| **Screen time tools** | Features to manage usage | Art. 35(1)(c) | s. 11 |
| **Age-inappropriate content filters** | Restrict mature content for minors | Art. 28 | s. 11 |
| **Grooming detection** | Flag suspicious adult-minor interaction | Art. 35(1)(a) | s. 11 |

### Mental Health and Wellbeing

| Mitigation | Description | DSA Article | Notes |
|------------|-------------|-------------|-------|
| **Self-harm intervention** | Connect at-risk users to resources | Art. 35(1)(c) | Crisis response |
| **Eating disorder content rules** | Restrict pro-ED content | Art. 35(1)(b) | Youth focus |
| **Bullying detection** | Identify and intervene in harassment | Art. 35(1)(a) | Protect minors |
| **Positive content promotion** | Algorithmically boost healthy content | Art. 35(1)(c) | Counterweight |
| **Break reminders** | Prompt users to take breaks | Art. 35(1)(c) | Reduce overuse |

---

## Category 5: Public Security Mitigations

### Counter-Terrorism

| Mitigation | Description | DSA Article | OSA Section |
|------------|-------------|-------------|-------------|
| **GIFCT membership** | Industry hash-sharing consortium | Art. 35(1)(a) | s. 9 |
| **Terrorist content removal** | 1-hour removal under TCO | Art. 35(1)(b) | s. 9 |
| **Referral to law enforcement** | Report to authorities | Art. 18 | s. 9 |
| **Crisis protocol** | Response to active attacks | Art. 36 | N/A |
| **Radicalization pathway disruption** | Intervene in algorithmic radicalization | Art. 35(1)(c) | N/A |

### Violence Prevention

| Mitigation | Description | DSA Article | Implementation |
|------------|-------------|-------------|----------------|
| **Threat detection** | Identify credible threats of violence | Art. 35(1)(a) | ML + human review |
| **Law enforcement coordination** | Established referral processes | Art. 18 | 24/7 capability |
| **Incitement policies** | Remove calls to violence | Art. 35(1)(b) | Clear policy |
| **Live stream monitoring** | Real-time oversight of live content | Art. 35(1)(a) | High-resource |

---

## Mitigation Selection Framework

### Proportionality Assessment

Before selecting a mitigation, assess:

| Factor | Question |
|--------|----------|
| **Necessity** | Is this mitigation necessary to address the risk? |
| **Effectiveness** | Will it meaningfully reduce the risk? |
| **Proportionality** | Is it proportionate to the risk level? |
| **Fundamental rights impact** | Does it unduly restrict user rights? |
| **Feasibility** | Can we implement this technically and operationally? |
| **Resource requirements** | What investment is required? |

### Implementation Prioritization

| Residual Risk Level | Priority | Timeline |
|---------------------|----------|----------|
| Critical (>12) | P0 | Immediate |
| High (9-12) | P1 | 1-3 months |
| Medium (5-8) | P2 | 3-6 months |
| Low (<5) | P3 | Monitor, implement as resources allow |

---

## Mitigation Documentation Template

For each mitigation implemented:

```
Mitigation ID: [Unique identifier]
Mitigation Name: [Short name]

RISK ADDRESSED
Risk ID: [Link to risk register]
Risk Category: [DSA Article 34 category]
Risk Score (pre-mitigation): [From scoring methodology]

MITIGATION DETAILS
Description: [What the mitigation does]
Type: [Prevention / Detection / Response]
Regulatory Traceability: DSA Art. [X], OSA s. [Y]

IMPLEMENTATION
Status: [Planned / In Progress / Implemented]
Launch Date: [Actual or target]
Owner: [Team/person responsible]
Resources Required: [FTE, systems, budget]

EFFECTIVENESS
Expected Risk Reduction: [%]
Success Metrics: [How measured]
Actual Performance: [Post-implementation data]
Last Reviewed: [Date]

LIMITATIONS
Known Gaps: [What it doesn't cover]
Dependencies: [What it relies on]
Potential Circumvention: [How bad actors might bypass]
```

---

## Regulatory Traceability Matrix

| Mitigation Type | DSA Art. 35(1) | DSA Other | OSA |
|-----------------|----------------|-----------|-----|
| Content moderation | (a), (b), (d) | Art. 14-16 | s. 9-10 |
| Algorithmic changes | (c) | Art. 27 | N/A |
| Terms of service updates | (b) | Art. 14 | s. 9 |
| User controls | (d) | Art. 28 | s. 11 |
| Transparency measures | N/A | Art. 15, 24, 42 | Ofcom reports |
| Crisis protocols | N/A | Art. 36 | N/A |
| Cooperation mechanisms | N/A | Art. 22, 35(2) | s. 9 |
