# Data Pipeline Compliance Scenarios

Review each pipeline architecture and identify compliance risks.

---

## Scenario 1: Customer Analytics Pipeline

**Company:** E-commerce platform (US-based, serves EU customers)
**Pipeline Owner:** Data Engineering Team

```
Architecture:
┌──────────────┐     ┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│ Web App      │────►│ Kafka        │────►│ Spark        │────►│ Snowflake    │
│ (EU & US)    │     │ (US-East)    │     │ (US-East)    │     │ (US-East)    │
└──────────────┘     └──────────────┘     └──────────────┘     └──────────────┘
                                                                      │
                                                                      ▼
                                                               ┌──────────────┐
                                                               │ Tableau      │
                                                               │ Dashboards   │
                                                               └──────────────┘
```

**Data Collected:**
- User ID, email, name
- IP address, device info, browser
- Purchase history
- Page views, click streams
- Location (from IP geolocation)

**Current State:**
- All data flows to US-East regardless of user location
- No data classification in place
- Retention: "We keep everything forever for analytics"
- 47 people have Snowflake access
- No deletion process exists

**Your Task:** Identify all compliance issues and recommend fixes.

---

## Scenario 2: ML Training Data Pipeline

**Company:** HR Tech startup
**Pipeline Owner:** ML Engineering Team

```
Architecture:
┌──────────────┐     ┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│ HRIS         │────►│ S3 Raw       │────►│ Feature      │────►│ S3 Training  │
│ Systems      │     │ (us-west-2)  │     │ Engineering  │     │ (us-west-2)  │
└──────────────┘     └──────────────┘     └──────────────┘     └──────────────┘
                                                                      │
                                          ┌──────────────┐            │
                                          │ Model        │◄───────────┘
                                          │ Training     │
                                          └──────────────┘
                                                 │
                                                 ▼
                                          ┌──────────────┐
                                          │ Hiring       │
                                          │ Predictions  │
                                          └──────────────┘
```

**Data Collected:**
- Resumes (name, education, work history)
- Interview scores
- Hiring decisions (hired/not hired)
- Demographics (for "bias testing")
- Salary data

**Current State:**
- Data from 50+ client companies
- Demographics used in training features
- Model makes "hire/no-hire" recommendations
- No model cards or documentation
- Training data kept indefinitely
- No process for removing individual's data from trained model

**Your Task:** Identify compliance and ethical risks.

---

## Scenario 3: Healthcare Data Lake

**Company:** Health analytics provider
**Pipeline Owner:** Platform Engineering

```
Architecture:
┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│ Hospital A   │────►│              │     │              │
│ (EHR Export) │     │              │     │              │
└──────────────┘     │              │     │              │
                     │   Azure      │────►│   Databricks │────► Research
┌──────────────┐     │   Data Lake  │     │   (Analytics)│      Outputs
│ Hospital B   │────►│              │     │              │
│ (EHR Export) │     │              │     │              │
└──────────────┘     │              │     │              │
                     └──────────────┘     └──────────────┘
┌──────────────┐            ▲
│ Hospital C   │────────────┘
│ (EHR Export) │
└──────────────┘
```

**Data Collected:**
- Patient records (PHI)
- Diagnoses, procedures, medications
- Lab results
- Provider notes
- Insurance information

**Current State:**
- "De-identified" but includes zip codes, birth dates, admission dates
- Business Associate Agreements in place
- All data in single Azure region
- Access controlled by Azure AD
- Logs retained 90 days
- Research outputs shared with academic partners

**Your Task:** Assess HIPAA compliance risks.

---

## Scenario 4: Real-Time Fraud Detection

**Company:** Payment processor
**Pipeline Owner:** Fraud Team

```
Architecture:
┌──────────────┐     ┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│ Transaction  │────►│ Kafka        │────►│ Flink        │────►│ PostgreSQL   │
│ API          │     │ (multi-AZ)   │     │ (real-time)  │     │ (decisions)  │
└──────────────┘     └──────────────┘     └──────────────┘     └──────────────┘
                            │                    │
                            ▼                    ▼
                     ┌──────────────┐     ┌──────────────┐
                     │ S3 Archive   │     │ Elasticsearch│
                     │ (7 years)    │     │ (dashboards) │
                     └──────────────┘     └──────────────┘
```

**Data Collected:**
- Full card numbers (PAN)
- CVV (during transaction)
- Cardholder name, billing address
- Transaction amounts, merchants
- Device fingerprints, IP addresses

**Current State:**
- CVV stored in Kafka for 24 hours
- Full PAN in PostgreSQL (encrypted at rest)
- S3 archive contains full transaction details
- Elasticsearch cluster used for analyst dashboards
- 15 fraud analysts have access to dashboards
- Weekly exports sent to partner banks

**Your Task:** Assess PCI-DSS compliance.

---

## Scenario 5: Customer 360 Platform

**Company:** Retail conglomerate
**Pipeline Owner:** Data Platform Team

```
Architecture:
┌──────────────┐
│ Online Store │──────┐
└──────────────┘      │
                      │     ┌──────────────┐     ┌──────────────┐
┌──────────────┐      ├────►│ Customer     │────►│ Marketing    │
│ Mobile App   │──────┤     │ 360 (BigQuery)│    │ Automation   │
└──────────────┘      │     └──────────────┘     └──────────────┘
                      │            │
┌──────────────┐      │            ▼
│ In-Store POS │──────┤     ┌──────────────┐
└──────────────┘      │     │ Data Science │
                      │     │ Team Access  │
┌──────────────┐      │     └──────────────┘
│ Customer     │──────┘
│ Service      │
└──────────────┘
```

