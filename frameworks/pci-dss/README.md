# PCI-DSS (Payment Card Industry Data Security Standard)

## What Is PCI-DSS?

**PCI-DSS** is a set of security standards designed to ensure that all companies that accept, process, store, or transmit credit card information maintain a secure environment. It was created by the Payment Card Industry Security Standards Council (PCI SSC), founded by Visa, Mastercard, American Express, Discover, and JCB.

---

## Why PCI-DSS Matters

### For Organizations
- **Required to accept cards** - Non-compliance can result in inability to process payments
- **Financial penalties** - Fines from $5,000 to $100,000+ per month
- **Liability** - Responsibility for fraudulent transactions and breach costs
- **Reputational damage** - Loss of customer trust after breach

### For Compliance Professionals
- **Universal applicability** - Any organization accepting card payments
- **Clear requirements** - Specific technical and operational controls
- **Regular updates** - New versions address emerging threats

---

## Who Must Comply?

Any organization that stores, processes, or transmits cardholder data:

| Entity Type | Example |
|-------------|---------|
| **Merchants** | Retail stores, e-commerce sites, restaurants |
| **Service Providers** | Payment processors, hosting providers |
| **Financial Institutions** | Banks, credit unions |
| **Third Parties** | Call centers, marketing firms handling card data |

---

## Cardholder Data (CHD)

### What Is Protected

| Data Element | Storage Permitted | Protection Required |
|--------------|-------------------|---------------------|
| **Primary Account Number (PAN)** | Yes | Must be rendered unreadable |
| **Cardholder Name** | Yes | Yes |
| **Service Code** | Yes | Yes |
| **Expiration Date** | Yes | Yes |

### Sensitive Authentication Data (SAD) - NEVER Store

| Data Element | Description | Storage |
|--------------|-------------|---------|
| **Full Track Data** | Magnetic stripe data | NEVER |
| **CVV/CVC** | Card verification value | NEVER |
| **PIN/PIN Block** | Personal identification number | NEVER |

```
Card Anatomy:
┌─────────────────────────────────────────┐
│  1234 5678 9012 3456    ← PAN          │
│  JOHN SMITH             ← Cardholder   │
│  12/25                  ← Expiration   │
│                                        │
│  Signature: ___________                │
│                         CVV: 123 ← SAD │
└─────────────────────────────────────────┘
```

---

## The 12 PCI-DSS Requirements

### Goal 1: Build and Maintain a Secure Network and Systems

**Requirement 1: Install and maintain network security controls**
- Firewalls and network segmentation
- Document all network connections
- Review firewall rules semi-annually

**Requirement 2: Apply secure configurations to all system components**
- Change vendor defaults (passwords, settings)
- Develop configuration standards
- Maintain system component inventory

### Goal 2: Protect Account Data

**Requirement 3: Protect stored account data**
- Keep storage to minimum
- Don't store SAD after authorization
- Render PAN unreadable (encryption, truncation, tokenization, hashing)

**Requirement 4: Protect cardholder data with strong cryptography during transmission**
- Encrypt transmission over open networks
- Use strong cryptographic protocols (TLS 1.2+)
- Never send PAN via unencrypted email/messaging

### Goal 3: Maintain a Vulnerability Management Program

**Requirement 5: Protect all systems and networks from malicious software**
- Deploy anti-malware on all applicable systems
- Keep anti-malware current
- Perform periodic scans

**Requirement 6: Develop and maintain secure systems and software**
- Establish secure development practices
- Protect against common vulnerabilities (OWASP Top 10)
- Deploy patches timely (critical within 1 month)

### Goal 4: Implement Strong Access Control Measures

**Requirement 7: Restrict access to cardholder data by business need-to-know**
- Implement access control systems
- Default deny all access
- Document access requirements

**Requirement 8: Identify users and authenticate access to system components**
- Unique IDs for all users
- Strong authentication (MFA for remote/admin access)
- Password requirements (12+ characters)

**Requirement 9: Restrict physical access to cardholder data**
- Physical access controls to sensitive areas
- Visitor management
- Protect against device tampering

### Goal 5: Regularly Monitor and Test Networks

**Requirement 10: Log and monitor all access to system components and cardholder data**
- Audit trail for all access
- Time synchronization
- Log retention (1 year, 3 months immediately available)

**Requirement 11: Test security of systems and networks regularly**
- Quarterly vulnerability scans (internal and ASV)
- Annual penetration testing
- Intrusion detection/prevention

### Goal 6: Maintain an Information Security Policy

**Requirement 12: Support information security with organizational policies and programs**
- Information security policy
- Risk assessment annually
- Security awareness training
- Incident response plan

---

## Compliance Levels

### Merchant Levels

