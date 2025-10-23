SELECT * FROM Bank_loan;
DESCRIBE Bank_loan; 
UPDATE bank_loan
SET issue_date = STR_TO_DATE(issue_date,'%d-%m-%Y');
ALTER TABLE bank_loan MODIFY COLUMN issue_date DATE;
UPDATE bank_loan
SET last_credit_pull_date = STR_TO_DATE(last_credit_pull_date,'%d-%m-%Y');
ALTER TABLE bank_loan MODIFY COLUMN last_credit_pull_date DATE;
UPDATE bank_loan
SET last_payment_date = STR_TO_DATE(last_payment_date,'%d-%m-%Y');
ALTER TABLE bank_loan MODIFY COLUMN last_payment_date DATE;
UPDATE bank_loan
SET next_payment_date = STR_TO_DATE(next_payment_date,'%d-%m-%Y');
ALTER TABLE bank_loan MODIFY COLUMN next_payment_date DATE;
