USE bank_loan_db;

-- Monthly Trends By Issued Date

SELECT MONTH(issue_date) AS 'Row',MONTHNAME(issue_date) AS 'Month_Name',
COUNT(id) AS 'Total_Loan_Application',CONCAT(ROUND(SUM(loan_amount)/1000000),"M") AS 'Total_Funded_Amount' ,
CONCAT(ROUND(SUM(total_payment)/1000000),"M") AS 'Total_Received_Amount' FROM bank_loan
GROUP BY MONTH(issue_date),MONTHNAME(issue_date)
ORDER BY MONTH(issue_date) ASC;

-- Regional Analysis By State

SELECT address_state,COUNT(id) AS 'Total_Loan_Application',SUM(loan_amount) AS 'Total_Funded_Amount' ,
SUM(total_payment) AS 'Total_Received_Amount' FROM bank_loan
GROUP BY address_state
ORDER BY address_state ASC;

-- Loan Term Analysis

SELECT Term AS 'Loan_Duration',COUNT(id) AS 'Total_Loan_Application', 
CONCAT(ROUND(SUM(loan_amount)/1000000),"M") AS 'Total_Funded_Amount' ,
CONCAT(ROUND(SUM(total_payment)/1000000),"M") AS 'Total_Received_Amount' FROM bank_loan
GROUP BY Term;

-- Employee Length Analysis

SELECT emp_length AS 'Emp_Length' ,COUNT(id) AS 'Total_Loan_Application',
CONCAT(ROUND(SUM(loan_amount)/1000000),"M") AS 'Total_Funded_Amount' ,
CONCAT(ROUND(SUM(total_payment)/1000000),"M") AS 'Total_Received_Amount' FROM bank_loan
GROUP BY emp_length
ORDER BY CAST(SUBSTRING(emp_length,1,2) AS UNSIGNED) ASC;

-- Loan Purpose Analysis

SELECT purpose AS 'Loan_Purpose',COUNT(id) AS 'Total_Loan_Application',
CONCAT(ROUND(SUM(loan_amount)/1000000,1),"M") AS 'Total_Funded_Amount' ,
CONCAT(ROUND(SUM(total_payment)/1000000,1),"M") AS 'Total_Received_Amount' FROM bank_loan
GROUP BY purpose
ORDER BY purpose ASC;

-- Home Ownership Analysis

SELECT home_ownership AS 'Home_Ownership',COUNT(id) AS 'Total_Loan_Application',CONCAT(ROUND(SUM(loan_amount)/1000),"K") AS 'Total_Funded_Amount' ,
CONCAT(ROUND(SUM(total_payment)/1000),"K") AS 'Total_Received_Amount' FROM bank_loan
GROUP BY home_ownership
ORDER BY home_ownership ASC;

-- Overall Detailed Analysis

SELECT id AS 'Loan_ID', grade AS 'Grade' , sub_grade AS 'Sub_Grade', home_ownership AS 'Home_Ownership', 
issue_date AS 'Loan_Issue',  
purpose AS 'Loan_Purpose', 
int_rate*100 AS 'Int_Rate(%)',installment AS Installment, loan_amount AS 'Funded_Amount',
total_payment AS 'Amount_Collected' FROM Bank_loan;



