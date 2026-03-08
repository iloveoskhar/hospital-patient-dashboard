Hospital Patient Analysis Dashboard

## Project Overview

This project analyses hospital patient data using Excel,  SQL and Power BI to understand patient distribution, treatment cost, length of stay, readmissions, and outcomes of treatments.

The goal was to build an interactive healthcare dashboard similar to real NHS reports.

## Dataset

The dataset contains hospital patient records including:

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

The data was first cleaned in Excel, then prepared in SQL, and finally visualized in Power BI.

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

## SQL Work

SQL Server was used to validate and prepare the cleaned data.

Tasks performed:

- Insert cleaned data into table
- Checked totals and averages
- Verified cost values
- Tested queries before visualization
