# DSA Article 34 Risk Taxonomy

This document outlines the systemic risk categories defined in DSA Article 34, with platform-specific examples and assessment guidance.

---

## Overview: DSA Article 34 Systemic Risks

Very Large Online Platforms (VLOPs) and Very Large Online Search Engines (VLOSEs) must assess systemic risks arising from:

1. The design and functioning of the service and its related systems (including algorithmic systems)
2. The moderation of content
3. The application of terms and conditions
4. The selection and presentation of information

These risks must be analyzed across **five categories**.

---

## Category 1: Dissemination of Illegal Content

### Definition
Risks that the service facilitates the spread of content that violates EU or Member State law.

### Types of Illegal Content

| Content Type | Examples | Relevant Laws |
|--------------|----------|---------------|
| **Terrorist content** | Propaganda, recruitment, attack instructions | Regulation 2021/784 |
| **Child sexual abuse material (CSAM)** | Images, grooming, solicitation | Directive 2011/93/EU |
| **Illegal hate speech** | Incitement based on race, religion, gender | Framework Decision 2008/913/JHA |
| **Non-consensual intimate images** | Revenge porn, deepfakes | Member State laws |
| **Intellectual property infringement** | Pirated content, counterfeit goods | Copyright Directive, Trademark law |
| **Consumer protection violations** | Scams, fraud, illegal products | Consumer Rights Directive |
| **Defamation** | False statements harming reputation | Member State laws |

### Platform-Specific Risk Examples

| Platform Type | High-Risk Areas |
|---------------|-----------------|
| **Social Media** | User-generated posts, comments, groups, live streams |
| **Video Sharing** | Uploads, comments, playlists, recommendations |
| **Marketplace** | Product listings, seller communications, reviews |
| **Search Engine** | Indexed content, autocomplete suggestions, featured snippets |
| **Messaging** | Group chats, file sharing, broadcast lists |

### Key Questions for Assessment

1. What content types can users create/share on your platform?
2. What detection mechanisms exist for each illegal content type?
3. What is the median time-to-removal for identified illegal content?
4. How does your recommendation system affect exposure to illegal content?
5. What cross-border challenges affect your ability to assess legality?

---

## Category 2: Negative Effects on Fundamental Rights

### Definition
Risks that the service negatively impacts the exercise of fundamental rights protected by the EU Charter of Fundamental Rights.

### Affected Rights

| Right | Charter Article | Platform Risk Examples |
|-------|-----------------|----------------------|
| **Human dignity** | Art. 1 | Dehumanizing content, harassment campaigns |
| **Privacy & data protection** | Art. 7, 8 | Profiling, data exploitation, doxxing |
| **Freedom of expression** | Art. 11 | Over-removal, algorithmic suppression, shadow banning |
| **Non-discrimination** | Art. 21 | Algorithmic bias, discriminatory targeting |
| **Rights of the child** | Art. 24 | Age-inappropriate content exposure, exploitation |
| **Freedom of assembly** | Art. 12 | Suppression of protest organization, political surveillance |
| **Right to an effective remedy** | Art. 47 | Inadequate appeals processes |

### Algorithmic Risks to Fundamental Rights

| Algorithmic Function | Potential Rights Impact |
|---------------------|------------------------|
| **Content recommendation** | Filter bubbles limiting information access (Art. 11) |
| **Ad targeting** | Discriminatory exclusion from opportunities (Art. 21) |
| **Content moderation** | Disproportionate removal affecting expression (Art. 11) |
| **Account suspension** | Lack of due process (Art. 47) |
| **Search ranking** | Bias in information access (Art. 11) |
| **Facial recognition** | Privacy violations, misidentification (Art. 7, 21) |

### Key Questions for Assessment

1. How do your algorithmic systems affect different user groups?
2. What data do you collect and how is it used for personalization?
3. What is your appeals rate and reversal rate for content decisions?
4. Have you conducted algorithmic audits for bias?
5. How do you balance safety measures with freedom of expression?

---

## Category 3: Negative Effects on Civic Discourse and Electoral Processes

### Definition
Risks that the service undermines democratic processes, public debate, or electoral integrity.

### Risk Sub-Categories

| Risk | Description | Examples |
|------|-------------|----------|
| **Disinformation** | False or misleading content about public issues | Election fraud claims, health misinformation |
| **Foreign interference** | Coordinated campaigns by foreign actors | State-sponsored troll farms, bot networks |
| **Coordinated inauthentic behavior** | Artificial amplification of messages | Fake accounts, engagement manipulation |
| **Polarization** | Algorithmic amplification of divisive content | Filter bubbles, outrage optimization |
| **Voter suppression** | Content discouraging or misdirecting voters | False polling information, intimidation |
| **Political advertising opacity** | Undisclosed or misleading political ads | Dark ads, micro-targeting without transparency |

### Election-Specific Risks

| Election Phase | Platform Risks |
|----------------|----------------|
| **Pre-election** | Candidate misinformation, foreign interference setup |
| **Campaign period** | Ad transparency issues, coordinated campaigns |
| **Voting period** | Voter suppression, polling misinformation |
| **Post-election** | Results disinformation, incitement to violence |

