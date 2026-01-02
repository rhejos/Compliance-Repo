# Vendor Assessment Scenarios

Assess each vendor below using the framework. Determine:
1. Risk Tier
2. Key concerns
3. Recommendation (Approve / Conditional / Deny)
4. Required actions or remediation

---

## Vendor 1: CloudSync Analytics

**Service Description:**
Business intelligence and analytics platform that connects to TechFlow's production database to generate customer usage reports and insights.

**Key Facts:**
- Startup founded 3 years ago, 45 employees
- SOC 2 Type I report (first one, issued 3 months ago)
- No ISO 27001 certification
- Requires read access to TechFlow's production database
- Would access: customer names, email addresses, usage patterns, project metadata
- Estimated 200,000+ customer records would be accessible
- Data center: US (AWS)

**Questionnaire Highlights:**
| Area | Response |
|------|----------|
| Encryption in transit | TLS 1.3 |
| Encryption at rest | AES-256 |
| MFA for employees | Yes, for admin access |
| MFA for customers | No, optional |
| Access reviews | Annually |
| Vulnerability scanning | Quarterly |
| Penetration testing | Never performed |
| Incident response plan | "In development" |
| Breach notification timeline | "As soon as practical" |
| Cyber insurance | $2M coverage |
| Data retention | "As long as needed" |
| Subprocessors | AWS, Sendgrid (email) |

**Red Flags:**
- First SOC 2, Type I only (design, not effectiveness)
- No penetration testing ever
- Incident response plan not complete
- Vague breach notification commitment
- No defined data retention

---

**Your Assessment:**

Risk Tier: _____________________

Key Concerns:
1. _____________________
2. _____________________
3. _____________________

Recommendation: [ ] Approve  [ ] Conditional  [ ] Deny

Required Actions:
1. _____________________
2. _____________________
3. _____________________

---

## Vendor 2: SecureMail Pro

**Service Description:**
Email security gateway that scans all inbound and outbound emails for threats and compliance violations.

**Key Facts:**
- Established company, 15 years in business, 500+ employees
- SOC 2 Type II (current, clean report)
- ISO 27001 certified
- Would process all TechFlow email content
- Would access: all email bodies, attachments, sender/recipient info
- Estimated 50,000 emails/day
- Data centers: US and EU

**Questionnaire Highlights:**
| Area | Response |
|------|----------|
| Encryption in transit | TLS 1.2+ |
| Encryption at rest | AES-256 |
| MFA for employees | Yes, all access |
| MFA for customers | Yes, required |
| Access reviews | Quarterly |
| Vulnerability scanning | Weekly |
| Penetration testing | Annually by third party |
| Incident response plan | Documented, tested annually |
| Breach notification timeline | 24 hours |
| Cyber insurance | $50M coverage |
| Data retention | 30 days default, configurable |
| Subprocessors | AWS, Cloudflare |

**SOC 2 Report Review:**
- Type II, 12-month period
- Covers Security, Availability, Confidentiality
- Unqualified opinion
- 2 minor exceptions (documentation gaps, both remediated)
- CUECs: Customer must configure MFA

---

**Your Assessment:**

Risk Tier: _____________________

Key Concerns:
1. _____________________
2. _____________________
3. _____________________

Recommendation: [ ] Approve  [ ] Conditional  [ ] Deny

Required Actions:
1. _____________________
2. _____________________
3. _____________________

---

## Vendor 3: QuickBooks Online

**Service Description:**
Cloud-based accounting software for TechFlow's financial management.

**Key Facts:**
- Intuit product, Fortune 500 company
- SOC 1 and SOC 2 Type II reports available
- ISO 27001 certified
- Would access: financial data, vendor payment info, employee reimbursements
- Does NOT store customer data
- Bank account information for 15 vendors
- Employee personal info for expense reimbursements (~450 employees)

**Questionnaire Highlights:**
- Standard enterprise SaaS security posture
- Declined to complete custom questionnaire ("see our security page")
- Provided links to SOC 2 report summary and trust center
- Standard DPA available

