# 🏦 Bank Loan Report Analysis

## 📊 Project Overview
The **Bank Loan Report Analysis** project delivers a comprehensive analysis of bank loan data to understand lending performance, borrower behavior, and financial metrics.  

Using **MySQL** for data processing and **Power BI** for visualization, this project provides **interactive dashboards and KPIs** to make data-driven decisions and monitor the health of a loan portfolio.  

**Dataset:** CSV format containing loan applications, funded amounts, repayments, borrower profiles, and loan status.  

---

## 🎯 Objective
- Analyze loan applications, funded amounts, and repayments over time.  
- Evaluate borrower financial health using **Debt-to-Income Ratio (DTI)** and **Average Interest Rates**.  
- Identify trends by **loan purpose, term, region, and borrower profile**.  
- Build **interactive dashboards** for decision-making and portfolio monitoring.  

---

## 🛠️ Tools & Technologies
| Tool / Technology | Purpose |
|-----------------|---------|
| **MySQL**       | Database creation, querying, aggregation, and transformations |
| **Power BI**    | Data visualization, KPI monitoring, and dashboard creation |
| **CSV**         | Dataset format for storing loan and borrower data |

---

## 🔄 Project Workflow
### 1️⃣ MySQL
- Create database and tables  
- Data cleaning & preparation  
- Perform queries with:
  - `SELECT`, `GROUP BY`, `ORDER BY`, `COUNT`, `DISTINCT`  
  - Date & Time Functions: `DATENAME()`, `MONTH()`, `QUARTER()`, `DAY()`, `HOUR()`  
  - Data formatting: `CAST()`, `DECIMAL()`  
  - **CTE** & **Partition** for advanced KPIs  

### 2️⃣ Power BI
- Connect to MySQL and import clean data  
- Data modeling & relationship management  
- Create **Date Tables** for Time Intelligence  
- Build **KPIs and Card visuals** for metrics:  
  - Total Loan Applications  
  - Total Funded Amount  
  - Total Amount Received  
  - Average Interest Rate  
  - Average Debt-to-Income Ratio (DTI)  
- Charts used:
  - Line, Donut, Bar, Tree Map, Filled Map  
- Formatting, navigation, and interactive dashboard creation  

---

## 📊 Dashboards Explanation

### 1️⃣ Summary Dashboard
**Purpose:** Monitor key metrics and loan health.  

**KPIs & Metrics:**
- Total Loan Applications (MTD & MoM)  
- Total Funded Amount (MTD & MoM)  
- Total Amount Received (MTD & MoM)  
- Average Interest Rate & DTI  

**Good vs Bad Loans Metrics:**
- Application %, Funded Amount, Total Received Amount  

**Grid View:**  
Displays loan performance by status, enabling data-driven decisions.  

**Preview:** 

![Summary Dashboard](Power%20BI/images/Bank_Loan_Report_Summary.png)

---

### 2️⃣ Overview Dashboard
**Purpose:** Analyze trends, distributions, and regional patterns.  

Overview Dashboard contains **6 charts** that dynamically update based on the **Select Measure** slicer.  
Below are static screenshots showing each chart for each measure selection.

