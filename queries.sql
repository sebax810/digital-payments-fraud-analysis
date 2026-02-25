--Total trasactions
SELECT 
COUNT (*) AS total_transactions
 FROM `portfolio-488417.Cards_Fraud_Analysis.Crads_details` 


--Total Transactions Value
SELECT 
ROUND(SUM(amount), 2) AS total_value
 FROM `portfolio-488417.Cards_Fraud_Analysis.Crads_details` 

--Fraud Rate (% of transactions)
SELECT 
 ROUND(COUNTIF(class=1)*100.0 / COUNT(*), 2) AS fraud_percentage
 FROM `portfolio-488417.Cards_Fraud_Analysis.Crads_details`

 --Fraud Value Exposure (% of money lost)
SELECT
ROUND(SUM(CASE WHEN class= 1 THEN amount ELSE 0 END)*100.0 / SUM(amount),2) AS fraud_value_percentage
FROM `portfolio-488417.Cards_Fraud_Analysis.Crads_details`

--Average Transaction Value (Fraud vs Normal)
SELECT class,
ROUND(AVG(amount), 2) AS avg_transaction_value
FROM `portfolio-488417.Cards_Fraud_Analysis.Crads_details`
GROUP BY class

--Time-of-Day Fraud Pattern Analysis
SELECT 
FLOOR(time / 3600) AS hour,
COUNT(*) AS transactions,
COUNTIF(class = 1) AS fraud_count
FROM `portfolio-488417.Cards_Fraud_Analysis.Crads_details`
GROUP BY hour
ORDER BY hour
