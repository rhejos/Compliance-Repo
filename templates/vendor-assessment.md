# Vendor Security Assessment Template

```
=============================================================
              VENDOR SECURITY ASSESSMENT
=============================================================

Assessment ID:     VA-[YEAR]-[NUMBER]
Assessment Date:   [Date]
Assessor:          [Name]

=============================================================

VENDOR INFORMATION
==================

Vendor Name:           [Legal name]
Primary Contact:       [Name, Title, Email, Phone]
Website:               [URL]
Service Description:   [What they provide]



CONTRACT DETAILS
================

Contract Value:        $[Amount] / [Period]
Contract Start:        [Date]
Contract End:          [Date]
Business Owner:        [Internal owner name]


RISK TIERING
============

Data Access:
[ ] No data access
[ ] Metadata/logs only
[ ] Business data (non-sensitive)
[ ] PII
[ ] PHI
[ ] Financial/Payment data
[ ] Credentials/Authentication data

System Access:
[ ] No system access
[ ] Non-production only
[ ] Production (read-only)
[ ] Production (read-write)
[ ] Production (admin)

Integration Level:
[ ] No integration
[ ] Limited integration
[ ] Significant integration
[ ] Core business process

RISK TIER:  [ ] Low  [ ] Medium  [ ] High  [ ] Critical


SECURITY ASSESSMENT SUMMARY
===========================

Certifications:
[ ] SOC 2 Type I    Date: _______
[ ] SOC 2 Type II   Date: _______ Period: _______
[ ] ISO 27001       Date: _______
[ ] PCI-DSS         Level: _______
[ ] HITRUST         Date: _______
[ ] FedRAMP         Level: _______
[ ] Other: _______________

Score by Category:
| Category              | Score (1-5) | Notes                    |
|----------------------|-------------|--------------------------|
| Access Control        |             |                          |
| Data Protection       |             |                          |
| Security Operations   |             |                          |
| Incident Response     |             |                          |
| Business Continuity   |             |                          |
| Vendor Management     |             |                          |
| Privacy               |             |                          |

OVERALL SCORE: [X.X] / 5.0


KEY FINDINGS
============

Strengths:
• [Strength 1]
• [Strength 2]
• [Strength 3]

Concerns:
• [Concern 1]
• [Concern 2]
• [Concern 3]


REQUIRED REMEDIATIONS
=====================

| Finding              | Severity | Required Action        | Due Date |
|---------------------|----------|------------------------|----------|
|                     |          |                        |          |
|                     |          |                        |          |


RECOMMENDATION
==============

[ ] APPROVE - Vendor meets security requirements
[ ] CONDITIONAL APPROVAL - Approve with documented remediation plan
[ ] DENY - Vendor does not meet security requirements
[ ] ADDITIONAL REVIEW - Requires further assessment

Conditions (if applicable):
1. [Condition 1]
2. [Condition 2]


APPROVAL
========

Assessment by:   ______________________ Date: __________

Reviewed by:     ______________________ Date: __________

Approved by:     ______________________ Date: __________

=============================================================
```