**Data Collected:**
- Unified customer profiles
- Purchase history (online + in-store)
- Customer service interactions
- Mobile app usage
- Location data (when app used in-store)
- Loyalty program data
- Marketing preferences

**Current State:**
- Data merged from 5 source systems
- No unified consent management
- Different systems collected consent differently
- Marketing team uses for targeted campaigns
- Data science team uses for "customer insights"
- No documentation of what data came from where
- Customers can't request "what do you have on me"

**Your Task:** Assess consent and data rights compliance.

---

## Scenario 6: Cross-Border Data Synchronization

**Company:** Global SaaS provider
**Pipeline Owner:** Infrastructure Team

```
Architecture:
┌─────────────────────────────────────────────────────────────────────────────┐
│                            GLOBAL DEPLOYMENT                                 │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│  US-EAST                    EU-WEST                    APAC                  │
│  ┌──────────────┐          ┌──────────────┐          ┌──────────────┐       │
│  │ Primary DB   │◄────────►│ Read Replica │◄────────►│ Read Replica │       │
│  │ (PostgreSQL) │          │ (PostgreSQL) │          │ (PostgreSQL) │       │
│  └──────────────┘          └──────────────┘          └──────────────┘       │
│         │                         │                         │                │
│         ▼                         ▼                         ▼                │
│  ┌──────────────┐          ┌──────────────┐          ┌──────────────┐       │
│  │ Application  │          │ Application  │          │ Application  │       │
│  │ Servers      │          │ Servers      │          │ Servers      │       │
│  └──────────────┘          └──────────────┘          └──────────────┘       │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
                                    │
                                    ▼
                           ┌──────────────┐
                           │ US Analytics │
                           │ Warehouse    │
                           └──────────────┘
```

**Data Stored:**
- User accounts (name, email, company)
- Uploaded documents
- Usage analytics
- API keys and secrets
- Payment information (via Stripe)

**Current State:**
- All data replicates to all regions (for performance)
- EU user data exists in US-East primary
- Analytics warehouse aggregates all regions
- Backups stored in US
- "Data residency" promised to EU enterprise customers
- Legal team unaware of replication architecture

**Your Task:** Identify data residency violations.

---

## Scenario 7: Log Aggregation Pipeline

**Company:** SaaS platform
**Pipeline Owner:** SRE Team

```
Architecture:
┌──────────────┐
│ App Server 1 │──────┐
└──────────────┘      │
                      │     ┌──────────────┐     ┌──────────────┐
┌──────────────┐      ├────►│ Fluentd      │────►│ Elasticsearch│
│ App Server 2 │──────┤     │ Aggregator   │     │ (logs)       │
└──────────────┘      │     └──────────────┘     └──────────────┘
                      │            │
┌──────────────┐      │            ▼
│ App Server N │──────┘     ┌──────────────┐
└──────────────┘            │ S3 Archive   │
                            │ (forever)    │
                            └──────────────┘
```

**Data in Logs:**
- Request URLs (sometimes include tokens)
- IP addresses
- User IDs
- Error messages (sometimes include stack traces with data)
- API request/response bodies (for debugging)
- Email addresses in error contexts

**Current State:**
- Logs retained "forever" for debugging
- No PII scrubbing in place
- Request bodies logged at DEBUG level (includes passwords on login errors)
- 20+ engineers have Elasticsearch access
- S3 archive never accessed but never deleted
- Third-party error tracking (Sentry) also receives data

**Your Task:** Identify PII exposure risks.

---

## Scenario 8: IoT Data Platform

**Company:** Smart home device manufacturer
**Pipeline Owner:** IoT Platform Team

```
Architecture:
┌──────────────┐     ┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│ Smart        │────►│ AWS IoT      │────►│ Kinesis      │────►│ S3 Data Lake │
│ Devices      │     │ Core         │     │ Firehose     │     │              │
│ (millions)   │     └──────────────┘     └──────────────┘     └──────────────┘
└──────────────┘                                                      │
                                                                      ▼
                                                               ┌──────────────┐
                                                               │ Redshift     │
                                                               │ (Analytics)  │
                                                               └──────────────┘
                                                                      │
                                                                      ▼
                                                               ┌──────────────┐
                                                               │ Partner      │
                                                               │ API Access   │
                                                               └──────────────┘
```

**Data Collected:**
- Device telemetry (temperature, motion, audio levels)
- Device location (home address)
- Usage patterns (when home, when away)
- Voice commands (when voice features used)
- WiFi network information
- Other devices on network

**Current State:**
- Terms of service mention "data may be used to improve products"
- Voice recordings kept for "model improvement"
- Partners include insurance companies, energy providers
- No way for users to see their data
- No way for users to delete their data
- Data from EU and US users treated identically

**Your Task:** Assess consent and data sharing risks.

---

## Submission

For each scenario, document:

1. **Compliance Issues Found** (list each with severity: Critical/High/Medium/Low)
2. **Regulations Violated** (which laws apply)
3. **Recommended Fixes** (specific technical changes)
4. **Questions for Stakeholders** (what you'd need to clarify)
