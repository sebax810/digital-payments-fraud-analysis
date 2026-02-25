# digital-payments-fraud-analysis
## 📖 Project Overview

This project analyses digital payment transactions to evaluate fraud exposure, transaction performance, and user behaviour.

The objective is to simulate a real-world fintech scenario where management wants to understand:

- Total transaction volume
- Revenue exposure
- Fraud rate
- High-risk patterns
- User activity distribution

The analysis was performed using Google BigQuery (SQL).

---

## 🗂 Dataset Description

The dataset contains 10,000 simulated payment transactions with the following fields:

- transaction_id – Unique transaction identifier  
- user_id – Customer identifier  
- time – Time of transaction (seconds within a 24-hour period)  
- amount – Transaction value (£)  
- class – Fraud flag (0 = normal, 1 = fraud)  

---

## 🧹 Data Cleaning & Preparation

The following validation checks were performed:
- Verified no missing values in key columns  
- Confirmed fraud flag contains only binary values (0 and 1)  
- Checked transaction amounts for unrealistic or negative values  
- Converted time (seconds) into hourly buckets for time-based analysis  

---

## 📊 Key Business Questions

1. What is the total number of transactions?
2. What is the total transaction value?
3. What is the fraud rate?
4. What percentage of transaction value is fraudulent?
5. At what time of day does fraud occur most frequently?
6. Are fraud transactions higher value than normal transactions?

---

## 📈 Key Insights

(To be filled after SQL analysis)

---

## 💡 Business Recommendations

(To be filled after analysis)

---

## 🛠 Tools Used

- Google BigQuery (SQL)
- GitHub
