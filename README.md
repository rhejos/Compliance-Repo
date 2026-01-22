# Exercise 11: Platform Regulatory Risk Assessment (DSA/OSA)

## Background

The **Digital Services Act (DSA)** and **Online Safety Act (OSA)** represent a fundamental shift in how online platforms are regulated. For the first time, large platforms must conduct **systemic risk assessments**—proactively identifying how their services might cause harm, rather than just responding to incidents.

This exercise teaches you to build an end-to-end risk assessment framework for online platforms, covering:
- Risk identification aligned to DSA Article 34 categories
- Quantitative scoring methodology
- Cross-framework harmonization (DSA + OSA)
- Stakeholder evidence collection
- Mitigation measure design

**Why this matters:** Tech companies operating in the EU/UK now face significant compliance obligations. Platforms designated as "Very Large Online Platforms" (VLOPs) or "Very Large Online Search Engines" (VLOSEs) under the DSA must conduct annual systemic risk assessments—or face fines up to 6% of global turnover.

---

## Regulatory Context

### Digital Services Act (EU)

| Requirement | Description |
|-------------|-------------|
| **Who** | VLOPs/VLOSEs with 45M+ EU users |
| **What** | Annual systemic risk assessments |
| **Focus** | Illegal content, fundamental rights, public discourse, minors, public health, public security |
| **Deadline** | First assessments required 2023-2024 |
| **Penalty** | Up to 6% of global annual turnover |

### Online Safety Act (UK)

| Requirement | Description |
|-------------|-------------|
| **Who** | User-to-user services, search services with UK users |
| **What** | Risk assessments for illegal and harmful content |
| **Focus** | Illegal content, content harmful to children, content harmful to adults |
| **Deadline** | Phased implementation 2024-2025 |
| **Penalty** | Up to £18M or 10% of global revenue |

---

## Learning Objectives

By completing this exercise, you will:

1. **Understand DSA Article 34 risk categories** and how they apply to different platform types
2. **Build a risk scoring methodology** using likelihood × severity matrices
3. **Map overlapping requirements** between DSA and OSA for efficient compliance
4. **Design stakeholder evidence collection** processes for Trust & Safety, Product, and Legal teams
5. **Create a mitigation library** with regulatory traceability

---

## Exercise Materials

| File | Description |
|------|-------------|
| [risk_taxonomy.md](risk_taxonomy.md) | DSA Article 34 risk categories with platform examples |
| [scoring_methodology.md](scoring_methodology.md) | Likelihood × Severity matrix, control effectiveness scale |
| [dsa_osa_harmonization.md](dsa_osa_harmonization.md) | Table mapping overlapping requirements between frameworks |
| [evidence_collection_template.md](evidence_collection_template.md) | Stakeholder questionnaire for T&S, Product, Legal |
| [mitigation_library.md](mitigation_library.md) | Sample mitigations mapped to specific risks |
| [references.md](references.md) | Official sources: DSA text, OSA text, EC guidance |

---

## Instructions

### Step 1: Understand the Risk Categories (20 min)

Review [risk_taxonomy.md](risk_taxonomy.md) to understand:
- The five DSA Article 34 systemic risk categories
- How each risk manifests on different platform types
- The relationship between algorithmic systems and systemic risks

### Step 2: Learn the Scoring Methodology (15 min)

Study [scoring_methodology.md](scoring_methodology.md) to understand:
- How to assess likelihood and severity
- How to factor in existing controls
- How to calculate residual risk scores

### Step 3: Map DSA to OSA (20 min)

Review [dsa_osa_harmonization.md](dsa_osa_harmonization.md) to understand:
- Where the frameworks overlap
- Where they differ
- How to build one assessment that satisfies both

### Step 4: Conduct a Mock Assessment (60-90 min)

**Scenario:** You are the compliance lead at a social media platform with 60M EU users and 15M UK users. The platform includes:
- User-generated content (posts, images, videos)
- Algorithmic recommendation system
- Direct messaging
- Live streaming
- Marketplace for user-to-user sales

Using the materials provided:

1. **Identify risks** across all five DSA categories for your platform
2. **Score each risk** using the methodology
3. **Map evidence sources** using the stakeholder template
4. **Propose mitigations** from the library (or design your own)
5. **Document your assessment** in a summary format

### Step 5: Reflection

Answer these questions:
1. Which risks were hardest to assess? Why?
2. How did the algorithmic recommendation system affect your risk analysis?
3. What additional evidence would you want before finalizing the assessment?
4. How would your assessment differ for a search engine vs. social media platform?

---

## Deliverables

1. **Completed risk register** with all identified risks, scores, and mitigations
2. **Evidence collection plan** identifying which stakeholders provide which data
3. **DSA-OSA mapping** showing how your assessment satisfies both frameworks
4. **Executive summary** (1 page) suitable for board presentation
5. **Reflection notes** answering the questions above

---

## Time Estimate

| Component | Time |
|-----------|------|
| Risk taxonomy review | 20 min |
| Scoring methodology | 15 min |
| DSA-OSA mapping | 20 min |
| Mock assessment | 60-90 min |
| Executive summary | 20 min |
| Reflection | 15 min |
| **Total** | **2.5-3 hours** |

---

## Skills Demonstrated

| Skill | How This Exercise Shows It |
|-------|---------------------------|
| Regulatory interpretation | Translating DSA/OSA requirements into operational risks |
| Risk assessment | Applying structured methodology to complex platform risks |
| Cross-framework compliance | Building unified approach for multiple jurisdictions |
| Stakeholder coordination | Designing evidence collection across functions |
| Mitigation design | Proposing proportionate measures with regulatory traceability |
| Executive communication | Summarizing complex risks for leadership |

---

## Who This Is For

- Trust & Safety professionals
- Platform compliance and policy teams
- GRC analysts at tech companies
- Legal/regulatory affairs in digital services
- Anyone interviewing for Big Tech compliance roles

---

## Real-World Context

**Companies affected by DSA (VLOPs designated in 2023):**
- Meta (Facebook, Instagram)
- Google (Search, YouTube, Maps, Play, Shopping)
- TikTok
- X (Twitter)
- Amazon
- Apple App Store
- LinkedIn
- Pinterest
- Snapchat
- Booking.com
- Wikipedia
- Zalando
- AliExpress
- Bing

**First systemic risk assessments were due in 2023-2024.** This is an active, evolving compliance area.

---

## Prerequisites

- Basic understanding of online platform operations
- Familiarity with risk assessment concepts
- No prior DSA/OSA knowledge required (covered in materials)

---

## Next Steps

After completing this exercise:
- Review **Exercise 09: Data Pipeline Compliance** (`git checkout exercise-09-data-pipeline-compliance`) for related technical compliance
- Study the [Cheat Sheets](resources/cheat-sheets.md) for GDPR (often overlaps with DSA obligations)
- Follow European Commission DSA enforcement updates
