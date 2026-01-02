# Lexicon Development Guide

This guide explains how to develop and maintain lexicons for communications surveillance.

---

## What Is a Lexicon?

A lexicon is a set of words, phrases, and patterns that surveillance systems use to flag potentially concerning communications for human review. Effective lexicons:

- **Capture** genuine concerns
- **Minimize** false positives
- **Adapt** to changing language and risks
- **Balance** coverage with practicality

---

## Lexicon Categories

### 1. Insider Trading / MNPI

**High-Value Phrases:**
```
"keep this between us"
"don't tell anyone"
"haven't announced yet"
"before the market"
"material information"
"inside track"
"quiet period"
"blackout window"
```

**Contextual Keywords (require analysis):**
```
"announcement"
"deal"
"merger"
"acquisition"
"earnings"
"numbers"
"confidential"
```

### 2. Market Manipulation

**High-Value Phrases:**
```
"move the market"
"squeeze the shorts"
"corner the market"
"pump it up"
"load up before"
"coordinated buying"
```

**Trading-Specific:**
```
"layering"
"spoofing"
"wash trades"
"marking the close"
```

### 3. Front-Running

**Phrases:**
```
"trade ahead"
"before the order"
"customer flow"
"big order coming"
"institutional buyer"
"get in before"
```

### 4. Conflicts of Interest

**Phrases:**
```
"personal account"
"my broker"
"PA trade"
"outside investment"
"side deal"
"family owns"
```

### 5. Gifts and Entertainment

**Phrases:**
```
"tickets to"
"dinner on me"
"golf outing"
"trip to"
"gift for"
"hospitality"
"expensive gift"
```

### 6. Off-Channel Communications

**Indicators:**
```
"text me at"
"personal email"
"WhatsApp"
"Signal"
"call my cell"
"let's take this offline"
"not on work email"
```

### 7. Harassment/Discrimination

**Note:** Handle with extreme sensitivity

**Categories:**
- Slurs and derogatory terms (not listed here)
- Hostile language patterns
- Threat indicators
- Quid pro quo phrases

---

## Lexicon Development Best Practices

### 1. Start with Known Bad Actors
Review past incidents to identify actual language used:
- Enforcement actions (SEC, FINRA public orders)
- Internal investigations
- Industry case studies

### 2. Minimize False Positives

**Bad Lexicon Entry:**
```
"deal" (triggers on every sales discussion)
```

**Better Lexicon Entry:**
```
"deal" + "not public" (more specific context)
"deal closing" + "don't tell"
```

### 3. Use Proximity Matching
Flag when keywords appear near each other:
```
"announcement" WITHIN 5 WORDS OF "keep quiet"
```

### 4. Consider Context Negation
Reduce false positives by excluding context:
```
"confidential" BUT NOT "confidential footer"
"inside information" BUT NOT "inside information policy"
```

### 5. Regular Review and Tuning

| Activity | Frequency | Owner |
|----------|-----------|-------|
| False positive analysis | Weekly | Surveillance team |
| New term additions | Monthly | Compliance |
| Full lexicon review | Quarterly | Compliance + Legal |
| Regulatory update incorporation | As needed | Compliance |

---

## Sample Lexicon Scoring Matrix

| Phrase/Pattern | Confidence | Action |
|----------------|------------|--------|
| "insider information" + "trade" | High | Priority review |
| "keep this between us" | High | Priority review |
| "announcement" (alone) | Low | Random sample only |
| "confidential" (alone) | Low | Context check |
| "don't tell" + "deal" | Medium | Standard review |
| Personal email mention | High | Standard review |

---

## Testing New Lexicon Entries

Before deploying new lexicon entries:

1. **Backtest** - Run against historical communications
2. **Volume estimate** - How many flags will this generate?
3. **False positive sample** - Review sample of matches
4. **Tune** - Adjust based on findings
5. **Document** - Record rationale for addition

---

[← Back to Exercise Overview](README.md)
