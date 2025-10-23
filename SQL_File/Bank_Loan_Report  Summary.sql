CREATE DATABASE bank_loan_db;
USE bank_loan_db;
-- 1. LOAN APPLICATION ANALYSIS:

-- a. Total Application
SELECT COUNT(id) AS 'Total_Loan_Applications' FROM Bank_loan;
-- b. MTD
SELECT CONCAT(ROUND(COUNT(id)/1000,1),'K') AS 'CM_Total_Loan_Applications' FROM Bank_loan
WHERE MONTH(issue_date)=12 AND YEAR(issue_date) = 2021;-- Latest Year is 2021 And Latest Month is Dec 
-- c. MoM
SELECT CONCAT(ROUND((COUNT(id)-LAG(COUNT(id)) OVER())/LAG(COUNT(id)) OVER()*100,1),'%') AS 'MoM_Increase_Percentage' FROM bank_loan
WHERE MONTH(issue_date) IN (11,12) -- 11 is Previous Month and 12 is Current Month
AND YEAR(issue_date) = 2021
GROUP BY MONTH(issue_date);

-- 2. FUND ANALTSIS:

-- a. Total Funded Amount

SELECT CONCAT(ROUND(SUM(loan_amount)/1000000,1),"M") AS 'Total_Funded_Amount' FROM Bank_loan;

-- b. MTD

SELECT CONCAT(ROUND(SUM(loan_amount)/1000000,1),"M") AS 'CM_Total_Funded_Amount' FROM Bank_loan
WHERE MONTH(issue_date)=12 AND YEAR(issue_date) = 2021; -- Latest Year is 2021 and Latest Month is Dec

-- c. MoM

SELECT CONCAT(ROUND((SUM(loan_amount)-LAG(SUM(loan_amount)) OVER())/LAG(SUM(loan_amount)) OVER()*100,1),'%') AS 'MoM_Increase_Percentage' FROM bank_loan
WHERE MONTH(issue_date) IN (11,12) -- 11 is Previous Month and 12 is Current Month
AND YEAR(issue_date)
GROUP BY MONTH(issue_date);

-- 3. AMOUNT RECEIVED ANALTSIS:

-- a. Total Received Amount

SELECT CONCAT(ROUND(SUM(total_payment)/1000000,1),"M") AS 'Total_Received_Amount' FROM Bank_loan;

-- b. MTD

SELECT CONCAT(ROUND(SUM(total_payment)/1000000,1),"M") AS 'CM_Total_Received_Amount' FROM Bank_loan
WHERE MONTH(issue_date)=12 AND YEAR(issue_date) = 2021; -- Latest Year is 2021 and Latest Month is Dec

-- c. MoM

SELECT CONCAT(ROUND((SUM(total_payment)-LAG(SUM(total_payment)) OVER())/LAG(SUM(total_payment)) OVER()*100,1),'%') AS 'MoM_Increase_Percentage' FROM bank_loan
WHERE MONTH(issue_date) IN (11,12) -- 11 is Previous Month and 12 is Current Month
AND YEAR(issue_date)
GROUP BY MONTH(issue_date);

-- 4. INTEREST RATE ANALTSIS:

-- a. Average Interest Rate

SELECT CONCAT(ROUND(AVG(INt_rate)*100,2),'%') AS 'Average_Interest_Rate' FROM Bank_loan;

-- b. MTD

SELECT CONCAT(ROUND(AVG(int_rate)*100,1),'%') AS 'CM_Average_Interest_Rate' FROM Bank_loan
WHERE MONTH(issue_date)=12 AND YEAR(issue_date) = 2021;-- Latest Year is 2021 and Latest Month is Dec

-- c. MoM

SELECT CONCAT(ROUND((AVG(int_rate)-LAG(AVG(int_rate)) OVER())/LAG(AVG(int_rate)) OVER()*100,1),'%') AS 'MoM_Increase_Percentage' FROM bank_loan
WHERE MONTH(issue_date) IN (11,12) -- 11 is Previous Month and 12 is Current Month
AND YEAR(issue_date)
GROUP BY MONTH(issue_date);

