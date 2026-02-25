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

• The dataset contains 10,000 transactions with a total processed value of £2,560,642.79.
• Fraud accounts for 1.91% of total transactions.
• Fraud represents 1.71% of total transaction value.
• The average fraud transaction (£229.11) is slightly lower than the average normal transaction (£256.59).
• Fraud activity peaks at 19:00

## 💡 Business Recommendations

• Maintain monitoring systems even for lower-value transactions, as fraud is not limited to high-value transfers.
• Implement automated fraud detection rules based on behavioural patterns rather than transaction size alone.
• Monitor fraud rate trends over time to detect sudden spikes in exposure.
•Conduct further segmentation analysis (e.g., by user or time of day) to identify concentrated risk patterns.
•Increase fraud monitoring intensity during peak evening hours (18:00-21:00)


---

## 🛠 Tools Used

- Google BigQuery (SQL)
- GitHub
