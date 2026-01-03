# Compliance Glossary

Essential terms you'll encounter in compliance work. Organized by category.

---

## Regulatory & Legal Terms

| Term | Definition | Example |
|------|------------|---------|
| **Regulation** | A rule with force of law issued by a government agency | GDPR, HIPAA, SOX |
| **Statute** | A law passed by a legislative body | The Sarbanes-Oxley Act of 2002 |
| **Enforcement Action** | When a regulator penalizes a company for non-compliance | FTC fines, SEC settlements |
| **Consent Decree** | An agreement to resolve a regulatory violation without admitting guilt | Company agrees to specific remediation |
| **Safe Harbor** | A provision that protects from liability if certain conditions are met | GDPR's standard contractual clauses |
| **Adequacy Decision** | EU determination that a country's data protection is sufficient | EU-US Data Privacy Framework |

---

## Privacy & Data Protection

| Term | Definition | Example |
|------|------------|---------|
| **PII** | Personally Identifiable Information - data that can identify an individual | Name, SSN, email, IP address |
| **PHI** | Protected Health Information - health data covered by HIPAA | Medical records, diagnoses, prescriptions |
| **Data Subject** | The person whose data is being processed | A customer, employee, or user |
| **Data Controller** | Entity that decides why and how data is processed | Your company |
| **Data Processor** | Entity that processes data on behalf of the controller | AWS, a payroll vendor |
| **DPA** | Data Processing Agreement - contract governing data handling | Required between controller and processor |
| **DPIA** | Data Protection Impact Assessment - risk analysis for high-risk processing | Required for profiling, large-scale processing |
| **SCCs** | Standard Contractual Clauses - EU-approved contract terms for data transfers | Used for US-EU data transfers |
| **Right to Erasure** | Data subject's right to have their data deleted | "Right to be forgotten" |
| **Data Minimization** | Only collect/retain data you actually need | Don't keep data "just in case" |
| **Purpose Limitation** | Only use data for the purpose it was collected | Can't use support data for marketing |
| **Lawful Basis** | Legal justification for processing personal data | Consent, contract, legitimate interest |

---

## Security & Controls

| Term | Definition | Example |
|------|------------|---------|
| **Control** | A measure to reduce risk | Password requirements, encryption |
| **Compensating Control** | An alternative control when the primary isn't feasible | Manual review when automation fails |
| **Detective Control** | Identifies issues after they occur | Audit logs, monitoring alerts |
| **Preventive Control** | Stops issues before they occur | Access restrictions, input validation |
| **Corrective Control** | Fixes issues after detection | Incident response, patching |
| **SOD** | Segregation of Duties - no single person controls a process end-to-end | Different people approve and execute payments |
| **Least Privilege** | Only give access needed for the job | Developer can't access production data |
| **MFA** | Multi-Factor Authentication | Password + phone code |
| **Encryption at Rest** | Data is encrypted when stored | Encrypted database, encrypted S3 bucket |
| **Encryption in Transit** | Data is encrypted when moving | HTTPS, TLS |

---

## Audit & Assurance

| Term | Definition | Example |
|------|------------|---------|
| **Audit** | Formal examination of controls and compliance | SOC 2 audit, regulatory examination |
| **Auditor** | Person or firm conducting the audit | Deloitte, EY, PwC, KPMG |
| **Audit Trail** | Record of who did what, when | Access logs, change history |
| **Evidence** | Documentation proving controls work | Screenshots, logs, policies |
| **Attestation** | Formal statement that something is true | SOC 2 report, ISO certificate |
| **Finding** | An issue discovered during an audit | "Access reviews not completed quarterly" |
| **Remediation** | Fixing an audit finding | Implementing the missing control |
| **Management Response** | How you'll address a finding | "We will implement by Q2" |
| **Control Testing** | Verifying controls work as designed | Sampling access requests |
| **Walkthrough** | Step-by-step demonstration of a process | Showing auditor how onboarding works |

---

## Frameworks & Standards

| Term | Definition | Example |
|------|------------|---------|
| **SOC 2** | Service Organization Control 2 - security framework for service providers | Type I (point-in-time), Type II (over time) |
| **ISO 27001** | International security management standard | Certifiable framework |
| **NIST** | National Institute of Standards and Technology frameworks | NIST CSF, NIST 800-53 |
| **PCI-DSS** | Payment Card Industry Data Security Standard | Required for card processing |
| **HIPAA** | Health Insurance Portability and Accountability Act | Required for health data |
| **GDPR** | General Data Protection Regulation | EU privacy law |
| **CCPA/CPRA** | California Consumer Privacy Act / California Privacy Rights Act | California privacy law |
| **TSC** | Trust Service Criteria - the 5 categories in SOC 2 | Security, Availability, Processing Integrity, Confidentiality, Privacy |
| **GRC** | Governance, Risk, and Compliance | The overall discipline |

