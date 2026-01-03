# Cloud Provider Compliance Considerations

Compliance specifics for AWS, Azure, and GCP data pipelines.

---

## The Shared Responsibility Model

All cloud providers use a shared responsibility model. Understanding the split is critical.

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                    SHARED RESPONSIBILITY MODEL                               │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│  YOUR RESPONSIBILITY (Customer)                                              │
│  ┌────────────────────────────────────────────────────────────────────────┐ │
│  │ • Data classification and handling                                      │ │
│  │ • Access management and IAM policies                                    │ │
│  │ • Encryption key management                                             │ │
│  │ • Application-level security                                            │ │
│  │ • Compliance with regulations (GDPR, HIPAA, PCI-DSS)                   │ │
│  │ • Data residency decisions                                              │ │
│  │ • Audit logging configuration                                           │ │
│  │ • Network security rules                                                │ │
│  └────────────────────────────────────────────────────────────────────────┘ │
│                                                                              │
│  ─────────────────────────── SHARED LINE ────────────────────────────────── │
│                                                                              │
│  PROVIDER RESPONSIBILITY (AWS/Azure/GCP)                                     │
│  ┌────────────────────────────────────────────────────────────────────────┐ │
│  │ • Physical security of data centers                                     │ │
│  │ • Hardware maintenance                                                  │ │
│  │ • Network infrastructure                                                │ │
│  │ • Hypervisor security                                                   │ │
│  │ • Compliance certifications (SOC 2, ISO 27001)                         │ │
│  └────────────────────────────────────────────────────────────────────────┘ │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

**Key Point:** The cloud provider's SOC 2 certification does NOT make your application SOC 2 compliant. You inherit their infrastructure controls, but you're responsible for everything else.

---

## AWS Compliance Considerations

### Data Residency

| Service | Default Behavior | Compliance Action |
|---------|-----------------|-------------------|
| S3 | Data stays in chosen region | Enable "Block Public Access" |
| RDS | Data stays in chosen region | Enable encryption, audit logging |
| DynamoDB | Data stays in chosen region | Consider Global Tables implications |
| Lambda | Executes in chosen region | Be aware of cold start data caching |
| CloudWatch Logs | Stays in region | Set retention, consider log encryption |
| CloudTrail | Can aggregate to one region | Plan multi-region strategy |

**Cross-Region Replication Traps:**
| Service | Cross-Region Risk | Mitigation |
|---------|------------------|------------|
| S3 Cross-Region Replication | EU data replicated to US | Use same-region replication only for EU data |
| DynamoDB Global Tables | Full replication to all regions | Exclude tables with EU PII |
| Aurora Global Database | Read replicas worldwide | Restrict to compliant regions |
| ElastiCache Global Datastore | Session data crosses borders | Keep EU sessions in EU |

### AWS Services with Compliance Features

| Service | Compliance Feature | Use Case |
|---------|-------------------|----------|
| AWS Macie | Auto-discovers PII in S3 | Data classification |
| AWS Config | Tracks resource configurations | Audit trail |
| AWS CloudTrail | API call logging | Access auditing |
| AWS KMS | Key management | Encryption |
| AWS IAM Access Analyzer | Finds public/cross-account access | Access review |
| AWS Audit Manager | Automated compliance evidence | Audit prep |

### AWS HIPAA Considerations

Only certain AWS services are HIPAA-eligible:
- ✅ S3, RDS, DynamoDB, Lambda, ECS, EKS
- ✅ CloudWatch, CloudTrail, KMS
- ⚠️ Check current list: some services require specific configurations
- ❌ Some services are NOT HIPAA-eligible

**Requirements:**
1. Sign Business Associate Addendum (BAA)
2. Use only HIPAA-eligible services
3. Enable CloudTrail logging
4. Enable encryption everywhere

### AWS PCI-DSS Considerations

| Requirement | AWS Implementation |
|-------------|-------------------|
| Encrypt cardholder data | KMS + S3 encryption / RDS encryption |
| Restrict access | IAM policies, Security Groups |
| Track access | CloudTrail, VPC Flow Logs |
| Regular testing | AWS Inspector, third-party scans |
| Segmentation | VPC, separate accounts |

---

## Azure Compliance Considerations

### Data Residency

| Service | Default Behavior | Compliance Action |
|---------|-----------------|-------------------|
| Blob Storage | Data stays in chosen region | Enable geo-redundant storage carefully |
| Azure SQL | Data stays in chosen region | Disable geo-replication for EU data |
| Cosmos DB | Can replicate globally | Configure write regions carefully |
| Azure Functions | Executes in chosen region | Check Application Insights data location |
| Log Analytics | Workspace location = data location | Create regional workspaces |

**Azure Geo-Redundancy Traps:**
| Feature | Risk | Mitigation |
|---------|------|------------|
| GRS (Geo-Redundant Storage) | Data copied to paired region | Use LRS or ZRS for EU data |
| GZRS | Same issue | Use ZRS only |
| Azure Site Recovery | Replicated VMs cross-region | Keep EU recovery in EU |
| Traffic Manager | Logs may centralize | Check diagnostic settings |

**Azure Region Pairs (relevant for GDPR):**
| EU Region | Paired With | Notes |
|-----------|-------------|-------|
| North Europe (Ireland) | West Europe (Netherlands) | Both in EU - OK |
| France Central | France South | Both in France - OK |
| Germany West Central | Germany North | Both in Germany - OK |
| UK South | UK West | Both in UK - check adequacy |

