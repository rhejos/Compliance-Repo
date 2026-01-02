# Solutions and Explanations

Compare your evidence collection plan to these solutions.

---

## Control 1: User Authentication

**Evidence Needed:**

| Evidence | Source | Owner |
|----------|--------|-------|
| Password policy document | Policy repository | Compliance |
| Password configuration screenshot | Google Workspace/IdP admin | IT Admin |
| Password settings showing complexity | System configuration | IT Admin |
| Sample of user accounts showing unique IDs | User list export | IT Admin |
| MFA configuration (if in scope) | IdP admin console | IT Admin |

**Potential Issues:**
- **Service accounts with shared credentials** - Document exception and compensating controls
- **Legacy systems with weaker requirements** - May need remediation or exception documentation
- **Policy says 12 characters but system configured for 8** - Alignment issue to fix

---

## Control 2: Access Reviews

**Evidence Needed:**

| Evidence | Source | Owner |
|----------|--------|-------|
| Access review policy/procedure | Policy repository | Compliance |
| Q1 access review report + sign-off | Review documentation | IT/Managers |
| Q2 access review report + sign-off | Review documentation | IT/Managers |
| Q3 access review report + sign-off | Review documentation | IT/Managers |
| Q4 access review report + sign-off | Review documentation | IT/Managers |
| Evidence of access changes made | Tickets for removals | IT Admin |

**Potential Issues:**
- **Missed quarter** - Critical gap. If Q2 wasn't done, this is an exception
- **Reviews done but not documented** - Can't prove it happened
- **No evidence of actions taken** - Reviews meaningless without remediation
- **Scope too narrow** - Only reviewed some systems, not all

**Pro Tip:** Start reviews at least 2 weeks before quarter end to allow for approvals.

---

## Control 3: Change Management

**Evidence Needed:**

| Evidence | Source | Owner |
|----------|--------|-------|
| Change management policy | Policy repository | Engineering |
| Population of all prod changes | GitHub/Jira/deployment logs | Engineering |
| Sample change tickets (25) | Ticketing system | Engineering |
| Approval evidence for each sample | Tickets/PRs | Engineering |
| Testing evidence for each sample | QA sign-off/test results | QA |
| Deployment logs | CI/CD system | DevOps |

**Potential Issues:**
- **Emergency changes without documentation** - Document exception process
- **Self-approvals** - SoD violation
- **Testing evidence missing** - "We tested it" without proof
- **Inconsistent process** - Different teams do it differently

**Sample Selection:**
- Auditor will select ~25 changes across the year
- Ensure all months represented
- Have backup evidence ready if sample item is problematic

---

## Control 4: Vulnerability Scanning

**Evidence Needed:**

| Evidence | Source | Owner |
|----------|--------|-------|
| Vulnerability management policy | Policy repository | Security |
| Scan schedule/calendar | Security team docs | Security |
| January scan report | Scanning tool (Qualys/Nessus/etc.) | Security |
| February scan report | Scanning tool | Security |
| [Continue for all 12 months...] | Scanning tool | Security |
| Critical vuln remediation samples | Ticketing system | Security/IT |
| Remediation timeline evidence | Tickets with timestamps | Security/IT |

**Potential Issues:**
- **Missed month(s)** - Gap in coverage is an exception
- **Critical vulns open > 30 days** - Exception or finding
- **Scan scope doesn't cover all systems** - Scope documentation needed
- **External scans only, no internal** - May not meet requirement

**Pro Tip:** Keep scan reports even if no vulnerabilities found - proves scan ran.

---

## Control 5: Incident Response

**Evidence Needed:**

| Evidence | Source | Owner |
|----------|--------|-------|
| Incident response plan | Policy repository | Security/Compliance |
| Plan version history showing annual review | Document metadata | Compliance |
| Tabletop exercise materials | Meeting docs | Security |
| Tabletop attendee list | Sign-in sheet/calendar | Security |
| Post-exercise lessons learned | Meeting notes | Security |
| Plan updates based on exercise | Document history | Compliance |
| Any actual incident documentation | Incident tickets | Security |

**Potential Issues:**
- **No test conducted in 2024** - Exception or finding
- **Test was informal with no documentation** - Can't prove it happened
- **Plan is outdated** - Contacts wrong, procedures obsolete
- **No lessons learned documented** - Suggests shallow exercise