| Chart Type | Analysis Purpose | Total Applications | Total Funded Amount | Total Amount Received |
|------------|-----------------|------------------|-------------------|--------------------|
| Line Chart | Monthly Trends by Issue Date | ![Line Chart - Total Applications](Power%20BI/images/Total_Loan_Application_By_Month.png) | ![Line Chart - Total Funded](Power%20BI/images/Total_Funded_Amount_By_Month.png) | ![Line Chart - Total Received](Power%20BI/images/Total_Amount_Recieved_By_Month.png) |
| Filled Map | Regional Analysis by State | ![Filled Map - Total Applications](Power%20BI/images/Total_Loan_Application_By_State.png) | ![Filled Map - Total Funded](Power%20BI/images/Total_Funded_Amount_By_State.png) | ![Filled Map - Total Received](Power%20BI/images/Total_Amount_Recieved_By_State.png) |
| Donut Chart | Loan Term Distribution | ![Donut - Total Applications](Power%20BI/images/Total_Loan_Application_By_Term.png) | ![Donut - Total Funded](Power%20BI/images/Total_Funded_Amount_By_Term.png) | ![Donut - Total Received](Power%20BI/images/Total_Amount_Recieved_By_Term.png) |
| Bar Chart | Employee Length Analysis | ![Bar - Total Applications](Power%20BI/images/Total_Loan_Application_By_Emp_Length.png) | ![Bar - Total Funded](Power%20BI/images/Total_Funded_Amount_By_Emp_Length.png) | ![Bar - Total Received](Power%20BI/images/Total_Amount_Recieved_By_Emp_Length.png) |
| Bar Chart | Loan Purpose Analysis | ![Bar - Total Applications](Power%20BI/images/Total_Loan_Application_By_Purpose.png) | ![Bar - Total Funded](Power%20BI/images/Total_Funded_Amount_By_Purpose.png) | ![Bar - Total Received](Power%20BI/images/Total_Amount_Recieved_By_Purpose.png) |
| Tree Map | Home Ownership Analysis | ![Tree Map - Total Applications](Power%20BI/images/Total_Loan_Application_By_Ownership.png) | ![Tree Map - Total Funded](Power%20BI/images/Total_Funded_Amount_By_Ownership.png) | ![Tree Map - Total Received](Power%20BI/images/Total_Amount_Recieved_By_Ownership.png) |


**Metrics Displayed:** Total Loan Applications, Total Funded Amount, Total Amount Received  

**Preview:** 


**1️⃣ Total Loan Applications selected**

![Overview Total Applications](Power%20BI/images/Bank_Loan_Report_Overview_For_Application.png)

**2️⃣ Total Funded Amount selected**

![Overview Total Funded](Power%20BI/images/Bank_Loan_Report_Overview_For_Fund.png)
**3️⃣ Total Amount Received selected**

![Overview Total Received](Power%20BI/images/Bank_Loan_Report_Overview_For_Amount.png)

---

### 3️⃣ Details Dashboard
**Purpose:** Granular view of all loan data for detailed insights.  

**Features:**  
- Borrower profiles, loan performance, and repayment data  
- Consolidated metrics for easy access to critical information  

**Preview:**  
![Details Dashboard](Power%20BI/images/Bank_Loan_Report_Details.png)

---

## 💡 Functionalities / Skills Learned
### SQL
- Database creation & table management  
- Data selection, aggregation, and formatting  
- Time-based calculations: Month, Day, Hour, Quarter  
- Advanced queries using **CTE** and **Partition functions**  

### Power BI
- Data connection & cleaning  
- Data modeling & relationships  
- KPI creation & interactive visualizations  
- DAX functions: `CALCULATE`, `SUM`, `SUMX`, `FILTER`  
- Time intelligence & trend analysis  
- Dashboard formatting & navigation  

---

## 📈 Key Insights
- **Seasonal Trends:** Loan applications peak during certain months.  
- **Regional Performance:** Urban regions show higher funded amounts.  
- **Repayment Patterns:** Good loans show consistent repayments; bad loans correlate with high DTI.  
- **Interest Rate Insights:** Month-over-month variations influenced by borrower profiles.  
- **Loan Purpose:** Majority of loans are for debt consolidation and home improvement.  

---

## 🧠 Learnings
- Hands-on experience with **MySQL** and complex queries  
- Advanced **Power BI** dashboard creation and visualization skills  
- Understanding financial metrics like DTI, interest rates, and repayment behavior  
- Insights into loan portfolio monitoring and decision-making  

---

## 📂 File Structure

