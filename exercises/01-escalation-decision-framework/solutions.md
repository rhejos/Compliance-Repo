# Solutions and Explanations

Compare your answers to the solutions below. Remember, in real-world situations there may be some judgment calls - these solutions represent best practice approaches.

---

## Scenario 1: The Misrouted Email

### Solution

**Issue Category:** Privacy Concern / Security Incident

**Severity Level:** **CRITICAL**

**Escalate To:** Privacy Officer/CCO and Legal immediately; potentially CEO

**Timeline:** Within 1 hour (ideally immediately)

**Escalation Summary:**
"A billing department employee accidentally emailed a spreadsheet containing 847 patient records (names, DOB, treatment codes) to an external Gmail address 30 minutes ago. This is a potential HIPAA breach requiring assessment and possible notification within 72 hours. Immediate response needed."

### Explanation

**Why Critical:**
- This is a probable HIPAA breach involving PHI (Protected Health Information)
- 847 records is a significant volume
- HIPAA requires notification to HHS within 60 days for breaches of 500+ individuals
- The 72-hour internal assessment clock is ticking
- State breach notification laws may also apply
- You need to attempt to retrieve/delete the email (time-sensitive)

**Key Actions:**
1. Contact IT Security immediately to see if email can be recalled
2. Notify Privacy Officer and Legal for breach assessment
3. Document everything - exact time, what was sent, employee name
4. Do NOT contact the external recipient directly without Legal guidance
5. Begin breach risk assessment process

**Common Mistakes:**
- ❌ Waiting until the next business day
- ❌ Treating this as medium severity because "no harm was intended"
- ❌ Trying to contact the external recipient yourself
- ❌ Not documenting the timeline precisely

---

## Scenario 2: The Vendor Question

### Solution

**Issue Category:** Third-Party Risk

**Severity Level:** **MEDIUM**

**Escalate To:** Direct supervisor and Vendor Management lead (or whoever owns third-party risk)

**Timeline:** Within 48 hours

**Escalation Summary:**
"The proposed CRM vendor's SOC 2 report is 14 months old and they've been unresponsive to two requests for the current report. Sales has already committed to a prospect. Recommend escalating to the vendor through procurement leverage while evaluating alternatives, including the more expensive compliant option."

### Explanation

**Why Medium (not High):**
- No immediate harm is occurring
- The data being stored (contact info, sales notes) is not highly sensitive
- There's time to pursue alternatives
- The vendor's unresponsiveness is concerning but not necessarily indicative of a security issue

**Why Not Low:**
- This is a pattern of non-responsiveness
- Sales has created pressure by making commitments
- An expired SOC 2 could indicate lapsed controls
- This needs attention before contracts are signed

**Key Actions:**
1. Document the vendor's non-responsiveness
2. Escalate to supervisor to align on risk appetite
3. Have procurement apply pressure on the vendor
4. Prepare analysis of alternatives for decision-makers
5. Do not approve the vendor without current security attestation

**Common Mistakes:**
- ❌ Approving the vendor because "Sales already promised"
- ❌ Treating this as Critical when there's no imminent harm
- ❌ Not documenting the gap for future reference

---

## Scenario 3: The Access Review

### Solution

**Issue Category:** Security Incident / Policy Violation

**Severity Level:** **MEDIUM** (would be HIGH if access was used)

**Escalate To:** IT Security Lead and Compliance Lead

**Timeline:** Same day (disable access immediately, escalate within hours)

**Escalation Summary:**
"Discovered active access for an employee terminated 3 months ago to financial reporting systems. Audit logs confirm no usage since termination, but this is the second deprovisioning failure in 6 months. Immediate access revocation needed plus root cause analysis of offboarding process."

### Explanation

**Why Medium:**
- The access wasn't used (confirmed by logs)
- No actual harm occurred
- However, this is a repeat issue, which elevates severity
- It indicates a systemic process failure

**Why Not High:**
- No evidence of unauthorized access
- No data was compromised
- The employee left voluntarily (lower risk than termination for cause)

**What Would Make This Higher:**
- If the account had been used after termination
- If the employee was terminated for cause
- If this was the third or fourth occurrence
- If the system contained more sensitive data (PII, financial, etc.)

**Key Actions:**
1. Disable the access immediately
2. Review logs one more time to confirm no usage
3. Escalate the pattern to drive process improvement
4. Review all other recent terminations
5. Work with IT/HR to fix the offboarding gap

---

## Scenario 4: The Urgent Call

### Solution

**Issue Category:** Potential Regulatory Inquiry (possibly Social Engineering/Fraud)

**Severity Level:** **HIGH**

