# Evidence Collection Template

Questionnaires and data requests for gathering risk assessment evidence from Trust & Safety, Product, Legal, and other stakeholders.

---

## Overview

Systemic risk assessment requires evidence from across the organization. This template provides structured questionnaires for each stakeholder group.

### Stakeholder Map

| Stakeholder | Evidence They Provide |
|-------------|----------------------|
| **Trust & Safety** | Content moderation data, enforcement actions, trend analysis |
| **Product** | Feature design, algorithmic systems, user flows |
| **Legal** | Regulatory mapping, legal risk assessment, litigation data |
| **Data/Analytics** | Usage metrics, behavioral data, model performance |
| **Policy** | Policy frameworks, exception processes, stakeholder input |
| **Engineering** | Technical capabilities, system limitations, incident data |
| **User Research** | User surveys, qualitative insights, harm studies |

---

## Trust & Safety Questionnaire

### Section A: Content Moderation Operations

**A1. Volume and Capacity**

| Question | Response |
|----------|----------|
| Total pieces of content actioned in past 12 months | |
| Breakdown by violation type (top 10) | |
| Breakdown by action type (remove, restrict, label, reduce) | |
| Average daily volume of content reviewed | |
| Current moderation capacity (human + automated) | |
| Backlog size (if any) | |

**A2. Detection and Response Times**

| Metric | Value |
|--------|-------|
| % of violating content detected proactively (before reports) | |
| Average time from post to detection (proactive) | |
| Average time from report to first review | |
| Average time from detection to action | |
| % of content actioned within 24 hours | |

**A3. Accuracy and Appeals**

| Metric | Value |
|--------|-------|
| Appeal rate (% of actions appealed) | |
| Appeal overturn rate (% of appeals successful) | |
| Estimated false positive rate | |
| Estimated false negative rate | |
| How are accuracy estimates calculated? | |

**A4. Trends and Emerging Risks**

| Question | Response |
|----------|----------|
| Top 3 increasing content violation trends | |
| Top 3 emerging risk areas not well covered by current policies | |
| Any seasonal or event-driven patterns? | |
| New tactics used by bad actors? | |

---

### Section B: Specific Risk Categories

**B1. Illegal Content**

| Question | Response |
|----------|----------|
| CSAM: Detection mechanisms used? | |
| CSAM: Removal time performance | |
| Terrorism: GIFCT membership status | |
| Terrorism: Hash-matching coverage | |
| Hate speech: Definition used (legal standard?) | |
| Hate speech: Top targeted groups | |

**B2. Harm to Minors**

| Question | Response |
|----------|----------|
| Estimated % of users under 18 | |
| Age verification mechanisms | |
| Minor-specific protections in place | |
| Reports of predatory behavior (volume, trends) | |
| Self-harm/suicide content actions | |

**B3. Coordinated Inauthentic Behavior**

| Question | Response |
|----------|----------|
| Fake account takedowns (past 12 months) | |
| Coordinated campaigns disrupted | |
| Foreign state-linked operations identified | |
| Bot/automation detection capabilities | |

---

## Product Questionnaire

### Section A: Platform Architecture

**A1. Content Types and User Interactions**

| Question | Response |
|----------|----------|
| What content types can users create? (text, image, video, audio, live) | |
| What distribution mechanisms exist? (feed, search, recommendations, sharing) | |
| What interaction types exist? (comments, reactions, DMs, groups) | |
| What monetization features exist? (marketplace, tipping, ads) | |

**A2. Algorithmic Systems**

| Question | Response |
|----------|----------|
| List all recommendation algorithms in production | |
| What signals/features do each use? | |
| What are the optimization objectives? | |
| How is engagement measured and weighted? | |
| Describe any ranking or scoring systems | |
| Are any algorithms personalized? How? | |

**A3. User Controls**

| Question | Response |
|----------|----------|
| What content controls do users have? | |
| Can users opt out of recommendations? | |
| Can users control who contacts them? | |
| What privacy settings exist? | |
| Are controls different for minors? | |

---

### Section B: Design and Safety

**B1. Safety by Design**

| Question | Response |
|----------|----------|
| How are safety considerations included in product development? | |
| Who reviews new features for safety implications? | |
| Examples of features modified or rejected for safety reasons | |
| How do you test for unintended consequences? | |

**B2. Algorithmic Impact**

