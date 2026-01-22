# Risk Scoring Methodology

A structured approach to quantifying systemic risks for DSA/OSA compliance.

---

## Overview

Risk scoring allows you to:
- **Prioritize** which risks require immediate attention
- **Compare** risks across categories consistently
- **Track** risk levels over time
- **Demonstrate** to regulators that you have a defensible methodology

The formula:

```
Inherent Risk = Likelihood × Severity
Residual Risk = Inherent Risk × (1 - Control Effectiveness)
```

---

## Step 1: Assess Likelihood

How probable is it that this risk will materialize on your platform?

### Likelihood Scale (1-5)

| Score | Level | Description | Frequency Indicator |
|-------|-------|-------------|---------------------|
| **1** | Rare | Could occur in exceptional circumstances | Less than once per year |
| **2** | Unlikely | Not expected, but possible | Once per year |
| **3** | Possible | Might occur occasionally | Monthly |
| **4** | Likely | Will probably occur | Weekly |
| **5** | Almost Certain | Expected to occur regularly | Daily or continuous |

### Factors Affecting Likelihood

| Factor | Increases Likelihood | Decreases Likelihood |
|--------|---------------------|---------------------|
| **Platform size** | More users = more potential incidents | Smaller user base |
| **Content type** | User-generated, live, ephemeral | Curated, pre-moderated |
| **User demographics** | Vulnerable populations, anonymous users | Verified, professional users |
| **Historical data** | Past incidents of this type | Clean track record |
| **External environment** | Elections, crises, trending events | Stable periods |
| **Business model** | Engagement-driven, ad-supported | Subscription, utility-focused |

### Likelihood Assessment Questions

1. How often has this type of incident occurred in the past 12 months?
2. What is the trend (increasing, stable, decreasing)?
3. How does this compare to industry benchmarks?
4. Are there upcoming events that might increase likelihood?
5. What systemic factors make this risk more or less likely?

---

## Step 2: Assess Severity

If the risk materializes, how serious would the consequences be?

### Severity Scale (1-5)

| Score | Level | Description | Impact Examples |
|-------|-------|-------------|-----------------|
| **1** | Negligible | Minimal impact, easily addressed | Single content item removed, no harm |
| **2** | Minor | Limited impact, contained quickly | Small-scale policy violation, minor user harm |
| **3** | Moderate | Significant impact requiring response | Harm to multiple users, media attention |
| **4** | Major | Serious harm, regulatory attention | Widespread harm, regulatory investigation |
| **5** | Severe | Catastrophic harm, existential risk | Real-world violence, massive rights violations |

### Severity Dimensions

Assess severity across multiple dimensions and use the highest score:

| Dimension | Score 1 | Score 3 | Score 5 |
|-----------|---------|---------|---------|
| **User harm** | Inconvenience | Distress, harassment | Physical harm, death |
| **Scale of affected users** | Isolated | Hundreds-thousands | Millions |
| **Vulnerable populations** | General users | Some vulnerable | Primarily children/vulnerable |
| **Reversibility** | Easily reversed | Partially reversible | Permanent damage |
| **Regulatory/legal** | No action likely | Investigation possible | Enforcement certain |
| **Reputational** | Minor/no coverage | Industry coverage | Mainstream media crisis |
| **Societal impact** | None | Local/community | Democratic processes, public health |

### Severity Assessment Questions

1. Who would be harmed and how severely?
2. How many users could be affected?
3. Are vulnerable populations disproportionately impacted?
4. Can the harm be undone or mitigated after the fact?
5. What regulatory, legal, or reputational consequences would follow?

---

## Step 3: Calculate Inherent Risk

Inherent Risk = Likelihood × Severity

### Inherent Risk Matrix

|  | **Severity 1** | **Severity 2** | **Severity 3** | **Severity 4** | **Severity 5** |
|--|----------------|----------------|----------------|----------------|----------------|
| **Likelihood 5** | 5 (Medium) | 10 (High) | 15 (Critical) | 20 (Critical) | 25 (Critical) |
| **Likelihood 4** | 4 (Low) | 8 (Medium) | 12 (High) | 16 (Critical) | 20 (Critical) |
| **Likelihood 3** | 3 (Low) | 6 (Medium) | 9 (Medium) | 12 (High) | 15 (Critical) |
| **Likelihood 2** | 2 (Low) | 4 (Low) | 6 (Medium) | 8 (Medium) | 10 (High) |
| **Likelihood 1** | 1 (Low) | 2 (Low) | 3 (Low) | 4 (Low) | 5 (Medium) |

### Risk Level Definitions

| Score Range | Risk Level | Response Required |
|-------------|------------|-------------------|
| **1-4** | Low | Monitor, standard controls |
| **5-9** | Medium | Enhanced monitoring, consider additional controls |
| **10-14** | High | Priority mitigation required, escalate to leadership |
| **15-25** | Critical | Immediate action required, board-level visibility |

---

## Step 4: Assess Control Effectiveness

What controls currently mitigate this risk, and how effective are they?

### Control Effectiveness Scale

| Score | Level | Description | Characteristics |
|-------|-------|-------------|-----------------|
| **0%** | None | No controls in place | Risk fully exposed |
| **25%** | Weak | Basic controls, limited effectiveness | Manual, reactive, inconsistent |
| **50%** | Moderate | Reasonable controls with gaps | Automated + manual, some coverage gaps |
| **75%** | Strong | Robust controls, well-maintained | Comprehensive, tested, continuously improved |
| **90%** | Very Strong | Industry-leading controls | Proactive, multi-layered, regularly audited |