### Azure Services with Compliance Features

| Service | Compliance Feature | Use Case |
|---------|-------------------|----------|
| Microsoft Purview | Data discovery & classification | Finding PII |
| Azure Policy | Enforce configurations | Prevent non-compliant resources |
| Azure Monitor | Logging & metrics | Audit trails |
| Key Vault | Secret/key management | Encryption |
| Microsoft Defender for Cloud | Security posture | Compliance dashboards |
| Compliance Manager | Compliance scoring | Audit prep |

### Azure Sovereign Clouds

For highly regulated data, consider:
- **Azure Government** (US) - FedRAMP High
- **Azure China** (21Vianet) - China data residency
- **Azure Germany** (Deprecated) - Was for German data trustee model

---

## GCP Compliance Considerations

### Data Residency

| Service | Default Behavior | Compliance Action |
|---------|-----------------|-------------------|
| Cloud Storage | Multi-region possible | Use single region for compliance |
| BigQuery | Dataset location fixed | Choose EU multi-region or specific region |
| Cloud SQL | Regional by default | Enable regional backups only |
| Firestore | Location locked at creation | Choose carefully - can't change later |
| Cloud Functions | Executes in chosen region | Check Cloud Logging location |

**GCP Multi-Region Risks:**

| Location | Includes | GDPR Compliant? |
|----------|----------|-----------------|
| US multi-region | Multiple US locations | For US data only |
| EU multi-region | EU data centers only | Yes |
| asia | Multiple APAC locations | Check specific requirements |

**Recommendation:** For GDPR compliance, always use:
- `europe-west1` (Belgium), `europe-west2` (London), `europe-west3` (Frankfurt)
- Or `EU` multi-region (guaranteed EU-only)

### GCP Services with Compliance Features

| Service | Compliance Feature | Use Case |
|---------|-------------------|----------|
| Cloud DLP | PII detection and redaction | Data classification |
| Cloud Asset Inventory | Resource tracking | Audit trails |
| Cloud Audit Logs | Access logging | Compliance evidence |
| Cloud KMS | Key management | Encryption |
| Access Context Manager | Conditional access | Location-based controls |
| Assured Workloads | Compliance controls | Regulated workloads |

### GCP Organization Policies

Use Organization Policies to enforce compliance:

| Policy | Compliance Use |
|--------|---------------|
| `constraints/gcp.resourceLocations` | Restrict resources to specific regions |
| `constraints/compute.requireShieldedVm` | Security baseline |
| `constraints/storage.uniformBucketLevelAccess` | Consistent access control |
| `constraints/iam.allowedPolicyMemberDomains` | Restrict external sharing |

---

## Cross-Cloud Considerations

### Multi-Cloud Compliance Challenges

| Challenge | Risk | Mitigation |
|-----------|------|------------|
| Inconsistent encryption | Different key management | Centralize with HashiCorp Vault or similar |
| Scattered logs | Incomplete audit trail | Aggregate to SIEM |
| Different IAM models | Access control gaps | Federate identity |
| Varied retention | Inconsistent deletion | Central data catalog |
| Different regions | Untracked data flows | Document all flows |

### Data Transfer Between Clouds

When data moves between clouds:
1. **Encryption in transit** - TLS 1.2+ minimum
2. **Document the transfer** - Update data flow maps
3. **Check region compliance** - Both source and destination
4. **Log the transfer** - Audit trail
5. **Consider latency** - May affect architecture

---

## Compliance Certifications by Provider

| Certification | AWS | Azure | GCP |
|--------------|-----|-------|-----|
| SOC 1/2/3 | ✅ | ✅ | ✅ |
| ISO 27001 | ✅ | ✅ | ✅ |
| ISO 27017 | ✅ | ✅ | ✅ |
| ISO 27018 | ✅ | ✅ | ✅ |
| PCI-DSS | ✅ | ✅ | ✅ |
| HIPAA | ✅ (BAA) | ✅ (BAA) | ✅ (BAA) |
| FedRAMP | ✅ | ✅ | ✅ |
| GDPR | ✅ (DPA) | ✅ (DPA) | ✅ (DPA) |

**Remember:** These certifications apply to the cloud infrastructure. Your workloads running on that infrastructure need their own compliance work.

---

## Quick Reference: Region Selection

### For GDPR Compliance

| Provider | Recommended Regions |
|----------|-------------------|
| AWS | eu-west-1 (Ireland), eu-central-1 (Frankfurt), eu-west-2 (London)* |
| Azure | North Europe, West Europe, France Central, Germany West Central |
| GCP | europe-west1, europe-west2*, europe-west3, EU multi-region |

*Check UK adequacy decision status

### For HIPAA Compliance

All major regions in US are HIPAA-eligible (with BAA signed).

### For PCI-DSS

Region doesn't matter as much - focus on:
- Network segmentation
- Encryption
- Access controls
- Logging

---

## Action Items for Cloud Migrations

Before migrating a pipeline to cloud:

1. [ ] Document current data residency requirements
2. [ ] Map data classification to cloud services
3. [ ] Choose regions based on compliance needs
4. [ ] Configure encryption (at rest and in transit)
5. [ ] Set up audit logging
6. [ ] Configure access controls (least privilege)
7. [ ] Review default replication/redundancy settings
8. [ ] Disable or configure cross-region features
9. [ ] Set up compliance monitoring/alerts
10. [ ] Document architecture for auditors
