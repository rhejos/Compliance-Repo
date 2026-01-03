# Compliance Framework Cheat Sheets

Quick reference guides for major compliance frameworks. For details, see the [Frameworks](../frameworks/) directory.

---

## SOC 2 Cheat Sheet

### What It Is
An audit framework for service organizations demonstrating security controls.

### The Five Trust Service Criteria (TSC)

| Criteria | Focus | Key Question |
|----------|-------|--------------|
| **Security** | Protection against unauthorized access | Who can access what? |
| **Availability** | System uptime and reliability | Will it be there when needed? |
| **Processing Integrity** | Accurate, complete processing | Does it work correctly? |
| **Confidentiality** | Protection of sensitive data | Is confidential data protected? |
| **Privacy** | Personal information handling | How is PII managed? |

### Type I vs Type II

| Type I | Type II |
|--------|---------|
| Point-in-time assessment | Period of time (6-12 months) |
| "Controls are designed well" | "Controls work consistently" |
| Faster, cheaper | More valuable, more work |
| Good for first audit | Standard for ongoing compliance |

### Common Control Categories

- Access Management (onboarding, offboarding, access reviews)
- Change Management (code reviews, testing, approvals)
- Incident Response (detection, response, post-mortems)
- Vendor Management (assessments, contracts, monitoring)
- Data Protection (encryption, backups, retention)

### SOC 2 Timeline

| Phase | Duration |
|-------|----------|
| Readiness assessment | 2-4 weeks |
| Gap remediation | 2-6 months |
| Audit period (Type II) | 6-12 months |
| Audit fieldwork | 4-6 weeks |
| Report issuance | 2-4 weeks |

---

## GDPR Cheat Sheet

### What It Is
EU regulation governing personal data of EU residents. Applies regardless of where your company is located.

### Seven Principles

| Principle | Meaning |
|-----------|---------|
| **Lawfulness, fairness, transparency** | Legal basis, honest with users |
| **Purpose limitation** | Only use data for stated purposes |
| **Data minimization** | Only collect what you need |
| **Accuracy** | Keep data correct and current |
| **Storage limitation** | Don't keep data forever |
| **Integrity and confidentiality** | Keep data secure |
| **Accountability** | Prove you're compliant |

### Six Lawful Bases

| Basis | When to Use |
|-------|-------------|
| **Consent** | User freely agrees (can withdraw anytime) |
| **Contract** | Necessary to fulfill a contract |
| **Legal obligation** | Law requires it |
| **Vital interests** | Life or death situations |
| **Public task** | Public authority functions |
| **Legitimate interests** | Business need that doesn't override user rights |

### Data Subject Rights

| Right | Timeline | Notes |
|-------|----------|-------|
| Access | 30 days | Provide copy of their data |
| Rectification | 30 days | Fix inaccurate data |
| Erasure ("right to be forgotten") | 30 days | Delete upon request (with exceptions) |
| Restrict processing | 30 days | Stop using but don't delete |
| Data portability | 30 days | Provide data in portable format |
| Object | Without delay | Stop processing for marketing |

### Breach Notification

| Who | When | What |
|-----|------|------|
| Supervisory authority | 72 hours | Nature of breach, categories affected, measures taken |
| Data subjects | Without undue delay | If high risk to rights and freedoms |

### Key Fines

- Up to €20 million or 4% of global annual revenue (whichever is higher)
- Lower tier: Up to €10 million or 2% for less severe violations

---

## HIPAA Cheat Sheet

### What It Is
US law protecting health information. Applies to covered entities and their business associates.

### Who Must Comply

| Covered Entities | Business Associates |
|------------------|---------------------|
| Healthcare providers | Cloud providers storing PHI |
| Health plans | IT vendors with PHI access |
| Healthcare clearinghouses | Billing companies |
| | Consultants viewing PHI |

### Protected Health Information (PHI)

Health information + any of 18 identifiers:

| Identifiers |
|-------------|
| Name, Address, Dates (except year), Phone, Fax, Email |
| SSN, Medical record numbers, Health plan numbers |
| Account numbers, Certificate/license numbers |
| Vehicle identifiers, Device identifiers, URLs, IPs |
| Biometrics, Photos, Any unique identifier |

### Key Rules

| Rule | Focus |
|------|-------|
| **Privacy Rule** | Who can access PHI, patient rights |
| **Security Rule** | How to protect electronic PHI |
| **Breach Notification Rule** | When and how to report breaches |

### Security Rule Safeguards

