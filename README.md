# Activation Funnel Diagnostics 

This project focuses on analyzing a simulated **user activation funnel**, measuring conversion rates across key onboarding steps — similar to flows used in real fintech onboarding systems.

The goal is simple:  
**identify where users drop off and what steps create the most friction.**

---

## 📊 Funnel Steps

| Step | Description |
|------|-------------|
| s1 | Signup completed |
| s2 | Email verified |
| s3 | KYC submitted |
| s4 | KYC approved |
| s5 | Payment method linked |
| s6 | First payment completed |

---

## 🧮 SQL Code Used in This Project

See: `activation_funnel.sql`

---

## 📈 Results (Conversion Rates)

| Funnel Step | Rate |
|-------------|------|
| Signup | **1.0** |
| Email Verification | **0.8** |
| KYC Submission | **0.7** |
| KYC Approval | **0.6** |
| Payment Method Link | **0.5** |
| Activation | **0.3** |

---

## 🧠 Insights

### Analyst Perspective
- Conversion declines at every major compliance step — normal for fintech.
- KYC approval and payment linking represent the steepest drop-offs.
- Final activation is just **30%**, indicating significant friction before first successful payment.
- Data suggests opportunities for improving both UX and backend reliability.

### Product Manager Perspective
- **KYC Optimization:** allow progressive KYC, simplify document upload, auto-read OCR.
- **Payment Link Improvements:** surface trusted payment methods first, reduce required fields.
- **Activation Nudges:** personalized prompts, incentives, or retry logic.
- **Cross-functional alignment:** Compliance, Risk, and Payments must co-own funnel KPIs.
- Introduce **A/B tests**, experiment with reducing friction, measure uplift.

---

## 🛠 Tools Used
- SQLite  
- SQL window functions  
- Funnel analytics methodology  

---

## ✨ Part of the 30-Day Applied Business Strategy Challenge

P.S.: I am a strategic problem solver with experience in analytics and program management. If my work aligns with the needs of your team I would welcome a conversation. ✨