**Additional Context:**
- Industry-standard tool used by millions of businesses
- No custom integration, standard SaaS usage
- TechFlow has used QuickBooks for 3 years with no issues

---

**Your Assessment:**

Risk Tier: _____________________

Key Concerns:
1. _____________________
2. _____________________
3. _____________________

Recommendation: [ ] Approve  [ ] Conditional  [ ] Deny

Required Actions:
1. _____________________
2. _____________________
3. _____________________

---

## Vendor 4: DevOps Consulting Co.

**Service Description:**
Consulting firm providing DevOps engineering support. Their engineers would have access to TechFlow's cloud infrastructure to assist with deployments and troubleshooting.

**Key Facts:**
- Small consulting firm, 12 employees
- No SOC 2 or ISO 27001
- Engineers would need access to: AWS console, GitHub, CI/CD pipelines
- Access to production infrastructure
- Access to source code
- Would work on-site and remotely
- Proposed access: IAM roles with admin-level permissions

**Questionnaire Highlights:**
| Area | Response |
|------|----------|
| Encryption | "We don't store customer data" |
| MFA for employees | "Individual preference" |
| Background checks | Yes, criminal checks on all employees |
| NDAs | Yes, all employees sign NDAs |
| Security training | "On the job" |
| Access reviews | "When projects end" |
| Vulnerability scanning | N/A |
| Incident response plan | No |
| Breach notification | "Would call you immediately" |
| Cyber insurance | "Working on getting it" |
| Laptop security | "Employees manage their own devices" |

---

**Your Assessment:**

Risk Tier: _____________________

Key Concerns:
1. _____________________
2. _____________________
3. _____________________

Recommendation: [ ] Approve  [ ] Conditional  [ ] Deny

Required Actions:
1. _____________________
2. _____________________
3. _____________________

---

## Vendor 5: HealthData Hub

**Service Description:**
Healthcare data platform that TechFlow is considering for their new healthcare vertical. Would integrate with TechFlow to enable healthcare customers to store and analyze patient data.

**Key Facts:**
- Healthcare-focused startup, 2 years old, 30 employees
- HITRUST CSF certified
- SOC 2 Type II in progress (expected in 4 months)
- Would process and store PHI on behalf of TechFlow's healthcare customers
- BAA (Business Associate Agreement) required
- Data centers: US only, HIPAA-compliant

**Questionnaire Highlights:**
| Area | Response |
|------|----------|
| Encryption in transit | TLS 1.3 |
| Encryption at rest | AES-256 with customer-managed keys |
| MFA for all access | Yes, required |
| Access logging | Comprehensive, HIPAA-compliant |
| Access reviews | Monthly |
| Vulnerability scanning | Weekly |
| Penetration testing | Semi-annually |
| Incident response plan | Documented, HIPAA-compliant |
| Breach notification timeline | 24 hours (72 hours per HIPAA) |
| Cyber insurance | $10M coverage |
| Data retention | Customer-controlled, default 7 years |
| HIPAA compliance | Full compliance claimed |

**Concerns:**
- Company is only 2 years old
- No SOC 2 yet (in progress)
- TechFlow has limited HIPAA experience

---

**Your Assessment:**

Risk Tier: _____________________

Key Concerns:
1. _____________________
2. _____________________
3. _____________________

Recommendation: [ ] Approve  [ ] Conditional  [ ] Deny

Required Actions:
1. _____________________
2. _____________________
3. _____________________

---

## Summary Assessment Table

| Vendor | Tier | Recommendation | Key Risk | Owner |
|--------|------|----------------|----------|-------|
| CloudSync Analytics | | | | |
| SecureMail Pro | | | | |
| QuickBooks Online | | | | |
| DevOps Consulting | | | | |
| HealthData Hub | | | | |

---

Ready to check your work? See [Solutions](solutions.md).

---

[← Back to Exercise Overview](README.md)