### Key Questions for Assessment

1. How does your recommendation algorithm treat political content?
2. What measures exist to detect coordinated inauthentic behavior?
3. How do you handle political advertising? What transparency exists?
4. What election-specific policies and enforcement do you implement?
5. How do you coordinate with election authorities and fact-checkers?

---

## Category 4: Negative Effects on Gender-Based Violence, Public Health, and Minors

### Definition
Risks related to actual or foreseeable negative effects on:
- Protection of public health
- Minors' physical and mental well-being
- Gender-based violence

### Public Health Risks

| Risk Area | Examples |
|-----------|----------|
| **Health misinformation** | Anti-vaccine content, fake cures, pandemic denial |
| **Pro-eating disorder content** | Thinspiration, fasting promotion |
| **Pro-suicide/self-harm content** | Methods, glorification, challenges |
| **Drug promotion** | Illegal substances, misuse of legal drugs |
| **Mental health impacts** | Anxiety, depression, addiction from platform use |

### Risks to Minors

| Risk Area | Examples |
|-----------|----------|
| **Age-inappropriate content** | Adult content, violence, gambling |
| **Grooming** | Predatory contact, exploitation |
| **Cyberbullying** | Harassment, exclusion, humiliation |
| **Harmful challenges** | Dangerous viral trends |
| **Addiction/excessive use** | Design features exploiting developing minds |
| **Commercial exploitation** | Manipulative advertising to children |
| **Privacy violations** | Data collection from minors |

### Gender-Based Violence Risks

| Risk Area | Examples |
|-----------|----------|
| **Non-consensual intimate imagery** | Revenge porn, deepfakes |
| **Online harassment** | Coordinated attacks, doxxing, threats |
| **Stalking facilitation** | Location sharing, tracking |
| **Domestic abuse enablement** | Surveillance, control, isolation |
| **Trafficking** | Recruitment, advertisement |

### Key Questions for Assessment

1. How do you verify user age? What limitations exist?
2. What protections exist specifically for minor users?
3. How do you detect and remove health misinformation?
4. What features might contribute to addictive usage patterns?
5. How do you handle reports of gender-based violence?

---

## Category 5: Negative Effects on Public Security

### Definition
Risks that the service facilitates serious negative consequences for physical security and public safety.

### Risk Sub-Categories

| Risk | Description | Examples |
|------|-------------|----------|
| **Terrorism** | Planning, recruitment, glorification | Attack coordination, radicalization content |
| **Organized crime** | Facilitation of criminal networks | Drug markets, weapon sales, human trafficking |
| **Incitement to violence** | Content promoting real-world harm | Calls to attack specific groups/places |
| **Critical infrastructure threats** | Information enabling attacks | SCADA vulnerabilities, utility targeting |
| **Mass casualty events** | Content related to mass violence | Manifestos, livestreamed attacks |
| **Civil unrest** | Coordination of violent protest | Riot organization, mob violence |

### Platform Feature Risks

| Feature | Public Security Risk |
|---------|---------------------|
| **End-to-end encryption** | Criminal coordination invisible to platform |
| **Ephemeral content** | Evidence destruction, accountability gaps |
| **Group/community features** | Echo chambers for radicalization |
| **Live streaming** | Real-time broadcast of attacks |
| **Marketplace** | Illegal goods sales |
| **Location sharing** | Targeting, stalking, coordination |

### Key Questions for Assessment

1. How do you detect content related to terrorism or violence?
2. What law enforcement cooperation mechanisms exist?
3. How do you handle crisis events (e.g., terrorist attacks being livestreamed)?
4. What controls exist on private/encrypted communications?
5. How do you balance privacy with public security needs?

---

## Cross-Cutting: Algorithmic Amplification

All five risk categories can be amplified by algorithmic systems. Consider:

| System | Amplification Risk |
|--------|-------------------|
| **Recommendation algorithms** | May surface harmful content for engagement |
| **Search ranking** | May prioritize sensational over accurate |
| **Notification systems** | May promote addictive usage, harassment awareness |
| **Content moderation AI** | May have systematic biases in enforcement |
| **Ad targeting** | May enable discriminatory or manipulative practices |

### Algorithmic Assessment Questions

1. What engagement metrics drive your recommendation systems?
2. Have you tested for unintended amplification of harmful content?
3. How do your algorithms perform differently across user demographics?
4. What human oversight exists for algorithmic decisions?
5. Can users understand and control their algorithmic experience?

---

## Using This Taxonomy

When conducting your risk assessment:

1. **For each category**, review the sub-risks and examples
2. **Identify which apply** to your specific platform and features
3. **Score each risk** using the methodology in [scoring_methodology.md](scoring_methodology.md)
4. **Document evidence** of current risk level and controls
5. **Propose mitigations** from [mitigation_library.md](mitigation_library.md)

Remember: The goal is not to list every conceivable risk, but to identify the **most significant systemic risks** arising from your service's design, functioning, and use.