| Level | Annual Transactions | Validation Requirement |
|-------|--------------------|-----------------------|
| **1** | > 6 million | Annual ROC by QSA + quarterly ASV scan |
| **2** | 1-6 million | Annual SAQ + quarterly ASV scan |
| **3** | 20,000-1 million (e-commerce) | Annual SAQ + quarterly ASV scan |
| **4** | < 20,000 (e-commerce) or < 1M | Annual SAQ + quarterly ASV scan |

### Service Provider Levels

| Level | Annual Transactions | Validation Requirement |
|-------|--------------------|-----------------------|
| **1** | > 300,000 | Annual ROC by QSA + quarterly ASV scan |
| **2** | < 300,000 | Annual SAQ + quarterly ASV scan |

---

## Key Compliance Documents

### Self-Assessment Questionnaire (SAQ)
Self-reported compliance for smaller merchants.

| SAQ Type | Applies To |
|----------|------------|
| **SAQ A** | Card-not-present, all payment processing outsourced |
| **SAQ A-EP** | E-commerce with website affecting transaction security |
| **SAQ B** | Imprint-only or standalone dial-out terminals |
| **SAQ B-IP** | Standalone PTS terminals with IP connection |
| **SAQ C** | Payment application systems connected to internet |
| **SAQ C-VT** | Virtual terminal on isolated computer |
| **SAQ D** | All other merchants or service providers |

### Report on Compliance (ROC)
Formal assessment by Qualified Security Assessor (QSA) for Level 1 entities.

### Attestation of Compliance (AOC)
Executive summary confirming compliance status.

---

## Scope Reduction Strategies

### Tokenization
Replace PAN with non-sensitive token:
```
Original: 4111 1111 1111 1111
Token:    TKN_8a7f9b2c4d6e8f0a
```

### Point-to-Point Encryption (P2PE)
Encrypt card data at point of interaction, decrypt only at payment processor.

### Network Segmentation
Isolate cardholder data environment (CDE) from rest of network:
```
┌─────────────────────────────────────────────────┐
│              Corporate Network                   │
│  ┌─────────┐   ┌─────────┐   ┌─────────┐       │
│  │ Worksta │   │ Servers │   │ Printers│       │
│  └─────────┘   └─────────┘   └─────────┘       │
│              (Out of Scope)                     │
├─────────────────────────────────────────────────┤
│                 FIREWALL                        │
├─────────────────────────────────────────────────┤
│         Cardholder Data Environment             │
│  ┌─────────┐   ┌─────────┐   ┌─────────┐       │
│  │ Payment │   │  Card   │   │  App    │       │
│  │Terminal │   │Database │   │ Server  │       │
│  └─────────┘   └─────────┘   └─────────┘       │
│              (In Scope for PCI)                 │
└─────────────────────────────────────────────────┘
```

---

## Common Compliance Failures

| Failure | Requirement | Risk |
|---------|-------------|------|
| Storing CVV | Req 3 | Critical |
| Weak/default passwords | Req 2, 8 | High |
| Unencrypted transmission | Req 4 | High |
| Missing patches | Req 6 | High |
| No logging/monitoring | Req 10 | High |
| Unencrypted PAN storage | Req 3 | High |
| Missing vulnerability scans | Req 11 | Medium |
| No security training | Req 12 | Medium |

---

## PCI-DSS 4.0 Key Changes

Released March 2022, mandatory March 2025:

| Change | Description |
|--------|-------------|
| **Customized Approach** | Alternative to prescriptive controls |
| **Targeted Risk Analysis** | Entity-specific risk assessments |
| **Enhanced Authentication** | MFA for all CDE access |
| **E-Commerce Security** | New requirements for payment page scripts |
| **Service Provider Requirements** | Enhanced documentation and testing |
| **Encryption Requirements** | Disk-level encryption no longer sufficient |

---

## Compliance Checklist

```
Network Security:
□ Firewall rules documented and reviewed
□ No vendor default passwords
□ Network segmentation implemented

Data Protection:
□ No SAD stored after authorization
□ PAN encrypted/tokenized
□ Transmission encrypted (TLS 1.2+)

Vulnerability Management:
□ Anti-malware deployed
□ Patches current (critical < 30 days)
□ Secure development practices

Access Control:
□ Unique user IDs
□ MFA for remote/admin access
□ Physical access controls

Monitoring:
□ Logging enabled
□ Logs retained (1 year)
□ Quarterly vulnerability scans
□ Annual penetration test

Documentation:
□ Security policies documented
□ Annual risk assessment
□ Incident response plan
□ Security training completed
```

---

## Practice Questions

1. What data elements are classified as Sensitive Authentication Data?
2. What is the difference between a QSA and an ASV?
3. How can an organization reduce PCI-DSS scope?
4. What are the logging retention requirements?
5. What SAQ type applies to a fully outsourced e-commerce site?
6. What is the minimum password length requirement in PCI-DSS 4.0?

---

[← Back to Frameworks Overview](../README.md) | [Previous: HIPAA](../hipaa/README.md) | [Next: ISO 27001 →](../iso27001/README.md)