---

## Risk Management

| Term | Definition | Example |
|------|------------|---------|
| **Risk** | Potential for loss or harm | Data breach, regulatory fine |
| **Threat** | Something that could cause harm | Hackers, natural disasters |
| **Vulnerability** | A weakness that could be exploited | Unpatched software |
| **Likelihood** | Probability of risk occurring | High, Medium, Low |
| **Impact** | Consequence if risk occurs | Financial loss, reputational damage |
| **Risk Appetite** | How much risk the organization accepts | "We don't store credit cards" |
| **Risk Register** | Document tracking identified risks | Spreadsheet of risks + owners + mitigations |
| **Residual Risk** | Risk remaining after controls | "We accept this low risk" |
| **Third-Party Risk** | Risk from vendors and partners | Vendor has a breach, you're affected |
| **Due Diligence** | Investigation before a decision | Vetting a vendor's security |

---

## Incident & Response

| Term | Definition | Example |
|------|------------|---------|
| **Incident** | An event that threatens security or compliance | Unauthorized access, data leak |
| **Breach** | Unauthorized access to protected data | Customer data exposed |
| **Breach Notification** | Legally required disclosure of a breach | GDPR: 72 hours to regulator |
| **Containment** | Stopping an incident from spreading | Disabling compromised account |
| **Eradication** | Removing the cause of an incident | Patching the vulnerability |
| **Recovery** | Restoring normal operations | Bringing systems back online |
| **Post-Mortem** | Analysis after an incident | "What went wrong and how to prevent" |
| **RCA** | Root Cause Analysis | Finding the underlying cause |
| **Tabletop Exercise** | Simulated incident for practice | "What would we do if X happened?" |

---

## Financial Services Specific

| Term | Definition | Example |
|------|------------|---------|
| **AML** | Anti-Money Laundering | Detecting suspicious transactions |
| **KYC** | Know Your Customer | Verifying customer identity |
| **SAR** | Suspicious Activity Report | Filing with FinCEN |
| **BSA** | Bank Secrecy Act | US anti-money laundering law |
| **FINRA** | Financial Industry Regulatory Authority | Broker-dealer regulator |
| **SEC** | Securities and Exchange Commission | Securities regulator |
| **Reg E** | Electronic Fund Transfer Act | Consumer protections for electronic transfers |
| **Reg Z** | Truth in Lending Act | Loan disclosure requirements |

---

## Healthcare Specific

| Term | Definition | Example |
|------|------------|---------|
| **Covered Entity** | Organization subject to HIPAA | Hospital, health plan, clearinghouse |
| **Business Associate** | Vendor handling PHI for a covered entity | Cloud provider storing health records |
| **BAA** | Business Associate Agreement | Required contract with vendors handling PHI |
| **Minimum Necessary** | Only access/disclose PHI needed for the task | Doctor sees patient's chart, not all patients |
| **De-identification** | Removing identifiers from data | Safe Harbor method removes 18 identifiers |
| **Authorization** | Patient permission for specific PHI use | Signed form for research use |

---

## Abbreviation Quick Reference

| Abbreviation | Full Term |
|--------------|-----------|
| AML | Anti-Money Laundering |
| BAA | Business Associate Agreement |
| CCPA | California Consumer Privacy Act |
| DPA | Data Processing Agreement |
| DPIA | Data Protection Impact Assessment |
| GDPR | General Data Protection Regulation |
| GRC | Governance, Risk, and Compliance |
| HIPAA | Health Insurance Portability and Accountability Act |
| ISO | International Organization for Standardization |
| KYC | Know Your Customer |
| MFA | Multi-Factor Authentication |
| NIST | National Institute of Standards and Technology |
| PCI-DSS | Payment Card Industry Data Security Standard |
| PHI | Protected Health Information |
| PII | Personally Identifiable Information |
| RCA | Root Cause Analysis |
| SAR | Suspicious Activity Report |
| SCCs | Standard Contractual Clauses |
| SEC | Securities and Exchange Commission |
| SOC | Service Organization Control |
| SOD | Segregation of Duties |
| TSC | Trust Service Criteria |