-- 5. DEBT-TO-INCOME RATIO (DTI) ANALYSIS: 

-- a. Average Debt-to-Income Ratio

SELECT CONCAT(ROUND(AVG(dti)*100,2),'%') AS 'Average_DTI' FROM Bank_loan;

-- b. MTD

SELECT CONCAT(ROUND(AVG(dti)*100,1),'%') AS 'CM_Average_DTI' FROM Bank_loan
WHERE MONTH(issue_date)=12 AND YEAR(issue_date) = 2021; -- Latest Year is 2021 and Latest Month is Dec

-- c. MoM

SELECT CONCAT(ROUND((AVG(dti)-LAG(AVG(dti)) OVER())/LAG(AVG(dti)) OVER()*100,1),'%') AS 'MoM_Increase_Percentage' FROM bank_loan
WHERE MONTH(issue_date) IN (11,12) -- 11 is Previous Month and 12 is Current Month
AND YEAR(issue_date)
GROUP BY MONTH(issue_date);

-- GOOD LOAN ANALYSIS:

-- a. Good Loan Percentage


WITH Cte_Good AS
(SELECT COUNT(id) FROM bank_loan
WHERE loan_status IN ('Current','Fully Paid'))
SELECT CONCAT(ROUND((SELECT * FROM Cte_Good)/COUNT(*)*100,1),'%') AS 'Good_Loan_ Percentage' FROM bank_loan;

-- b. Good Loan Applications

SELECT COUNT(id) AS 'Good_Loan_Applications'
FROM Bank_loan
WHERE loan_status IN ('Current' , 'Fully Paid');

-- c. Good Loan Funded Amount

SELECT CONCAT(ROUND(SUM(loan_amount)/1000000,1),"M") AS 'Good_Loan_Funded_Amount' FROM Bank_loan
WHERE loan_status IN ('Current' , 'Fully Paid');

-- d. Good Loan Amount Received

SELECT CONCAT(ROUND(SUM(total_payment)/1000000,1),"M") AS 'Good_Loan_Amount_Received' FROM Bank_loan
WHERE loan_status IN ('Current' , 'Fully Paid');

-- BAD LOAN ANALYSIS:

-- a. Bad Loan Percentage

WITH Bad_loan_Calcultion AS
(SELECT COUNT(id) AS Total_Application,
SUM(CASE WHEN loan_status IN ('Charged Off') THEN 1 ELSE 0 END) AS Bad_Application FROM bank_loan)
SELECT CONCAT(ROUND(Bad_Application/Total_Application*100,1),'%')  AS 'Bad_Loan_Percentage' FROM Bad_loan_Calcultion;

-- b. Bad Loan Applications

SELECT COUNT(id) AS 'Bad_Loan_Applications'
FROM Bank_loan
WHERE loan_status ='Charged Off';

-- c. Bad Loan Funded Amount

SELECT CONCAT(ROUND(SUM(loan_amount)/1000000,1),"M") AS 'Bad_Loan_Funded_Amount' FROM Bank_loan
WHERE loan_status ='Charged Off';

-- d. Bad Loan Amount Received

SELECT CONCAT(ROUND(SUM(total_payment)/1000000,1),"M") AS 'Bad_Loan_Amount_Received' FROM Bank_loan
WHERE loan_status ='Charged Off';

-- LOAN STATUS:

SELECT loan_status AS 'Loan_Status',COUNT(id) AS 'Loan_Application',SUM(loan_amount) AS 'Total_Funded_Amount' ,
SUM(total_payment) AS 'Total_Received_Amount',
ROUND(AVG(int_rate)*100,2) AS "Interest_Rate(%)",
ROUND(AVG(dti)*100,2) AS "DTI(%)" FROM bank_loan
GROUP BY loan_status
order by Loan_Application desc;

SELECT loan_status AS 'Loan_Status',SUM(loan_amount) AS 'MTD_Total_Funded_Amount' ,
SUM(total_payment) AS 'MTD_Total_Received_Amount' FROM bank_loan
WHERE MONTH(issue_date)=12 AND YEAR(issue_date) = 2021 -- Latest Year is 2021 and Latest Month is Dec
GROUP BY loan_status;