**Escalate To:** Legal/General Counsel immediately

**Timeline:** Within 1 hour (but do NOT comply with caller's demand)

**Escalation Summary:**
"Received a call from someone claiming to be a state AG investigator demanding all customer records by EOD. Caller was aggressive and couldn't be verified. This could be a legitimate inquiry or a social engineering attempt. Need Legal guidance before any response. I did not provide any information or agree to anything."

### Explanation

**Why High (not Critical):**
- This requires immediate attention but isn't an active emergency
- The deadline is artificial - legitimate regulators will work with you
- The aggressive tactics are a red flag for potential fraud
- You have time to verify before responding

**Red Flags:**
- Unknown caller ID
- Artificial urgency ("by end of day")
- Aggressive/threatening tone
- Request for bulk customer data
- No prior notice or contact

**Key Actions:**
1. Do NOT provide any data or commit to anything
2. Get the callback number and case number
3. Do NOT call the number they gave you
4. Escalate to Legal immediately
5. Legal will verify through official channels
6. Document the call details while fresh

**Critical Mistakes to Avoid:**
- ❌ Complying with the demand due to fear
- ❌ Calling back the number they provided
- ❌ Providing any information "just to be helpful"
- ❌ Handling this yourself without Legal involvement

---

## Scenario 5: The Social Media Post

### Solution

**Issue Category:** Regulatory Violation / Reputational Risk

**Severity Level:** **HIGH**

**Escalate To:** Legal/General Counsel and Communications/PR immediately

**Timeline:** Within 1-2 hours

**Escalation Summary:**
"A product manager posted non-public product launch information on LinkedIn this morning. Post mentions specific features and timing for an unannounced product. Company is publicly traded - potential Regulation FD / securities law issue. Post has 50 engagements. Recommend immediate review for takedown and assessment of disclosure obligations."

### Explanation

**Why High:**
- For a publicly traded company, selective disclosure of material non-public information (MNPI) can violate securities laws (Regulation FD)
- The information is spreading (50+ engagements)
- Quick action can limit exposure
- May require public disclosure to cure the violation

**Key Considerations:**
- Is this "material" information that would affect stock price?
- Has the selective disclosure triggered Reg FD requirements?
- How widely has this spread?
- What are the legal obligations now?

**Key Actions:**
1. Document the post (screenshot with timestamp)
2. Escalate to Legal immediately for securities law assessment
3. Loop in Communications for potential response
4. Legal will advise on whether post should be removed
5. Consider whether public disclosure is now required
6. HR may need to be involved for employee counseling

**Why Not Critical:**
- While urgent, this isn't an active emergency causing immediate harm
- The post can likely be addressed within hours
- There's a process to follow, not an immediate containment action

---

## Scenario 6: The Training Gap

### Solution

**Issue Category:** Policy Violation / Audit Risk

**Severity Level:** **MEDIUM**

**Escalate To:** Compliance Lead and Engineering department head

**Timeline:** Within 48 hours

**Escalation Summary:**
"15% of employees (45 people, mostly in Engineering) haven't completed required security training, 6 weeks past deadline. Audit is next month. Previous audits showed strong compliance. Recommend direct escalation to Engineering VP and daily reporting until resolved. May need to document as known issue for auditors."

### Explanation

**Why Medium:**
- This is a control gap but not an immediate security issue
- There's time to remediate before the audit
- The concentration in one department suggests a management issue
- Historical strong compliance gives context

**Why Not Higher:**
- No actual security incident has occurred
- One month provides time to remediate
- 85% compliance is not a complete failure
- This is a common, manageable issue

**Key Actions:**
1. Escalate to Compliance Lead to align on approach
2. Contact Engineering VP directly (skip the unresponsive manager)
3. Request daily completion updates
4. Consider whether to address in audit as "known issue with remediation in progress"
5. Document the pattern for potential management issue

---

## Scenario 7: The Contractor Complaint

### Solution

**Issue Category:** Financial Irregularity / Potential Fraud

**Severity Level:** **MEDIUM**

**Escalate To:** Compliance Lead and/or Internal Audit; possibly Ethics Hotline

**Timeline:** Within 24-48 hours

**Escalation Summary:**
"Received secondhand report that two finance department employees may be circumventing expense approval controls. Source is a credible long-term contractor. No specific transactions or individuals identified. Recommend preliminary review of expense patterns in finance department before broader investigation."

### Explanation

**Why Medium (not Low):**
- Expense control circumvention can indicate fraud
- The source appears credible
- This warrants investigation, not dismissal

**Why Not High:**
- The information is vague and secondhand
- No specific transactions or amounts identified
- No evidence of actual loss
- This needs quiet investigation, not urgent action

**Key Actions:**
1. Thank the contractor for reporting (without overpromising investigation)
2. Document the report carefully
3. Escalate to appropriate investigative function (Compliance Lead, Internal Audit, or Ethics)
4. Do NOT approach the finance team or ask questions directly
5. Let investigators determine next steps
6. Maintain confidentiality of the reporter

**Critical Mistakes:**
- ❌ Dismissing it as "just gossip"
- ❌ Investigating yourself by asking finance team members
- ❌ Revealing the contractor as the source
- ❌ Treating this as Critical and creating unnecessary alarm

---

## Scenario 8: The New Requirement

### Solution

**Issue Category:** Regulatory Change

**Severity Level:** **MEDIUM**

**Escalate To:** Legal/Privacy Lead and Compliance Lead

**Timeline:** Within 48 hours (but flag for near-term action)

**Escalation Summary:**
"New state privacy law effective in 90 days may require changes to our data request handling. We have CCPA processes that may partially apply. Recommend Legal assessment of requirements and gap analysis. 90-day timeline is tight for any system changes needed."

### Explanation

**Why Medium:**
- 90 days provides time for assessment and planning
- You already have CCPA processes that may help
- This is proactive awareness, not a crisis
- However, 90 days is short for significant technical changes

**Why Not Low:**
- New legal requirements warrant prompt attention
- 90 days can go quickly if system changes are needed
- Ignorance won't be an excuse

**Key Actions:**
1. Forward the newsletter/information to Legal
2. Ask for assessment of applicability and gap analysis
3. Identify how many customers are in that state
4. Compare to existing CCPA processes
5. Allow Legal to drive timeline and prioritization

---

## Scenario 9: The System Alert

### Solution

**Issue Category:** Security Incident

**Severity Level:** **HIGH**

**Escalate To:** IT Security immediately (even at 11 PM Friday); CEO notification may be needed

**Timeline:** Immediately

**Escalation Summary:**
"47 failed login attempts to CEO's email from foreign IP in 15 minutes, account now locked. CEO is traveling internationally but not in that country. Attack appears targeted. Immediate security review needed to confirm no compromise and assess if this is part of a broader attack."

### Explanation

**Why High (not Critical):**
- The attack failed - no breach occurred
- The account is now locked (contained)
- No evidence of successful compromise
- However, this is a targeted attack on a high-value account

**What Would Make This Critical:**
- If any login succeeded
- If other executive accounts showed similar activity
- If there was evidence of compromise
- If the CEO needed immediate access and was locked out

**Key Actions:**
1. Contact IT Security immediately (yes, at 11 PM)
2. Confirm the account is securely locked
3. Check for similar activity on other executive accounts
4. Review whether password needs to be reset
5. Consider notifying CEO (may need access while traveling)
6. Document for potential law enforcement if part of broader pattern

---

## Scenario 10: The Routine Finding

### Solution

**Issue Category:** Third-Party Risk (minor)

**Severity Level:** **LOW**

**Escalate To:** Note in tracking system; discuss with supervisor in regular 1:1

**Timeline:** Within 1 week (address at contract renewal)

**Escalation Summary:**
"Janitorial contract missing standard data protection addendum. Vendor has physical access only, no system access, 5-year clean track record. Contract renews in 2 months - recommend adding addendum at renewal. Low risk but should be documented for completeness."

### Explanation

**Why Low:**
- No actual security risk - they don't access systems
- Long track record with no issues
- Contract renewal provides natural remediation opportunity
- This is a paperwork gap, not a control gap

**Why Not Medium:**
- Physical access alone to a building (not data centers) is lower risk
- The vendor isn't handling sensitive data
- There's no pattern of contract oversights
- Natural remediation timeline exists

**Key Actions:**
1. Log in your vendor tracking system
2. Flag for renewal (add to renewal checklist)
3. Mention in regular check-in with supervisor
4. No urgent action needed

---

## Key Takeaways

1. **Severity isn't about intent** - An accidental breach is still a breach
2. **Time-sensitive factors elevate severity** - Regulatory deadlines, spreading information, ongoing access
3. **Patterns matter** - A second occurrence of the same issue is more serious
4. **When in doubt, escalate** - It's better to over-escalate than to miss something
5. **Document everything** - Your notes become the official record
6. **Don't investigate alone** - Involve appropriate experts (Legal, IT Security, HR)
7. **Verify before acting** - Especially for external demands/requests
8. **Consider regulatory context** - Is there a notification deadline?

---

[← Back to Scenarios](scenarios.md) | [← Back to Exercise Overview](README.md)
