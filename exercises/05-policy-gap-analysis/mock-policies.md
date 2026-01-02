# Mock Company Policies - DataStream Inc.

This document contains the current policies and controls for DataStream Inc., a fictional SaaS company. Use these to perform your gap analysis.

---

## Company Overview

**DataStream Inc.** is a B2B SaaS company providing data integration services. They are pursuing SOC 2 Type II certification for the first time.

- **Founded:** 2019
- **Employees:** 85
- **Customers:** 450 enterprise clients
- **Data handled:** Customer business data, API credentials, usage logs
- **Infrastructure:** AWS, multi-region

---

## Policy 1: Information Security Policy

**Version:** 1.0
**Last Updated:** 18 months ago
**Owner:** CTO

### 1.1 Purpose
This policy establishes the security requirements for DataStream Inc.

### 1.2 Scope
Applies to all employees and systems.

### 1.3 Access Control
- All employees are assigned user accounts upon hire
- Passwords must be at least 8 characters
- Passwords expire every 90 days
- MFA is required for AWS console access
- MFA is not currently required for internal applications

### 1.4 Data Classification
*[Section marked "To be developed"]*

### 1.5 Acceptable Use
Employees shall use company resources for business purposes only.

### 1.6 Policy Review
This policy will be reviewed annually.

---

## Policy 2: Access Management Procedure

**Version:** 2.1
**Last Updated:** 6 months ago
**Owner:** IT Manager

### 2.1 User Provisioning
1. HR submits new hire request via email
2. IT creates accounts within 1 business day
3. Manager verbally confirms access needs
4. IT grants access based on job title

### 2.2 Access Changes
- Employees email IT to request changes
- IT processes requests within 3 business days
- No formal approval required

### 2.3 Access Termination
- HR notifies IT of terminations
- IT disables accounts within 1 week of notification
- For involuntary terminations, accounts disabled same day

### 2.4 Access Reviews
*[No process documented]*

---

## Policy 3: Change Management Policy

**Version:** 1.2
**Last Updated:** 12 months ago
**Owner:** Engineering Lead

### 3.1 Purpose
Ensure changes to production are controlled and documented.

### 3.2 Process
1. Developer creates pull request in GitHub
2. At least one other developer reviews and approves
3. Developer merges to main branch
4. Automated CI/CD deploys to production
5. Developer monitors for issues

### 3.3 Emergency Changes
- In emergencies, developers may push directly to production
- Emergency changes should be documented "when possible"

### 3.4 Testing
- Unit tests run automatically
- Integration testing performed in staging environment
- Production deployment occurs after staging validation

---

## Policy 4: Incident Response Plan

**Version:** 0.5 (Draft)
**Last Updated:** 14 months ago
**Owner:** CTO

### 4.1 Purpose
Define how DataStream responds to security incidents.

### 4.2 Severity Levels
*[Not defined - "TODO: Define severity levels"]*

### 4.3 Response Team
- CTO (Lead)
- Senior Developer
- IT Manager

### 4.4 Response Steps
1. Identify the incident
2. Contain if possible
3. Investigate
4. Notify affected parties
5. Document lessons learned

### 4.5 Notification
- Customers notified "as appropriate"
- Legal team consulted for breach determination

### 4.6 Testing
*[No testing schedule defined]*

---

## Policy 5: Vendor Management Policy

**Version:** 1.0
**Last Updated:** 8 months ago
**Owner:** Finance Director

### 5.1 Purpose
Manage vendor relationships and ensure appropriate oversight.

### 5.2 Vendor Approval
- All vendors must be approved by Finance
- Vendors over $50K require CFO approval
- Contracts reviewed by Finance

### 5.3 Security Assessment
- Critical vendors must complete a security questionnaire
- *[No questionnaire template exists]*
- *[No definition of "critical vendor"]*

### 5.4 Ongoing Monitoring
- Vendors reviewed at contract renewal

---

## Policy 6: Human Resources Security

**Version:** 1.0
**Last Updated:** 2 years ago
**Owner:** HR Director

### 6.1 Background Checks
- Background checks conducted for all new hires
- Includes criminal history check
- Employment verification for last 2 employers

### 6.2 Onboarding
- Employees sign offer letter including confidentiality terms
- Employees receive employee handbook
- New hire orientation covers company policies

### 6.3 Security Training
- Security awareness covered during onboarding (30-minute presentation)
- *[No ongoing training program]*
- *[No training completion tracking]*

### 6.4 Termination
- Exit interview conducted by HR
- Assets collected on last day
- Access removal coordinated with IT (see Policy 2)

---

## Policy 7: Business Continuity

**Version:** 0.8 (Draft)
**Last Updated:** 20 months ago
**Owner:** Operations Manager

### 7.1 Purpose
Ensure DataStream can continue operations during disruptions.

### 7.2 Backup Procedures
- Production database backed up daily
- Backups stored in AWS S3 (same region)
- *[Backup encryption status: unknown]*

### 7.3 Recovery Objectives
- RTO: 24 hours
- RPO: 24 hours

### 7.4 Disaster Recovery
- DR site: AWS us-west-2 (secondary region)
- *[Failover procedure: not documented]*
- *[Last DR test: Never conducted]*

---

## Evidence of Current Controls

### Access Control Evidence
- Password policy enforced in Google Workspace
- AWS MFA confirmed enabled for console users
- No MFA for Slack, GitHub, or internal apps
- Last access review: Unknown/never conducted
- Deprovisioning: Average 3 days for voluntary terminations

### Logging and Monitoring
- AWS CloudTrail enabled
- Application logs sent to CloudWatch
- No SIEM in place
- No alerting configured beyond AWS default alerts
- Log retention: 30 days (CloudWatch default)

### Vulnerability Management
- Dependabot enabled for dependency scanning
- No regular infrastructure vulnerability scanning
- No penetration testing conducted

### Physical Security
- Office has badge access
- Visitor log maintained
- AWS handles physical security for infrastructure

### Encryption
- TLS 1.2 for all public-facing services
- Database encryption at rest: Enabled (AWS RDS default)
- S3 encryption: Not consistently applied
- Key management: AWS KMS, default configuration

---

## Current Security Tools

| Area | Tool | Status |
|------|------|--------|
| Identity | Google Workspace | Active |
| Cloud | AWS (IAM, KMS) | Active |
| Code Repo | GitHub | Active |
| Monitoring | CloudWatch | Basic setup |
| Endpoint | None | Gap |
| SIEM | None | Gap |
| Vulnerability | Dependabot only | Partial |
| Training | None | Gap |

---

## Organizational Context

### Security Staffing
- No dedicated security personnel
- CTO has security as part of responsibility
- IT Manager (1 person) handles operations

### Recent Incidents
- 6 months ago: Employee laptop stolen (not encrypted)
- 9 months ago: Brief service outage due to failed deployment
- No known security breaches

### Business Priorities
- Achieve SOC 2 certification within 8 months
- Expand enterprise sales (SOC 2 is frequently requested)
- Limited budget for security tools (~$50K available)

---

Proceed to complete your [Gap Analysis](gap-analysis-template.md).

---

[← Back to Exercise Overview](README.md)