| Question | Response |
|----------|----------|
| Have you tested for amplification of harmful content? Results? | |
| Have you tested for demographic bias? Results? | |
| What content is demoted/amplified by default? | |
| How do you prevent filter bubbles/echo chambers? | |

**B3. Minor-Specific Design**

| Question | Response |
|----------|----------|
| What features are disabled or modified for minors? | |
| How do you identify minor users? | |
| Default privacy settings for minors? | |
| Restrictions on adult-minor interactions? | |

---

## Legal Questionnaire

### Section A: Regulatory Mapping

**A1. Jurisdictional Analysis**

| Question | Response |
|----------|----------|
| Primary jurisdictions of operation | |
| User breakdown by jurisdiction | |
| Local legal requirements mapped? | |
| Local content restrictions identified? | |

**A2. Current Regulatory Engagement**

| Question | Response |
|----------|----------|
| Current regulatory investigations (describe without privileged info) | |
| Past enforcement actions (past 3 years) | |
| Pending litigation related to platform content/design | |
| Regulatory inquiries responded to | |

**A3. Fundamental Rights Assessment**

| Question | Response |
|----------|----------|
| How do you assess freedom of expression impacts? | |
| How do you assess privacy impacts? | |
| How do you assess non-discrimination? | |
| Process for human rights impact assessment? | |

---

### Section B: Content Liability

**B1. Notice and Takedown**

| Question | Response |
|----------|----------|
| Volume of legal takedown requests (past 12 months) | |
| Compliance rate with valid requests | |
| Average response time | |
| Appeals/disputes from requesters | |

**B2. Law Enforcement**

| Question | Response |
|----------|----------|
| Volume of law enforcement requests | |
| Emergency disclosure requests | |
| Preservation requests | |
| Process for assessing request validity | |

---

## Data/Analytics Questionnaire

### Section A: Usage Metrics

**A1. Platform Scale**

| Metric | Value |
|--------|-------|
| Monthly active users (EU, UK, Global) | |
| Daily active users (EU, UK, Global) | |
| Average session duration | |
| Average sessions per user per day | |
| Content posted per day | |
| Content consumed per day | |

**A2. User Demographics (Estimated)**

| Metric | Value |
|--------|-------|
| Age distribution | |
| Gender distribution | |
| Geographic distribution | |
| % new users (past 12 months) | |

**A3. Engagement Patterns**

| Metric | Value |
|--------|-------|
| Average time spent per day | |
| Distribution of time spent (median, P90, P99) | |
| Heavy user definition and % | |
| Features driving most engagement | |

---

### Section B: Behavioral Analysis

**B1. Content Exposure**

| Question | Response |
|----------|----------|
| % of content exposure from recommendations vs. follows | |
| Average content diversity score | |
| Filter bubble metrics | |
| Viral content characteristics | |

**B2. Harm-Related Metrics**

| Question | Response |
|----------|----------|
| Reports per 1000 users | |
| Block/mute rates | |
| Account deactivation rates (voluntary) | |
| Survey data on negative experiences | |
| Correlation between usage and wellbeing indicators | |

---

## Evidence Collection Timeline

| Phase | Duration | Activities |
|-------|----------|------------|
| **Kickoff** | Week 1 | Distribute questionnaires, explain requirements |
| **Data Collection** | Weeks 2-4 | Stakeholders complete questionnaires |
| **Clarification** | Week 5 | Follow-up questions, fill gaps |
| **Synthesis** | Week 6 | Compile evidence, identify patterns |
| **Validation** | Week 7 | Review with stakeholders for accuracy |
| **Documentation** | Week 8 | Finalize evidence package |

---

## Evidence Quality Checklist

For each piece of evidence, verify:

- [ ] **Source identified:** Who provided this data?
- [ ] **Methodology clear:** How was it calculated/collected?
- [ ] **Time period specified:** What time range does it cover?
- [ ] **Limitations documented:** What are the caveats?
- [ ] **Comparable:** Can it be compared to previous periods or benchmarks?
- [ ] **Verifiable:** Could an auditor validate this?

---

## Confidentiality Note

Some evidence may be commercially sensitive or legally privileged. Establish clear protocols for:

- What can be shared externally (e.g., in transparency reports)
- What is for internal assessment only
- What requires legal review before disclosure
- How to handle regulatory requests for underlying data
