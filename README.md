Hospital Patient Analysis Dashboard
--------------------------------------------------
## Project Overview

This project analyses hospital patient data using Excel,  SQL and Power BI to understand patient distribution, treatment cost, length of stay, readmissions, and outcomes of treatments.

The goal was to build an interactive healthcare dashboard similar to real NHS reports.
--------------------------------------------------
## Dataset

The dataset contains hospital patient records, including:

- Patient_ID
- Age
- Gender
- Condition
- Procedure_Name
- Cost
- Length_of_Stay
- Outcome
- Readmission
- Satisfaction

The data was first cleaned in Excel, then prepared in SQL, and finally visualised in Power BI.
--------------------------------------------------
## Excel Data Cleaning

Excel was used for initial data cleaning and preparation.

Tasks performed:

- Removed blank rows
- Checked for missing values
- Corrected column formats
- Created new columns

New columns created:

- Age_Group (Young, Adult, Middle Age, Senior)
- Cost_Category (Low, Medium, High)

This step ensured the data was ready for analysis.
--------------------------------------------------
## SQL Work

SQL Server was used to validate and prepare the cleaned data.

Tasks performed:

- Insert cleaned data into the table
- Checked totals and averages
- Verified cost values
- Tested queries before visualisation

All queries used in this project are included in:

```
sql queries.sql
```
--------------------------------------------------
## Data Analysis Questions

SQL was used to answer important business questions:
- How many patients are in the dataset?
- What is the average treatment cost?
- Which condition has the highest cost?
- What is the average length of stay?
- How many readmissions occurred?
- How are the patients distributed by age group?
- How many patients per cost category?

These queries were used to verify the values shown in Power BI.
--------------------------------------------------
## Power BI Dashboard

An interactive dashboard was built in Power BI, including:

- KPI Cards
  - Total Patients
  - Average Cost
  - Average Stay
  - Readmissions

- Charts
  - Average Cost by Condition
  - Average Stay by Condition
  - Outcome Distribution
  - Patients by Age Group

- Interactive slicers
  - Condition
  - Gender
  - Outcome

Dashboard styled using the NHS colour theme.


--------------------------------------------------

## Insights

Key findings from the analysis:

- Cancer has the highest average treatment cost
- Middle-aged patients are the largest group
- Most patients recovered after treatment
- Readmissions are lower than the total number of patients
- Length of stay varies depending on condition


--------------------------------------------------

## Tools Used

- Excel
- SQL Server
- Power BI
- DAX
- GitHub


--------------------------------------------------

## Files in Repository

- Hospital_Patient_Dashboard.pbix
- sqlqueries.sql
- hospital data cleaned(in).csv
- README.md


--------------------------------------------------