### Control Assessment Criteria

| Criterion | Questions to Ask |
|-----------|------------------|
| **Coverage** | Does the control address all manifestations of this risk? |
| **Automation** | Is the control automated or manual? |
| **Speed** | How quickly does the control respond? |
| **Accuracy** | What are false positive/negative rates? |
| **Bypass** | How easily can bad actors circumvent the control? |
| **Testing** | How often is the control tested and validated? |
| **Maintenance** | Is the control actively maintained and updated? |

### Example Control Assessment

**Risk:** Dissemination of terrorist content

| Control | Coverage | Speed | Accuracy | Overall |
|---------|----------|-------|----------|---------|
| Hash-matching (PhotoDNA, GIFCT) | Known content only | Real-time | High | 60% |
| ML classifier | New content | Real-time | Medium (FP issues) | 40% |
| User reporting | All content | Hours-days | Low volume | 20% |
| Human review | Escalated content | Hours | High | Depends on volume |

**Combined Control Effectiveness:** 65% (strong overlap, gaps in novel content)

---

## Step 5: Calculate Residual Risk

Residual Risk = Inherent Risk × (1 - Control Effectiveness)

### Example Calculations

| Risk | Likelihood | Severity | Inherent Risk | Controls | Residual Risk |
|------|------------|----------|---------------|----------|---------------|
| Terrorist content | 4 | 5 | 20 (Critical) | 75% | 5 (Medium) |
| Health misinformation | 5 | 3 | 15 (Critical) | 50% | 7.5 (Medium) |
| Algorithmic bias | 3 | 4 | 12 (High) | 25% | 9 (Medium) |
| CSAM | 3 | 5 | 15 (Critical) | 90% | 1.5 (Low) |
| Election interference | 4 | 5 | 20 (Critical) | 50% | 10 (High) |

### Residual Risk Response

| Residual Risk | Level | Required Response |
|---------------|-------|-------------------|
| **<4** | Low | Accept risk, monitor |
| **4-8** | Medium | Implement additional controls within 6 months |
| **9-12** | High | Implement additional controls within 3 months |
| **>12** | Critical | Immediate action required |

---

## Step 6: Document Your Assessment

For each risk, document:

### Risk Register Entry Template

```
Risk ID: [Unique identifier]
Risk Category: [DSA Article 34 category]
Risk Description: [Clear description of the risk]

INHERENT RISK ASSESSMENT
Likelihood: [1-5] — [Justification]
Severity: [1-5] — [Justification]
Inherent Risk Score: [L×S] — [Risk Level]

CURRENT CONTROLS
Control 1: [Description] — Effectiveness: [%]
Control 2: [Description] — Effectiveness: [%]
Overall Control Effectiveness: [%]

RESIDUAL RISK
Residual Risk Score: [Inherent × (1-Controls)]
Residual Risk Level: [Low/Medium/High/Critical]

RISK RESPONSE
[  ] Accept  [  ] Mitigate  [  ] Transfer  [  ] Avoid
Planned Mitigations: [If applicable]
Owner: [Name/Team]
Target Date: [If mitigating]

EVIDENCE
- [Data source 1]
- [Data source 2]

Last Updated: [Date]
Next Review: [Date]
```

---

## Aggregation and Reporting

### Category-Level Aggregation

For each DSA Article 34 category, report:
- Number of identified risks
- Highest residual risk score
- Average residual risk score
- Trend vs. previous assessment

### Executive Summary Format

| Category | # Risks | Critical | High | Medium | Low | Trend |
|----------|---------|----------|------|--------|-----|-------|
| Illegal Content | 8 | 0 | 2 | 4 | 2 | → |
| Fundamental Rights | 6 | 0 | 1 | 3 | 2 | ↑ |
| Civic Discourse | 5 | 1 | 2 | 2 | 0 | ↑ |
| Public Health/Minors | 7 | 0 | 2 | 3 | 2 | → |
| Public Security | 4 | 0 | 1 | 2 | 1 | ↓ |

### Trend Indicators

- ↑ Risk increasing (requires attention)
- → Risk stable
- ↓ Risk decreasing (controls effective)

---

## Common Pitfalls

| Pitfall | Problem | Solution |
|---------|---------|----------|
| **Inconsistent scoring** | Different assessors score same risks differently | Use calibration exercises, provide examples |
| **Optimistic control assessment** | Overestimating control effectiveness | Require evidence, test controls |
| **Static assessment** | Not updating for changing conditions | Schedule quarterly reviews minimum |
| **Missing dependencies** | Not considering how risks interact | Map risk interconnections |
| **Quantification theater** | Precise numbers creating false confidence | Acknowledge uncertainty, use ranges |

---

## Next Steps

1. Use this methodology to score risks identified in [risk_taxonomy.md](risk_taxonomy.md)
2. Map controls using [mitigation_library.md](mitigation_library.md)
3. Gather evidence using [evidence_collection_template.md](evidence_collection_template.md)
4. Ensure scoring addresses both DSA and OSA per [dsa_osa_harmonization.md](dsa_osa_harmonization.md)
