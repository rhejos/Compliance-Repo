# Regulatory Change Tracker Template

Use this template to systematically track and assess regulatory changes.

---

## 1. Tracker Overview

### Purpose
This tracker helps compliance teams:
- Monitor regulatory changes
- Assess applicability and impact
- Prioritize implementation efforts
- Track progress to compliance

### Update Frequency
| Source Type | Review Frequency |
|-------------|-----------------|
| Primary regulators (FTC, SEC, state AGs) | Weekly |
| Industry bodies (PCI SSC, AICPA) | Monthly |
| International (EU, UK) | Bi-weekly |
| News and publications | Daily scan |

---

## 2. Regulatory Change Entry Template

For each regulatory change, document the following:

### Basic Information

| Field | Description | Example |
|-------|-------------|---------|
| **ID** | Unique identifier | RC-2024-001 |
| **Name** | Short name for the change | "Colorado Privacy Act" |
| **Source** | Where you learned of it | State legislature, Law360 |
| **Date Identified** | When you added to tracker | 2024-01-15 |
| **Effective Date** | When compliance is required | 2025-07-01 |
| **Category** | Type of regulation | Privacy, Security, Financial |
| **Jurisdiction** | Geographic scope | Colorado, USA |

### Regulatory Details

| Field | Description |
|-------|-------------|
| **Summary** | 2-3 sentence overview of the requirement |
| **Key Requirements** | Bullet points of main obligations |
| **Penalties** | Potential fines or consequences for non-compliance |
| **Official Source** | Link to official text or guidance |

---

## 3. Assessment Framework

### Applicability Assessment

Score each factor (Yes/No/Partial):

| Factor | Question | Score |
|--------|----------|-------|
| **Industry Match** | Does this apply to our industry? | |
| **Geographic Scope** | Do we operate in this jurisdiction? | |
| **Data Types** | Do we handle the data types covered? | |
| **Threshold Met** | Do we meet any triggering thresholds? | |
| **Customer Impact** | Does this affect our customer obligations? | |

**Applicability Determination:**
- **Applicable**: 3+ Yes factors
- **Possibly Applicable**: 1-2 Yes or Partial factors
- **Not Applicable**: All No factors

### Impact Assessment

Rate each area (High/Medium/Low/None):

| Impact Area | Description | Rating |
|-------------|-------------|--------|
| **Policy Changes** | New or updated policies needed | |
| **Process Changes** | Operational procedure modifications | |
| **Technology Changes** | System updates or new tools | |
| **Training** | Staff education requirements | |
| **Documentation** | New records or disclosures | |
| **Third-Party** | Vendor or contract updates | |

**Overall Impact Rating:**
- **High**: Multiple High ratings or significant technology change
- **Medium**: Mix of Medium ratings, manageable changes
- **Low**: Minor updates, primarily documentation

### Effort Estimation

| Effort Level | Description | Typical Timeline |
|--------------|-------------|-----------------|
| **High** | Major project, significant resources, cross-functional | 6-12 months |
| **Medium** | Moderate project, dedicated resources needed | 2-6 months |
| **Low** | Minor updates, can be handled within normal workflow | 1-2 months |
| **Minimal** | Administrative updates only | < 1 month |

---

## 4. Priority Matrix

Combine impact and timeline to determine priority:

```
                    IMPACT
              Low    Med    High
         ┌────────┬────────┬────────┐
  Short  │ Medium │  High  │Critical│  (< 6 months)
         ├────────┼────────┼────────┤
TIMELINE │  Low   │ Medium │  High  │  (6-12 months)
  Med    ├────────┼────────┼────────┤
         │  Low   │  Low   │ Medium │  (> 12 months)
  Long   └────────┴────────┴────────┘
```

### Priority Definitions

| Priority | Action Required | Review Frequency |
|----------|-----------------|-----------------|
| **Critical** | Immediate project initiation, executive visibility | Weekly |
| **High** | Project planning within 30 days | Bi-weekly |
| **Medium** | Include in quarterly planning | Monthly |
| **Low** | Monitor, plan for future | Quarterly |

---

## 5. Tracking Fields

### Implementation Tracking

| Field | Description |
|-------|-------------|
| **Status** | Not Started / In Progress / Complete / N/A |
| **Owner** | Person responsible for implementation |
| **Due Date** | Internal deadline (before effective date) |
| **Milestones** | Key checkpoints |
| **Notes** | Updates and decisions |

### Status Definitions

| Status | Meaning |
|--------|---------|
| **Identified** | Just added to tracker, not yet assessed |
| **Assessing** | Under review for applicability/impact |
| **Planned** | Assessment complete, project planned |
| **In Progress** | Implementation underway |
| **Complete** | Fully implemented and verified |
| **Monitoring** | Watching for further developments |
| **Not Applicable** | Determined not to apply to organization |

---

## 6. Sample Tracker Format

| ID | Name | Eff. Date | Applicable | Impact | Priority | Owner | Status |
|----|------|-----------|------------|--------|----------|-------|--------|
| RC-001 | Example Reg | 2025-01-01 | Yes | High | Critical | J. Smith | In Progress |
| RC-002 | Other Reg | 2025-06-01 | Partial | Medium | Medium | A. Jones | Assessing |

---

## 7. Assessment Worksheet

Use this worksheet for each regulatory change:

```
REGULATORY CHANGE ASSESSMENT WORKSHEET
=====================================

IDENTIFICATION
--------------
ID: ________________
Name: ________________
Effective Date: ________________
Source: ________________
Date Assessed: ________________
Assessed By: ________________

APPLICABILITY ANALYSIS
----------------------
Industry Match:     [ ] Yes  [ ] No  [ ] Partial
Notes: ________________

Geographic Scope:   [ ] Yes  [ ] No  [ ] Partial
Notes: ________________

Data Types:         [ ] Yes  [ ] No  [ ] Partial
Notes: ________________

Thresholds:         [ ] Yes  [ ] No  [ ] Partial
Notes: ________________

APPLICABILITY DETERMINATION: [ ] Applicable  [ ] Possibly  [ ] N/A

IMPACT ASSESSMENT
-----------------
Policy Changes:     [ ] High  [ ] Med  [ ] Low  [ ] None
Process Changes:    [ ] High  [ ] Med  [ ] Low  [ ] None
Technology:         [ ] High  [ ] Med  [ ] Low  [ ] None
Training:           [ ] High  [ ] Med  [ ] Low  [ ] None
Documentation:      [ ] High  [ ] Med  [ ] Low  [ ] None
Third-Party:        [ ] High  [ ] Med  [ ] Low  [ ] None

OVERALL IMPACT: [ ] High  [ ] Medium  [ ] Low

EFFORT & TIMELINE
-----------------
Effort Level:       [ ] High  [ ] Medium  [ ] Low  [ ] Minimal
Time to Effective:  ________________ months
Implementation Est: ________________ months

PRIORITY: [ ] Critical  [ ] High  [ ] Medium  [ ] Low

RECOMMENDATIONS
---------------
Next Steps:
1. ________________
2. ________________
3. ________________

Owner: ________________
Target Start Date: ________________

APPROVALS
---------
Assessed by: ________________  Date: ________________
Reviewed by: ________________  Date: ________________
```

---

[← Back to Exercise Overview](README.md)