| Type | Examples |
|------|----------|
| **Administrative** | Risk analysis, training, policies, contingency plans |
| **Physical** | Facility access, workstation security, device controls |
| **Technical** | Access controls, audit logs, encryption, integrity controls |

### Breach Notification Timeline

| Recipient | Timeline |
|-----------|----------|
| Affected individuals | Within 60 days of discovery |
| HHS (500+ individuals) | Within 60 days |
| HHS (under 500) | Annual report |
| Media (500+ in a state) | Within 60 days |

### Minimum Necessary Standard
Only access, use, or disclose the minimum PHI needed for the task.

---

## PCI-DSS Cheat Sheet

### What It Is
Security standard for organizations handling credit card data. Required by card brands (Visa, Mastercard, etc.).

### The 12 Requirements

| # | Requirement | Category |
|---|-------------|----------|
| 1 | Install and maintain network security controls | Build Secure Network |
| 2 | Apply secure configurations | Build Secure Network |
| 3 | Protect stored account data | Protect Account Data |
| 4 | Protect cardholder data in transit | Protect Account Data |
| 5 | Protect against malicious software | Maintain Vulnerability Program |
| 6 | Develop secure systems and software | Maintain Vulnerability Program |
| 7 | Restrict access by business need | Access Control |
| 8 | Identify users and authenticate access | Access Control |
| 9 | Restrict physical access | Access Control |
| 10 | Log and monitor access | Monitor and Test |
| 11 | Test security regularly | Monitor and Test |
| 12 | Support security with policies | Maintain Policy |

### Merchant Levels

| Level | Annual Transactions | Validation |
|-------|---------------------|------------|
| 1 | 6+ million | On-site audit by QSA |
| 2 | 1-6 million | SAQ + quarterly scans |
| 3 | 20K-1 million e-commerce | SAQ + quarterly scans |
| 4 | Under 20K e-commerce or up to 1M other | SAQ + quarterly scans |

### Cardholder Data

| Data Element | Can Store? | Must Protect? |
|--------------|------------|---------------|
| PAN (card number) | Yes | Yes (mask or encrypt) |
| Cardholder name | Yes | Yes |
| Expiration date | Yes | Yes |
| Service code | Yes | Yes |
| Full magnetic stripe | **No** | N/A |
| CVV/CVC | **No** | N/A |
| PIN | **No** | N/A |

### Quick Wins

- Reduce scope (don't store card data if you don't need to)
- Use tokenization or payment processors
- Segment your network
- Encrypt everything in transit and at rest

---

## ISO 27001 Cheat Sheet

### What It Is
International standard for information security management systems (ISMS). Certifiable framework.

### Key Components

| Component | Description |
|-----------|-------------|
| **ISMS** | Your security management system |
| **Risk Assessment** | Identify and evaluate risks |
| **Statement of Applicability** | Which controls apply to you |
| **Annex A Controls** | 93 controls in 4 categories |

### Annex A Control Categories (2022 version)

| Category | # Controls | Focus |
|----------|------------|-------|
| Organizational | 37 | Policies, roles, responsibilities |
| People | 8 | HR security, training, awareness |
| Physical | 14 | Physical security, equipment |
| Technological | 34 | Technical controls |

### Certification Process

| Phase | Activities |
|-------|------------|
| Gap analysis | Compare current state to requirements |
| Implementation | Build/improve ISMS |
| Internal audit | Self-assessment |
| Stage 1 audit | Documentation review |
| Stage 2 audit | Implementation verification |
| Certification | 3-year certificate issued |
| Surveillance audits | Annual check-ins |

### ISO 27001 vs SOC 2

| Aspect | ISO 27001 | SOC 2 |
|--------|-----------|-------|
| Origin | International (ISO) | US (AICPA) |
| Output | Certificate | Audit report |
| Scope | Entire ISMS | Specific system/service |
| Validity | 3 years (with surveillance) | Point-in-time or period |
| Global recognition | Higher | Growing |

---

## Quick Comparison: When to Use What

| Framework | Best For | Required By |
|-----------|----------|-------------|
| SOC 2 | SaaS companies, service providers | Customer contracts |
| GDPR | Any company with EU users/customers | Law (EU) |
| HIPAA | Healthcare, health tech | Law (US) |
| PCI-DSS | Payment processing | Card brands |
| ISO 27001 | Global companies, enterprise sales | Customer preference |

---

## Resources

- [Glossary](glossary.md) - Terms and definitions
- [Interview Prep](interview-prep.md) - Prepare for compliance interviews
- [Frameworks](../frameworks/) - Detailed framework information
- [Templates](../templates/) - Practical documentation templates
