# Incident Scenarios

Apply your incident response workflow to these scenarios. For each:
1. Classify the incident (type and severity)
2. Identify containment actions
3. Determine notification requirements
4. Document key decisions

---

## Scenario 1: Phishing Success

**Day 1, 9:15 AM:**
An employee in Sales reports that they accidentally clicked a link in an email and entered their credentials on a page that looked like Microsoft login. They realized the mistake when the page didn't work and showed a "404 error."

**Additional Information:**
- The employee uses the same password for email and Salesforce
- Their email has access to customer contact information
- The suspicious email was sent to multiple employees (unknown how many clicked)
- The email appeared to come from "IT Support <it-support@techfl0w-security.com>"
- It's been approximately 45 minutes since they clicked

---

**Your Response:**

Incident Type: _____________________

Severity Level: _____________________

Immediate Actions (first 30 minutes):
1. _____________________
2. _____________________
3. _____________________
4. _____________________

Who to Notify Immediately:
- _____________________
- _____________________

Containment Steps:
1. _____________________
2. _____________________
3. _____________________

Investigation Questions:
1. _____________________
2. _____________________
3. _____________________

Potential Notification Requirements:
- _____________________
- _____________________

---

## Scenario 2: Ransomware Detection

**Day 1, 3:47 AM (Saturday):**
Automated monitoring detects that a server in the development environment is making unusual network connections and file encryption activity has been detected. The affected server has access to:
- Source code repositories
- Development databases (which contain synthetic test data, not production data)
- CI/CD pipeline credentials

**Day 1, 3:52 AM:**
Two more servers in the development environment show similar activity.

---

**Your Response:**

Incident Type: _____________________

Severity Level: _____________________

Immediate Actions (within first 15 minutes):
1. _____________________
2. _____________________
3. _____________________

Who to Wake Up/Call:
- _____________________
- _____________________

Critical Questions to Answer:
1. _____________________
2. _____________________
3. _____________________

Containment Priority Actions:
1. _____________________
2. _____________________
3. _____________________

Communication Plan:
- _____________________
- _____________________

---

## Scenario 3: Cloud Misconfiguration Discovery

**Day 1, 2:00 PM:**
A security researcher contacts your security team through your responsible disclosure program. They report finding an AWS S3 bucket belonging to TechFlow that is publicly accessible. The bucket name suggests it contains customer data backups.

**Day 1, 2:30 PM:**
After investigation, IT confirms:
- The bucket has been publicly accessible for approximately 3 weeks
- It contains backup archives from 2 years ago
- The archives include customer project data and user information
- There are approximately 15,000 customer records in the backups
- Web server logs show the bucket was accessed from 3 IP addresses (unknown identity)

---

**Your Response:**

Incident Type: _____________________

Severity Level: _____________________

Immediate Actions:
1. _____________________
2. _____________________
3. _____________________

Investigation Steps:
1. _____________________
2. _____________________
3. _____________________

Key Questions for Breach Assessment:
1. _____________________
2. _____________________
3. _____________________

Notification Considerations:
- Regulators: _____________________
- Customers: _____________________
- Timeline: _____________________

Legal Involvement:
- _____________________
- _____________________

---

## Scenario 4: Insider Access Concern

**Day 1, 11:00 AM:**
A manager reports to HR that an employee who gave their 2-week resignation notice yesterday has been acting strangely. The manager noticed the employee downloading large numbers of files and staying late. The employee works in product development and has access to product roadmaps and customer feature requests.

**Day 1, 11:30 AM:**
IT reviews access logs and confirms the employee downloaded 2.3 GB of files to their workstation yesterday and today. USB access logs are not available (not monitored).

---

**Your Response:**

Incident Type: _____________________

Severity Level: _____________________

Immediate Actions:
1. _____________________
2. _____________________
3. _____________________

Stakeholders to Involve:
- _____________________
- _____________________
- _____________________

Sensitive Considerations:
1. _____________________
2. _____________________

Evidence Preservation:
1. _____________________
2. _____________________
3. _____________________

Potential Outcomes and Next Steps:
1. _____________________
2. _____________________

---

## Scenario 5: Third-Party Breach Notification

**Day 1, 4:00 PM:**
TechFlow receives a letter from a payroll processing vendor stating they experienced a data breach 6 weeks ago. The breach potentially exposed employee personal information including:
- Names, addresses, dates of birth
- Social Security numbers
- Bank account numbers for direct deposit

All 450 TechFlow employees' data may have been affected.

---

**Your Response:**

Incident Type: _____________________

Severity Level: _____________________

Immediate Questions for Vendor:
1. _____________________
2. _____________________
3. _____________________
4. _____________________

Internal Actions:
1. _____________________
2. _____________________
3. _____________________

Employee Notification:
- Timeline: _____________________
- Content: _____________________
- Support to offer: _____________________

Regulatory Considerations:
1. _____________________
2. _____________________

Vendor Relationship:
1. _____________________
2. _____________________

---

## Summary Exercise

After working through all scenarios, complete this summary:

| Scenario | Type | Severity | Key Notification | Timeline |
|----------|------|----------|------------------|----------|
| 1. Phishing | | | | |
| 2. Ransomware | | | | |
| 3. Cloud Exposure | | | | |
| 4. Insider Threat | | | | |
| 5. Third-Party Breach | | | | |

**Lessons Learned from Exercise:**
1. _____________________
2. _____________________
3. _____________________

---

Ready to check your work? See [Solutions](solutions.md).

---

[← Back to Exercise Overview](README.md)
