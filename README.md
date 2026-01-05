# Applied Compliance Frameworks

*Built by a practitioner with experience across regulated operations and data-driven risk environments. This repo exists to practice real-world compliance decisions, not just document theory.*

## Quick Start (3 Steps)

1. **New to compliance?** → Start with [What is Compliance?](#what-is-compliance)
2. **Ready to practice?** → `git checkout exercise-01-escalation-decision-framework`
3. **Hiring manager?** → Jump to [5-Minute Review](#for-hiring-managers-5-minute-review)

---

## Featured Artifacts

The best examples of applied compliance thinking:

- [Capstone: End-to-End Compliance Decision](templates/capstone-compliance-decision.md) — Judgment, tradeoffs, escalation, documentation
- [Exercise 08: Communications Review Simulation](https://github.com/rhejos/Compliance-Repo/tree/claude/exercise-08-communications-review-simulation-21lOv?tab=readme-ov-file#exercise-08-global-communications-review-simulation) — Real-time decision-making under ambiguity
- [Exercise 01: Escalation Decision Framework](https://github.com/rhejos/Compliance-Repo/tree/claude/exercise-01-escalation-decision-framework-21lOv?tab=readme-ov-file#exercise-01-escalation-decision-framework) — When to escalate vs. handle

---

## Table of Contents

- [Quick Start](#quick-start-3-steps)
- [Featured Artifacts](#featured-artifacts)
- [Purpose](#purpose)
- [Who Is This For?](#who-is-this-for)
- [For Hiring Managers (5-Minute Review)](#for-hiring-managers-5-minute-review)
- [What is Compliance?](#what-is-compliance)
  - [The Basics](#the-basics)
  - [You Already Do Compliance](#you-already-do-compliance-you-just-dont-call-it-that)
  - [Why Compliance Matters](#why-compliance-matters)
  - [Why Compliance is Critical—And Always Will Be](#why-compliance-is-criticaland-always-will-be)
  - [Why Compliance is Critical in Tech](#why-compliance-is-critical-in-tech)
  - [How Compliance Differs by Industry](#how-compliance-differs-by-industry)
- [What Are Compliance Frameworks?](#what-are-compliance-frameworks)
- [Repository Structure](#repository-structure)
- [Hands-On Decision Path](#hands-on-decision-path)
- [Frameworks Overview](#frameworks-overview)
- [Exercises Overview](#exercises-overview)
- [Transferable Skills Map](#transferable-skills-map)
- [How to Use Each Exercise](#how-to-use-each-exercise)
- [Resources](#resources)
- [Templates](#reusable-templates)
- [Contributing](#contributing)
- [Important Disclaimers](#important-disclaimers)
- [Future Enhancements](#future-enhancements)
- [Getting Started](#getting-started)

---

## Purpose

This repository serves as a **comprehensive practical resource** for individuals seeking to understand, practice, and demonstrate competency in compliance and regulatory frameworks. Whether you're preparing for a career in Legal & Compliance, studying for certifications, or building practical skills, this repository provides:

1. **Educational Content** - Clear explanations of major compliance frameworks
2. **Hands-On Exercises** - Realistic scenarios to practice decision-making
3. **Completed Examples** - Reference solutions with detailed explanations
4. **Reusable Templates** - Professional documents for real-world application

This repository also serves as a living portfolio—demonstrating how to design realistic compliance exercises, assessments, and workflows for modern organizations.

---

## Who Is This For?

| Audience | How to Use This Repo |
|----------|---------------------|
| **Career Changers** | Build a portfolio demonstrating compliance knowledge |
| **Students** | Supplement coursework with practical exercises |
| **New Compliance Analysts** | Accelerate learning with realistic scenarios |
| **Hiring Managers** | Use as assessment material for candidates |
| **Existing Professionals** | Refresh knowledge and explore new frameworks |

---

## For Hiring Managers (5-Minute Review)

Short on time? Here's what to look at and what it proves:

| Artifact | What It Proves | Time |
|----------|---------------|------|
| [Exercise 01: Escalation Framework](https://github.com/rhejos/Compliance-Repo/tree/exercise-01-escalation-decision-framework) | Judgment under ambiguity—when to escalate vs. handle | 2 min |
| [Exercise 03: Incident Response](https://github.com/rhejos/Compliance-Repo/tree/exercise-03-incident-response-workflow) | Process design + regulatory notification requirements | 1 min |
| [Exercise 05: Policy Gap Analysis](https://github.com/rhejos/Compliance-Repo/tree/exercise-05-policy-gap-analysis) | Mapping controls to requirements, identifying gaps | 1 min |
| [Capstone](templates/capstone-compliance-decision.md), [Decision Rationale](templates/decision-rationale-template.md), [Escalation Log](templates/escalation-log-template.md) | Documentation rigor—judgment, tradeoffs, audit trail | 1 min |

**What this repository demonstrates:**
- Applying judgment when rules don't give clear answers
- Translating regulations into operational decisions
- Designing workflows that scale across teams
- Documenting decisions defensibly for auditors and regulators

**Want to go deeper?** Review [Exercise 08 (Communications Review Simulation)]([https://github.com/rhejos/Compliance-Repo/tree/exercise-08-communications-review-simulation](https://github.com/rhejos/Compliance-Repo/tree/claude/exercise-08-communications-review-simulation-21lOv?tab=readme-ov-file#exercise-08-global-communications-review-simulation) or [Exercise 07 (Audit Evidence Collection)](https://github.com/rhejos/Compliance-Repo/tree/exercise-07-audit-evidence-collection) to see end-to-end decision-making and documentation quality.

**What this demonstrates about my skill set:**
- Applied risk judgment under ambiguity—not just following rules, but knowing when rules don't give clear answers
- Process and workflow design that scales across teams and survives audits
- Ability to teach and operationalize compliance—I don't just know it, I can build programs around it
- Cross-functional communication and documentation quality that holds up to scrutiny

**Where this can be used internally:**
- New hire onboarding for compliance teams
- Tabletop simulations for incident response
- Vendor risk assessment workshops
- Audit readiness drills
- Interview assessments for compliance candidates

---

## What is Compliance?

> **"Why should I care about compliance?"**
>
> Because every organization—whether a startup, enterprise, hospital, or bank—operates under rules. Break them, and you face fines, lawsuits, lost customers, or worse. Understand them, and you become invaluable.
>
> Compliance isn't about checking boxes. It's about protecting people, building trust, and enabling business to operate responsibly.

### The Basics

**Compliance** means ensuring an organization follows applicable laws, regulations, industry standards, and internal policies. It protects customers, employees, data, and the organization itself.

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                        THE COMPLIANCE LANDSCAPE                              │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│   EXTERNAL REQUIREMENTS                    INTERNAL REQUIREMENTS             │
│   ┌─────────────────────┐                  ┌─────────────────────┐          │
│   │ Laws & Regulations  │                  │ Company Policies    │          │
│   │ (GDPR, HIPAA, SOX)  │                  │ (Code of Conduct)   │          │
│   └─────────────────────┘                  └─────────────────────┘          │
│   ┌─────────────────────┐                  ┌─────────────────────┐          │
│   │ Industry Standards  │                  │ Contractual Terms   │          │
│   │ (PCI-DSS, ISO)      │                  │ (Client Agreements) │          │
│   └─────────────────────┘                  └─────────────────────┘          │
│                         ↘                ↙                                   │
│                    ┌─────────────────────────┐                               │
│                    │   COMPLIANCE PROGRAM    │                               │
│                    │  Policies, Procedures,  │                               │
│                    │  Controls, Monitoring   │                               │
│                    └─────────────────────────┘                               │
│                                 │                                            │
│         ┌───────────────────────┼───────────────────────┐                   │
│         ▼                       ▼                       ▼                   │
│   ┌───────────┐           ┌───────────┐           ┌───────────┐             │
│   │  PREVENT  │           │  DETECT   │           │  RESPOND  │             │
│   │  Issues   │           │  Problems │           │  To Events│             │
│   └───────────┘           └───────────┘           └───────────┘             │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### You Already Do Compliance (You Just Don't Call It That)

Every time you follow a rule to protect someone or something, you're doing compliance:

| What You Do | What It's Called | Why It Matters |
|-------------|------------------|----------------|
| Add a password to your database | Access Control | Prevents unauthorized data access |
| Delete a user's account when they ask | Data Subject Rights | GDPR/CCPA requirement |
| Use HTTPS instead of HTTP | Encryption in Transit | Protects data from interception |
| Log who accessed a file | Audit Trail | Proves what happened during investigations |
| Ask "do we really need this data?" | Data Minimization | Reduces risk and legal exposure |
| Check if a vendor is secure before using them | Third-Party Risk Management | You're liable for their failures |

**Tech Example:** You're a developer adding a "Delete My Account" button. You:
1. Delete the user from the users table ✓
2. Remove their posts from the posts table ✓
3. Clear their data from Redis cache ✓
4. ...but forget about the analytics database, the backup tapes, and the ML model trained on their data ✗

That's a compliance failure—specifically, violating the "right to be forgotten." The button worked, but the *compliance requirement* wasn't met. The user's data still exists in three places.

**The point:** Compliance isn't a separate job. It's thinking through the full impact of what you build.

### Why Compliance Matters

| Stakeholder | Why Compliance Matters |
|-------------|----------------------|
| **Customers** | Their data is protected; they can trust the organization |
| **Employees** | Clear guidelines on acceptable behavior; protection from liability |
| **The Organization** | Avoid fines, lawsuits, reputational damage, and operational disruptions |
| **Regulators** | Ensures fair markets, consumer protection, and public safety |
| **Investors** | Reduces risk and demonstrates good governance |

### Why Compliance is Critical—And Always Will Be

---

#### 1. Trust Enables Commerce

Without compliance rules, you'd have to personally verify every company you interact with. Regulations create a baseline that lets strangers do business together.

**Before SEC (1934):** Stock markets were rampant with fraud. People lost life savings to fake companies.
**After SEC:** Public companies must file audited financial statements. Ordinary people can invest with confidence.

---

#### 2. Scale of Harm Has Grown Exponentially

| Era | Scope of Harm | Example |
|-----|---------------|---------|
| 1900s | Dozens | Local factory sells unsafe products |
| 1950s | 10,000+ | Thalidomide birth defects worldwide |
| 2000s | Millions | Enron wipes out retirement savings |
| 2008 | Global | Subprime crisis triggers worldwide recession |
| 2017 | 147 million | Equifax breach exposes half of US adults |
| 2020s | Billions | AI systems affect entire populations |

Regulations expand because stakes keep rising.

---

#### 3. Every Major Regulation Followed a Disaster

| Crisis | What Happened | Resulting Regulation |
|--------|---------------|---------------------|
| 1929 Stock Crash | No disclosure, rampant fraud | SEC created |
| 1960s Thalidomide | 10,000+ birth defects | FDA clinical trial requirements |
| 2001 Enron | Executives hid billions in debt | Sarbanes-Oxley (SOX) |
| 2008 Financial Crisis | Risky mortgages sold as safe | Dodd-Frank Act |
| 2018 Cambridge Analytica | Facebook data used to manipulate elections | GDPR enforcement, CCPA passed |

---

#### 4. Emerging Tech Will Need More Compliance

| Technology | Risk | Compliance Need |
|------------|------|-----------------|
| AI | Decisions affect jobs, loans, freedom | Fairness, explainability, human oversight |
| Autonomous Vehicles | Life-or-death decisions | Safety standards, liability rules |
| Gene Editing (CRISPR) | Human DNA modification | Consent, biosafety limits |
| Brain-Computer Interfaces | Reading/writing to brains | Mental privacy, cognitive liberty |
| Quantum Computing | Breaks current encryption | New encryption standards |
| Cryptocurrency/DeFi | Unregulated financial services | Consumer protection, AML |

---

#### 5. Compliance Professionals Shape the Future

| Role | Function |
|------|----------|
| **Translators** | Bridge between regulators and technologists |
| **Architects** | Design compliant systems from the start |
| **Advisors** | Find paths to business goals within legal boundaries |
| **Protectors** | Catch issues before they become crises |
| **Shapers** | Influence how new regulations are written |

### What Compliance Professionals Do

Compliance is not just about saying "no." It's about enabling the business to operate effectively while managing risk:

- **Advise** - Help business teams understand regulatory requirements
- **Design** - Create policies, procedures, and controls
- **Monitor** - Watch for issues through testing, surveillance, and audits
- **Investigate** - Look into potential violations or concerns
- **Report** - Communicate with regulators, executives, and the board
- **Train** - Educate employees on their responsibilities
- **Remediate** - Fix problems and prevent recurrence

### Why Compliance is Critical in Tech

---

#### 1. You Hold Millions of People's Data

| Traditional Business | Tech Company |
|---------------------|--------------|
| Paper files in cabinet | Databases with millions of records |
| Breach = dozens affected | Breach = millions affected |
| Local jurisdiction | Global user base |

**Key laws:** GDPR (EU), CCPA (California) give users rights to access and delete their data.

---

#### 2. One Product, Many Jurisdictions

A startup can have users in 50 countries on day one. Each has different rules:

| Region | Law | Key Requirement |
|--------|-----|-----------------|
| EU | GDPR | Strictest privacy law, 72-hour breach notification |
| California | CCPA | Right to know what data is collected |
| Brazil | LGPD | Similar to GDPR |
| China | PIPL | Data localization required |
| Russia | Data localization | Must store citizens' data on Russian servers |

---

#### 3. Regulators Catch Up Eventually

| Year | Event |
|------|-------|
| 2004 | Facebook launches—no social media privacy rules |
| 2016 | Cambridge Analytica harvests data—still no rules |
| 2018 | GDPR takes effect |
| 2019 | Facebook fined $5 billion |

No rules today ≠ no consequences tomorrow.

---

#### 4. You're Responsible for Your Vendors

Your app uses AWS, Stripe, Auth0, and 100+ libraries. A vulnerability anywhere affects your users.

**Example:** Log4j (2021)—one logging library flaw affected millions of applications worldwide.

---

#### 5. 24/7 Operations, 72-Hour Deadlines

GDPR requires breach notification within 72 hours. Weekends and holidays count.

---

#### 6. Algorithms Can Discriminate

| System | Issue | Violation |
|--------|-------|-----------|
| Amazon hiring AI | Penalized "women's" on resumes | Gender discrimination |
| Healthcare algorithm | Ranked Black patients as healthier | Racial discrimination |
| Loan approval AI | Used zip code as proxy for race | Fair lending violation |

**New laws:** GDPR Article 22 (right to human review), NYC Law 144 (annual AI bias audits), EU AI Act (transparency requirements).

---

#### 7. Real Consequences

| Company | Fine/Outcome | What Happened |
|---------|--------------|---------------|
| Meta (2023) | €1.2 billion | Transferred EU data to US without adequate protection |
| Equifax (2017) | $700 million | Failed to patch known vulnerability, 147M people exposed |
| Uber (2022) | Criminal conviction | Covered up breach, paid hackers, called it "bug bounty" |
| Theranos | 11+ years prison | Lied about whether technology worked |

---

#### Key Takeaways

- Know what data you collect and where it's stored
- Understand which laws apply based on user locations
- You're responsible for vendor security failures
- Have incident response plans that work at 3 AM
- Audit algorithms for bias
- Report breaches honestly and quickly
- Document everything

### How Compliance Differs by Industry

Different industries face different regulations based on the risks they create:

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                    COMPLIANCE BY INDUSTRY                                        │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                  │
│  FINANCIAL SERVICES          HEALTHCARE                 TECHNOLOGY               │
│  ┌─────────────────────┐     ┌─────────────────────┐    ┌─────────────────────┐ │
│  │ • SEC/FINRA rules   │     │ • HIPAA (patient    │    │ • SOC 2 (security)  │ │
│  │ • Anti-money        │     │   data protection)  │    │ • GDPR/CCPA         │ │
│  │   laundering (AML)  │     │ • FDA regulations   │    │   (privacy)         │ │
│  │ • Communications    │     │ • Clinical trial    │    │ • Export controls   │ │
│  │   surveillance      │     │   requirements      │    │ • AI governance     │ │
│  │ • Insider trading   │     │ • Billing/coding    │    │ • Content           │ │
│  │   prevention        │     │   compliance        │    │   moderation        │ │
│  └─────────────────────┘     └─────────────────────┘    └─────────────────────┘ │
│                                                                                  │
│  RETAIL/E-COMMERCE           MANUFACTURING              ENERGY/UTILITIES        │
│  ┌─────────────────────┐     ┌─────────────────────┐    ┌─────────────────────┐ │
│  │ • PCI-DSS (payment  │     │ • OSHA (workplace   │    │ • NERC CIP          │ │
│  │   card security)    │     │   safety)           │    │   (grid security)   │ │
│  │ • Consumer          │     │ • EPA environmental │    │ • Pipeline safety   │ │
│  │   protection laws   │     │   regulations       │    │ • Nuclear (NRC)     │ │
│  │ • Product safety    │     │ • Quality standards │    │ • Environmental     │ │
│  │ • Advertising       │     │   (ISO 9001)        │    │   permits           │ │
│  │   regulations       │     │ • Supply chain      │    │ • Rate regulation   │ │
│  └─────────────────────┘     └─────────────────────┘    └─────────────────────┘ │
│                                                                                  │
└─────────────────────────────────────────────────────────────────────────────────┘
```

**Quick Industry Examples:**

| Industry | Key Risk | Primary Focus | Example Requirement |
|----------|----------|---------------|---------------------|
| **Banking** | Money laundering, fraud | Transaction monitoring | Must file Suspicious Activity Reports (SARs) within 30 days |
| **Healthcare** | Patient privacy breaches | Data protection | Must notify patients within 60 days of a breach |
| **Tech/SaaS** | Data breaches, privacy violations | Security & privacy | Must allow EU users to delete their data (GDPR) |
| **Pharma** | Unsafe drugs reaching market | Product safety | Clinical trials must follow Good Clinical Practice (GCP) |
| **Finance (Trading)** | Market manipulation | Communications surveillance | Must retain all electronic communications for 7 years |
| **Retail** | Credit card theft | Payment security | Cannot store CVV codes after transaction authorization |

### What Are Compliance Frameworks?

A **compliance framework** is a structured set of guidelines that helps organizations meet specific regulatory or industry requirements. Think of it as a blueprint for building a compliant organization.

| Framework Type | Purpose | Examples |
|---------------|---------|----------|
| **Security** | Protect data and systems | SOC 2, ISO 27001, NIST |
| **Privacy** | Protect personal information | GDPR, CCPA, HIPAA |
| **Financial** | Ensure accurate reporting and prevent fraud | SOX, Basel III |
| **Industry-Specific** | Meet sector requirements | PCI-DSS (payments), HIPAA (healthcare) |

Each framework typically includes:
- **Requirements** - What you must do
- **Controls** - How you do it
- **Evidence** - How you prove you did it
- **Audits** - How others verify you did it

---

## Repository Structure

This repository uses a **branch-per-exercise** structure for focused learning:

```
main branch/
├── README.md                    # You are here - overview and navigation
├── CONTRIBUTING.md              # How to contribute to this repository
├── frameworks/                  # Educational content on compliance frameworks
│   ├── soc2/
│   ├── gdpr/
│   ├── hipaa/
│   ├── pci-dss/
│   └── iso27001/
├── resources/                   # Quick reference materials
│   ├── glossary.md              # 100+ compliance terms
│   ├── interview-prep.md        # Interview questions and strategies
│   └── cheat-sheets.md          # Framework quick references
└── templates/                   # Reusable templates for all exercises

exercise-01-escalation-decision-framework/     # Branch for Exercise 01
exercise-02-regulatory-change-tracker/         # Branch for Exercise 02
exercise-03-incident-response-workflow/        # Branch for Exercise 03
exercise-04-vendor-risk-assessment/            # Branch for Exercise 04
exercise-05-policy-gap-analysis/               # Branch for Exercise 05
exercise-06-communications-review-playbook/    # Branch for Exercise 06
exercise-07-audit-evidence-collection/         # Branch for Exercise 07
exercise-08-communications-review-simulation/  # Branch for Exercise 08
exercise-09-data-pipeline-compliance/          # Branch for Exercise 09 (Technical Track)
```

### How to Access Exercises

To work on an exercise, switch to its branch:
```bash
git checkout exercise-01-escalation-decision-framework
```

---

## Hands-On Decision Path

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                           HANDS-ON DECISION PATH                                 │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                  │
│  PHASE 1: FOUNDATION                                                             │
│  ┌─────────────────────────────────────┐  ┌─────────────────────────────────────┐│
│  │ 01 ESCALATION DECISION FRAMEWORK    │  │ 02 REGULATORY CHANGE TRACKER        ││
│  │ Effort: Low | Time: 2-3 hrs         │  │ Effort: Low | Time: 2-3 hrs         ││
│  │ Skills: Judgment, Risk Assessment   │  │ Skills: Monitoring, Impact Analysis ││
│  └─────────────────────────────────────┘  └─────────────────────────────────────┘│
│                              │                              │                    │
│                              └──────────────┬───────────────┘                    │
│                                             ▼                                    │
│  PHASE 2: CORE SKILLS                                                            │
│  ┌─────────────────────────────────────┐  ┌─────────────────────────────────────┐│
│  │ 03 INCIDENT RESPONSE WORKFLOW       │  │ 04 VENDOR RISK ASSESSMENT           ││
│  │ Effort: Low-Med | Time: 3-4 hrs     │  │ Effort: Medium | Time: 4-5 hrs      ││
│  │ Skills: Process Design, Breach Reqs │  │ Skills: Third-Party Risk, Due Dilig ││
│  └─────────────────────────────────────┘  └─────────────────────────────────────┘│
│                              │                              │                    │
│  ┌─────────────────────────────────────┐                    │                    │
│  │ 05 POLICY GAP ANALYSIS              │                    │                    │
│  │ Effort: Medium | Time: 4-5 hrs      │◄───────────────────┘                    │
│  │ Skills: Control Mapping, Gap ID     │                                         │
│  └─────────────────────────────────────┘                                         │
│                              │                                                   │
│                              ▼                                                   │
│  PHASE 3: ADVANCED APPLICATION                                                   │
│  ┌─────────────────────────────────────┐  ┌─────────────────────────────────────┐│
│  │ 06 COMMUNICATIONS REVIEW PLAYBOOK   │  │ 07 AUDIT EVIDENCE COLLECTION        ││
│  │ Effort: Medium | Time: 4-5 hrs      │  │ Effort: Medium | Time: 4-5 hrs      ││
│  │ Skills: Surveillance, Escalation    │  │ Skills: Evidence Mapping, Audit Prep││
│  └─────────────────────────────────────┘  └─────────────────────────────────────┘│
│                              │                              │                    │
│                              └──────────────┬───────────────┘                    │
│                                             ▼                                    │
│  ┌─────────────────────────────────────────────────────────────────────────────┐│
│  │                 08 COMMUNICATIONS REVIEW SIMULATION                          ││
│  │                 Effort: Medium-High | Time: 5-6 hrs                          ││
│  │                 Skills: Judgment, Regulatory Awareness, Real-Time Decisions  ││
│  │                 [CAPSTONE EXERCISE - Combines All Prior Skills]              ││
│  └─────────────────────────────────────────────────────────────────────────────┘│
│                                                                                  │
│  TECHNICAL TRACK (Optional)                                                      │
│  ┌─────────────────────────────────────────────────────────────────────────────┐│
│  │                 09 DATA PIPELINE COMPLIANCE REVIEW                           ││
│  │                 Effort: Medium-High | Time: 4-6 hrs                          ││
│  │                 [For technical roles: Data, Cloud, and AI compliance]        ││
│  └─────────────────────────────────────────────────────────────────────────────┘│
│                                                                                  │
└─────────────────────────────────────────────────────────────────────────────────┘
```

We recommend completing the materials in this order:

### Phase 1: Foundation (Start Here)
1. Read through the **Frameworks** section to understand core concepts
2. Complete **Exercise 01: Escalation Decision Framework** (Low Effort)
3. Complete **Exercise 02: Regulatory Change Tracker** (Low Effort)

### Phase 2: Core Skills
4. Complete **Exercise 03: Incident Response Workflow** (Low-Medium Effort)
5. Complete **Exercise 04: Vendor Risk Assessment** (Medium Effort)
6. Complete **Exercise 05: Policy Gap Analysis** (Medium Effort)

### Phase 3: Advanced Application
7. Complete **Exercise 06: Communications Review Playbook** (Medium Effort)
8. Complete **Exercise 07: Audit Evidence Collection** (Medium Effort)
9. Complete **Exercise 08: Communications Review Simulation** (Medium-High Effort)

### Technical Track
10. Complete **Exercise 09: Data Pipeline Compliance Review** (Medium-High Effort)
    - *For technical roles who want hands-on data and cloud compliance practice*

---

## Frameworks Overview

| Framework | Industry Focus | Key Concept |
|-----------|---------------|-------------|
| [SOC 2](frameworks/soc2/README.md) | Technology/SaaS | Trust Service Criteria for service organizations |
| [GDPR](frameworks/gdpr/README.md) | All (EU data) | Data protection and privacy rights |
| [HIPAA](frameworks/hipaa/README.md) | Healthcare | Protected Health Information security |
| [PCI-DSS](frameworks/pci-dss/README.md) | Payment Processing | Cardholder data protection |
| [ISO 27001](frameworks/iso27001/README.md) | All Industries | Information Security Management Systems |

---

## Exercises Overview

| # | Exercise | Branch | Effort | Skills Demonstrated |
|---|----------|--------|--------|---------------------|
| 01 | Escalation Decision Framework | `exercise-01-escalation-decision-framework` | Low | Judgment, risk assessment, documentation |
| 02 | Regulatory Change Tracker | `exercise-02-regulatory-change-tracker` | Low | Monitoring, impact assessment |
| 03 | Incident Response Workflow | `exercise-03-incident-response-workflow` | Low-Medium | Process design, notification requirements |
| 04 | Vendor Risk Assessment | `exercise-04-vendor-risk-assessment` | Medium | Third-party risk, questionnaire design |
| 05 | Policy Gap Analysis | `exercise-05-policy-gap-analysis` | Medium | Control mapping, gap identification |
| 06 | Communications Review Playbook | `exercise-06-communications-review-playbook` | Medium | Surveillance criteria, escalation paths |
| 07 | Audit Evidence Collection | `exercise-07-audit-evidence-collection` | Medium | Control-to-evidence mapping, audit prep |
| 08 | Communications Review Simulation | `exercise-08-communications-review-simulation` | Medium-High | Judgment, regulatory awareness, decision-making |
| **09** | **Data Pipeline Compliance Review** | `exercise-09-data-pipeline-compliance` | **Medium-High** | **Data lineage, cross-border transfers, cloud compliance** |

### Transferable Skills Map

These skills apply across industries—finance, healthcare, tech, SaaS, and beyond:

| Skill | Exercises That Build It | Where It Applies |
|-------|------------------------|------------------|
| **Escalation Judgment** | 01, 06, 08 | Incident response, fraud detection, ethics hotlines, content moderation |
| **Regulatory Interpretation** | 02, 03, 05 | Any regulated industry—adapting when rules change |
| **Risk Assessment** | 01, 04, 09 | Vendor management, M&A due diligence, product launches |
| **Process Design** | 03, 06, 07 | Building workflows that scale and survive audits |
| **Evidence Documentation** | 07, 08 | Audit prep, litigation holds, regulatory examinations |
| **Cross-Border Compliance** | 09 | GDPR, data localization, international operations |
| **Control Mapping** | 05, 07 | SOC 2, ISO 27001, framework implementations |

---

## How to Use Each Exercise

Every exercise follows a consistent structure:

### 1. Background
- What is this topic?
- Why does it matter in compliance?
- Real-world context and applications

### 2. Learning Objectives
- Specific skills you'll develop
- Knowledge you'll gain

### 3. Instructions
- Step-by-step guidance
- Templates to complete
- Scenarios to work through

### 4. Your Work
- Complete the exercise independently
- Document your decisions and rationale

### 5. Solutions & Explanations
- Compare your work to completed examples
- Understand the reasoning behind decisions
- Learn from alternative approaches

---

## Resources

Quick reference materials for compliance professionals at any level:

| Resource | Description | Link |
|----------|-------------|------|
| **Glossary** | 100+ compliance terms organized by category | [resources/glossary.md](resources/glossary.md) |
| **Interview Prep** | Questions, strategies, and case study practice | [resources/interview-prep.md](resources/interview-prep.md) |
| **Cheat Sheets** | Quick reference for SOC 2, GDPR, HIPAA, PCI-DSS, ISO 27001 | [resources/cheat-sheets.md](resources/cheat-sheets.md) |

---

## Reusable Templates

Professional templates for real-world compliance work:

| Template | Use Case |
|----------|----------|
| [Capstone Compliance Decision](templates/capstone-compliance-decision.md) | **End-to-end case demonstrating judgment, tradeoffs, escalation, and defensible documentation** |
| [Decision Rationale](templates/decision-rationale-template.md) | Document defensible decisions |
| [Escalation Log](templates/escalation-log-template.md) | Track escalations from start to finish |
| [Escalation Memo](templates/escalation-memo.md) | Formal escalation documentation |
| [Risk Assessment](templates/risk-assessment.md) | Evaluate and document risks |
| [Policy Template](templates/policy-template.md) | Create new policies |
| [Vendor Assessment](templates/vendor-assessment.md) | Assess third-party vendors |
| [Incident Report](templates/incident-report.md) | Document security incidents |

---

## Contributing

Want to improve this repository? Contributions are welcome!

- **Found an error?** [Open an issue](../../issues/new/choose)
- **Want to add content?** See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines
- **Have a question?** Open an issue with the "question" label

---

## Important Disclaimers

### Educational Purpose Only
This repository contains **fictional scenarios and mock data** created solely for educational purposes. All company names, individuals, and situations are entirely fabricated.

### Not Legal Advice
This content is for learning purposes and does not constitute legal, regulatory, or professional compliance advice. Always consult qualified professionals for actual compliance matters.

### Not Certification Material
This is not official certification preparation material for any regulatory body or professional organization.

### No Real Data
No actual company communications, policies, or proprietary information is included. All examples are generic and based on publicly available regulatory guidance.

---

## Future Enhancements

Ideas for continued development:

- **Design Notes per exercise** — Explain why each scenario was chosen, what tradeoffs it forces, and what makes a strong answer
- **Exercise README consistency** — Standardize all exercise branches with the same headings (Background → Objectives → Instructions → Deliverables → Solution → Reflection)
- **Industry-specific tracks** — Create branches like `track-fintech`, `track-healthcare`, `track-saas` with tailored exercises
- **Framework depth** — Expand the `/frameworks` folder with implementation guides, control mappings, and common pitfalls
- **Community contributions** — Grow adoption through LinkedIn visibility, compliance community engagement, and accepting PRs

*Contributions welcome—see [CONTRIBUTING.md](CONTRIBUTING.md).*

---

## Getting Started

Ready to begin?

1. **Start with Frameworks**: Read the [Frameworks Overview](frameworks/README.md) to build your foundational knowledge
2. **Switch to Exercise Branch**: `git checkout exercise-01-escalation-decision-framework`
3. **Complete the Exercise**: Follow the README in that branch
4. **Compare to Solutions**: Review the solutions file to check your work
5. **Repeat**: Move on to the next exercise branch

Good luck on your compliance learning journey!
