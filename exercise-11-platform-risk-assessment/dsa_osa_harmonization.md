# DSA-OSA Harmonization Mapping

Platforms operating in both the EU and UK must comply with both the Digital Services Act (DSA) and Online Safety Act (OSA). This document maps overlapping requirements to enable efficient, unified compliance.

---

## Framework Comparison Overview

| Aspect | DSA (EU) | OSA (UK) |
|--------|----------|----------|
| **Effective** | Feb 2024 (VLOPs: Aug 2023) | Phased: 2024-2025 |
| **Scope** | Intermediary services in EU | User-to-user + search in UK |
| **Regulator** | European Commission + DSCs | Ofcom |
| **Risk assessment** | Required for VLOPs/VLOSEs | Required for all in-scope services |
| **Max penalty** | 6% global turnover | 10% global turnover or £18M |
| **Focus** | Systemic risks from design + algorithms | Illegal + harmful content duties |

---

## Risk Category Mapping

### Direct Overlaps

| DSA Article 34 Category | OSA Equivalent | Notes |
|------------------------|----------------|-------|
| **Illegal content** | Illegal content duty (s. 9-10) | Near-identical scope |
| **Minors protection** | Children's safety duties (s. 11-12) | OSA more prescriptive |
| **Public health** | Partially covered by priority offences | OSA narrower |
| **Fundamental rights** | Not directly equivalent | DSA broader |
| **Civic discourse/elections** | Not directly equivalent | DSA broader |
| **Public security** | Terrorism, related offences | OSA more enforcement-focused |

### Detailed Mapping: Illegal Content

| Content Type | DSA | OSA | Harmonization Approach |
|--------------|-----|-----|----------------------|
| **CSAM** | Art. 34(1)(a) | Priority illegal content | Use highest standard (both strict) |
| **Terrorism** | Art. 34(1)(a) | Priority illegal content | Align with GIFCT + UK CT requirements |
| **Hate speech** | Art. 34(1)(a) | Illegal content (s. 9) | Map to both EU FD 2008/913 + UK POA 1986 |
| **Fraud/scams** | Art. 34(1)(a) | Priority illegal content | Cover both frameworks |
| **IP infringement** | Art. 34(1)(a) | Not priority focus | DSA drives compliance |
| **Drugs** | Art. 34(1)(a) | Priority illegal content | Align to both |
| **Weapons** | Art. 34(1)(a) | Priority illegal content | UK may have stricter rules |

### Detailed Mapping: Protection of Minors

| Requirement | DSA Art. 28(1)-(3) | OSA Part 3 | Harmonization |
|-------------|-------------------|------------|---------------|
| **Age verification** | "Appropriate measures" | Specific age assurance duties | Build to OSA standard |
| **Default privacy for minors** | Required | Required | Align both |
| **Targeted advertising restrictions** | Banned for minors | Limited | Follow DSA ban |
| **Harmful content access** | Risk mitigation | Detailed content categories | Map OSA categories to DSA risks |
| **Reporting mechanisms** | Required | Required | Single unified system |

---

## Duty Mapping: Risk Assessment Requirements

### DSA Article 34 vs. OSA Risk Assessment Duties

| DSA Requirement | OSA Equivalent | Gap/Difference |
|-----------------|----------------|----------------|
| Identify systemic risks | Assess risk of illegal content (s.9) | DSA broader scope |
| Assess algorithmic amplification | Consider functionalities/algorithms | Similar intent |
| Annual assessment (min) | Keep assessment up to date | DSA more specific timing |
| Consider design + functioning | Consider "how service is used" | Similar |
| Independent audit (Art. 37) | No direct equivalent | DSA unique requirement |
| Researcher data access (Art. 40) | No direct equivalent | DSA unique requirement |

### Building a Unified Risk Assessment

To satisfy both frameworks, your risk assessment should:

1. **Start with DSA Article 34 categories** (broader scope)
2. **Map OSA-specific requirements** within each category
3. **Flag OSA-unique duties** (e.g., children's access assessment)
4. **Apply stricter standard** where requirements differ
5. **Document dual compliance** explicitly

---

## Mitigation Mapping

### Required Mitigations Comparison

| Mitigation Type | DSA Art. 35 | OSA Duties | Alignment |
|-----------------|-------------|------------|-----------|
| **Content moderation** | Required | Required | Both require, similar approach |
| **Terms of service** | Art. 14 transparency | Must be clear and accessible | Align to both standards |
| **Reporting mechanisms** | Art. 16 | Required (s. 9, 11) | Single unified mechanism |
| **Trusted flaggers** | Art. 22 | Not equivalent | DSA-specific implementation |
| **User appeals** | Art. 20 | Required | Build to DSA Art. 20 standard |
| **Transparency reporting** | Art. 15, 24, 42 | Ofcom reporting | Separate reports likely needed |
| **Crisis response** | Art. 36 | Not equivalent | DSA-specific |

---

## Regulatory Engagement Mapping

| Activity | DSA | OSA | Approach |
|----------|-----|-----|----------|
| **Primary regulator** | European Commission (VLOPs) / DSC | Ofcom | Engage both separately |
| **Risk assessment submission** | To EC/DSC | To Ofcom | May require separate filings |
| **Audit** | Independent audit required | Ofcom may require | Align audit scope to cover both |
| **Incident reporting** | Art. 22 (illegal content) | To Ofcom | Separate reporting likely |
| **Transparency report** | Annual, public | To Ofcom, public elements | Two reports with shared data |

---

## Practical Harmonization Framework

### Unified Compliance Structure

```
┌─────────────────────────────────────────────────────────────────────┐
│                    UNIFIED RISK ASSESSMENT                           │
├─────────────────────────────────────────────────────────────────────┤
│                                                                      │
│  ┌─────────────────────────────────────────────────────────────────┐│
│  │              DSA ARTICLE 34 RISK CATEGORIES                      ││
│  │  (Use as primary framework - broader scope)                      ││
│  └─────────────────────────────────────────────────────────────────┘│
│                              │                                       │
│                              ▼                                       │
│  ┌─────────────────────────────────────────────────────────────────┐│
│  │              OSA-SPECIFIC REQUIREMENTS OVERLAY                   ││
│  │  • Children's access assessment                                  ││
│  │  • Priority illegal content categories                           ││
│  │  • UK-specific illegal content definitions                       ││
│  └─────────────────────────────────────────────────────────────────┘│
│                              │                                       │
│                              ▼                                       │
│  ┌─────────────────────────────────────────────────────────────────┐│
│  │              UNIFIED MITIGATION MEASURES                         ││
│  │  • Apply stricter standard where different                       ││
│  │  • Single operational implementation                             ││
│  │  • Dual compliance documentation                                 ││
│  └─────────────────────────────────────────────────────────────────┘│
│                              │                                       │
│                              ▼                                       │
│  ┌──────────────────────┐     ┌──────────────────────┐              │
│  │   DSA COMPLIANCE     │     │   OSA COMPLIANCE     │              │
│  │   DOCUMENTATION      │     │   DOCUMENTATION      │              │
│  │   • EC/DSC reports   │     │   • Ofcom reports    │              │
│  │   • Audit support    │     │   • UK filing        │              │
│  └──────────────────────┘     └──────────────────────┘              │
│                                                                      │
└─────────────────────────────────────────────────────────────────────┘
```

---

## Harmonization Checklist

When conducting your risk assessment, verify:

### Scope Coverage
- [ ] All DSA Article 34 categories addressed
- [ ] OSA illegal content categories mapped
- [ ] OSA children's duties separately assessed
- [ ] UK-specific illegal content definitions considered

### Methodology
- [ ] Scoring methodology works for both frameworks
- [ ] Algorithmic risks assessed (both require)
- [ ] Design and functionality assessed (both require)
- [ ] User behavior considered (both require)

### Mitigations
- [ ] Each mitigation mapped to both frameworks
- [ ] Stricter standard applied where different
- [ ] Single operational process where possible
- [ ] Dual compliance documented

### Documentation
- [ ] Assessment satisfies DSA Article 34 requirements
- [ ] Assessment satisfies OSA risk assessment duties
- [ ] Evidence supports both filings
- [ ] Update frequency meets both requirements (annual minimum)

### Regulatory Engagement
- [ ] EC/DSC engagement planned (DSA)
- [ ] Ofcom engagement planned (OSA)
- [ ] Transparency reports planned for both
- [ ] Audit scope covers both (where applicable)

---

## Key Differences to Watch

| Area | Difference | Implication |
|------|------------|-------------|
| **Children's safety** | OSA more prescriptive | Build to OSA standard |
| **Fundamental rights** | DSA unique category | Ensure DSA assessment addresses |
| **Election integrity** | DSA explicit focus | May need DSA-specific assessment |
| **Researcher access** | DSA Art. 40 unique | Build DSA-compliant data access |
| **Independent audit** | DSA Art. 37 unique | Plan for audit (VLOPs) |
| **Illegal content definitions** | May differ (UK vs EU law) | Map both legal frameworks |
| **Transparency timing** | Different report schedules | Plan dual reporting calendar |

---

## Resources

- **DSA Full Text:** [eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32022R2065](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32022R2065)
- **OSA Full Text:** [legislation.gov.uk/ukpga/2023/50/contents](https://www.legislation.gov.uk/ukpga/2023/50/contents)
- **EC DSA Guidance:** [digital-strategy.ec.europa.eu/en/policies/dsa](https://digital-strategy.ec.europa.eu/en/policies/dsa)
- **Ofcom OSA Guidance:** [ofcom.org.uk/online-safety](https://www.ofcom.org.uk/online-safety)