**Pro Tip:** Tabletop exercise attendance should include key personnel mentioned in plan.

---

## Control 6: Backup and Recovery

**Evidence Needed:**

| Evidence | Source | Owner |
|----------|--------|-------|
| Backup policy/procedure | Policy repository | IT/Ops |
| Backup configuration | Backup system console | IT/Ops |
| Sample backup job logs showing daily runs | Backup system | IT/Ops |
| Q1 restoration test documentation | Test records | IT/Ops |
| Q2 restoration test documentation | Test records | IT/Ops |
| Q3 restoration test documentation | Test records | IT/Ops |
| Q4 restoration test documentation | Test records | IT/Ops |
| Restoration success evidence | Test results/screenshots | IT/Ops |

**Potential Issues:**
- **Backups run but never tested** - Recoverability unproven
- **Restoration tests informal** - "We restored a file once"
- **Missed quarterly test** - Exception
- **Backup failures not addressed** - Evidence of failures without remediation

**Restoration Test Evidence Should Show:**
- Date of test
- What was restored (file, database, full system)
- Who performed the test
- Verification that data was accurate

---

## Control 7: Vendor Management

**Evidence Needed:**

| Evidence | Source | Owner |
|----------|--------|-------|
| Vendor management policy | Policy repository | Compliance |
| Critical vendor list | Vendor inventory | Compliance/Procurement |
| Definition of "critical" | Policy | Compliance |
| New vendor assessment samples | Questionnaire responses/SOC 2s | Compliance |
| Annual review documentation | Review records | Compliance |
| Vendor contracts showing security terms | Contract repository | Legal/Procurement |

**Potential Issues:**
- **No defined list of critical vendors** - How do you know what to assess?
- **Vendors never assessed** - AWS is critical but no review on file
- **Annual reviews not performed** - Only assessed at onboarding
- **SOC 2 reports expired** - Vendor's SOC 2 is 18 months old

**Pro Tip:** Large vendors (AWS, Microsoft, Salesforce) typically don't complete questionnaires but provide SOC 2 reports. This is acceptable.

---

## Control 8: Security Awareness Training

**Evidence Needed:**

| Evidence | Source | Owner |
|----------|--------|-------|
| Security training policy | Policy repository | HR/Compliance |
| Training content/curriculum | LMS or training docs | HR |
| New hire training completion list | LMS/HR system | HR |
| Annual training completion list | LMS | HR |
| Comparison to employee roster | HR system | HR |
| Training completion rate | LMS report | HR |
| Follow-up evidence for non-completers | Email reminders/escalation | HR |

**Potential Issues:**
- **No LMS - training is informal** - Hard to prove completion
- **Gaps in completion** - 15% of employees didn't complete
- **New hires not trained timely** - Started work but training was months later
- **Training content outdated** - Still references Windows 7

**What Auditors Look For:**
- 100% completion (or close to it with documented follow-up)
- New hires trained within reasonable time (30 days typical)
- Evidence of what training covered

---

## Evidence Collection Checklist - Completed

| Control | Evidence Status | Owner | Due Date | Notes |
|---------|----------------|-------|----------|-------|
| 1. User Auth | Ready | IT Admin | Jan 5 | Screenshot config settings |
| 2. Access Reviews | Partial | Compliance | Jan 10 | Need Q3 sign-off |
| 3. Change Mgmt | Ready | Engineering | Jan 5 | Population pulled |
| 4. Vuln Scanning | Ready | Security | Jan 5 | All 12 months |
| 5. Incident Response | Partial | Security | Jan 8 | Need exercise docs |
| 6. Backup/Recovery | Partial | IT/Ops | Jan 10 | Q2 test informal - improve docs |
| 7. Vendor Mgmt | Gap | Compliance | Jan 15 | No 2024 annual reviews done |
| 8. Security Training | Ready | HR | Jan 5 | 97% completion |

---

## Key Takeaways

1. **Start early** - Evidence collection takes longer than expected
2. **Document everything** - If it's not documented, it didn't happen
3. **Know your gaps** - Better to identify issues before auditors do
4. **Organize logically** - Make auditor's job easy
5. **Retain evidence** - Don't delete logs/reports you might need
6. **Consistent naming** - Makes evidence easy to find and understand

---

[← Back to Collection Exercise](collection-exercise.md) | [← Back to Exercise Overview](README.md)