- **Bank-Loan-Report-Analysis/**
  - **Data/**
  - financial_loan.csv
  - **Power BI/**
    - **images/**
      - Bank_Loan_Report_Details.png
      - Bank_Loan_Report_Overview_For_Amount.png
      - Bank_Loan_Report_Overview_For_Application.png
      - Bank_Loan_Report_Overview_For_Fund.png
      - Bank_Loan_Report_Summary.png
      - Calendar_And_Select_Measure.png
      - DAX_Measure.png
      - DAX_Measures.png
      - Data.png
      - Total_Amount_Recieved_By_Emp_Length.png
      - Total_Amount_Recieved_By_Month.png
      - Total_Amount_Recieved_By_Ownership.png
      - Total_Amount_Recieved_By_Purpose.png
      - Total_Amount_Recieved_By_State.png
      - Total_Amount_Recieved_By_Term.png
      - Total_Funded_Amount_By_Emp_Length.png
      - Total_Funded_Amount_By_Month.png
      - Total_Funded_Amount_By_Ownership.png
      - Total_Funded_Amount_By_Purpose.png
      - Total_Funded_Amount_By_State.png
      - Total_Funded_Amount_By_Term.png
      - Total_Loan_Application_By_Emp_Length.png
      - Total_Loan_Application_By_Month.png
      - Total_Loan_Application_By_Ownership.png
      - Total_Loan_Application_By_Purpose.png
      - Total_Loan_Application_By_State.png
      - Total_Loan_Application_By_Term.png
    - Bank_Loan.pbix
  - **SQL_File/**
    - Bank_Loan_Report Overviews.sql
    - Bank_Loan_Report Summary.sql
    - Data_clean.sql
    - MY SQL QUERIES DOCUMENT.dox
   
## 🧑‍💻 Author
**Mohammad Adnan**  
*Data Analyst | SQL | Power BI | Excel | Python*  

📧 [24khanadnan93@gmail.com ](https://mail.google.com/mail/u/1/?ogbl#inbox) 
🔗 [LinkedIn Profile](https://www.linkedin.com/in/mohammad-adnan-59062a365/)



## ⚙️ How to Use

The Bank Loan Report Analysis project can be explored in **two main steps**:

### 1️⃣ Prepare Data in MySQL
1. Create a database and import the CSV dataset.  
2. Run the SQL scripts in `SQL_File/` to clean and calculate key metrics:  
   - `Data_clean.sql` → clean data  
   - `Bank_Loan_Report Summary.sql` → summary KPIs  
   - `Bank_Loan_Report Overviews.sql` → overview metrics  

### 2️⃣ Explore Dashboards in Power BI
1. Open `Bank_Loan.pbix` in Power BI Desktop.  
2. Connect to your MySQL database and load the cleaned tables.  
3. Navigate the dashboards:
   - **Summary Dashboard:** High-level KPIs and Good vs Bad Loans.  
   - **Overview Dashboard:** Trend and regional charts; use the **Select Measure** slicer to switch between Total Applications, Total Funded Amount, and Total Amount Received.  
   - **Details Dashboard:** Granular loan and borrower analysis; use filters to drill down.  

4. **Use Slicers to Filter Data Dynamically:**  
   - **Good vs Bad Loan** – view only performing or underperforming loans.  
   - **Grade** – analyze loans by borrower credit grade.  
   - **State** – filter loans for a specific region.

## 📋 Project Summary

The **Bank Loan Report Analysis** project provides a comprehensive view of a bank's lending portfolio using **MySQL** for data processing and **Power BI** for visualization.  

It helps analyze loan applications, funded amounts, repayments, and borrower profiles to support **data-driven decision-making**.  

**Key Highlights:**
- Monitor **Total Loan Applications, Funded Amounts, and Amounts Received** with Month-to-Date (MTD) and Month-over-Month (MoM) trends.  
- Evaluate **borrower financial health** using Average Debt-to-Income (DTI) ratio and Average Interest Rate.  
- Analyze **Good vs Bad Loans** to identify performance and risk areas.  
- Interactive **dashboards** with filters and slicers for Good vs Bad Loan, Grade, and State.  
- Overview dashboard with **6 dynamic charts** (Line, Bar, Donut, Filled Map, Tree Map) to visualize trends, distributions, and regional patterns.  
- Details dashboard for granular analysis of loans and borrower data.  

This project demonstrates **SQL data preparation, data cleaning, DAX measures, Power BI modeling, and interactive dashboard creation**, making it suitable for a **Data Analyst portfolio**.




