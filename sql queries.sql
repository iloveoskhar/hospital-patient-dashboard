/* =====================================================
   Hospital Patient Dashboard - SQL Queries
   Author: Oscar Onavwie
   Description: SQL queries used for data preparation
   and analysis before building Power BI dashboard
===================================================== */


-----------------------------------------------------
-- 1. Insert cleaned data into main table
-----------------------------------------------------

INSERT INTO hospital_data (
    Patient_ID,
    Age,
    Gender,
    Condition,
    Procedure_Name,
    Cost,
    Length_of_Stay,
    Readmission,
    Outcome,
    Satisfaction
)
SELECT 
    Patient_ID,
    Age,
    Gender,
    Condition,
    [Procedure],
    Cost,
    Length_of_Stay,
    Readmission,
    Outcome,
    Satisfaction
FROM hospital_data_raw;


-----------------------------------------------------
-- 2. Check data
-----------------------------------------------------

SELECT TOP 10 Cost, Cost_Category 
FROM hospital_data;


-----------------------------------------------------
-- 3. Create Age Group column values
-----------------------------------------------------

UPDATE hospital_data
SET Age_Group = 
CASE 
    WHEN Age < 30 THEN 'Young'
    WHEN Age < 50 THEN 'Adult'
    WHEN Age < 70 THEN 'Middle Age'
    ELSE 'Senior'
END;


-----------------------------------------------------
-- 4. Create Cost Category column
-----------------------------------------------------

UPDATE hospital_data
SET Cost_Category = 
CASE 
    WHEN Cost < 5000 THEN 'Low'
    WHEN Cost < 15000 THEN 'Medium'
    ELSE 'High'
END;


-----------------------------------------------------
-- 5. Total patients
-----------------------------------------------------

SELECT COUNT(*) AS Total_Patients 
FROM hospital_data;


-----------------------------------------------------
-- 6. Average cost
-----------------------------------------------------

SELECT AVG(Cost) AS Avg_Cost 
FROM hospital_data;


-----------------------------------------------------
-- 7. Patients per condition
-----------------------------------------------------

SELECT Condition, COUNT(*) AS Total_Patients
FROM hospital_data
GROUP BY Condition
ORDER BY Total_Patients DESC;


-----------------------------------------------------
-- 8. Average cost per condition
-----------------------------------------------------

SELECT Condition, AVG(Cost) AS Avg_Cost
FROM hospital_data
GROUP BY Condition
ORDER BY Avg_Cost DESC;


-----------------------------------------------------
-- 9. Average length of stay
-----------------------------------------------------

SELECT AVG(Length_of_Stay) AS Avg_Length_of_Stay 
FROM hospital_data;


-----------------------------------------------------
-- 10. Average stay per condition
-----------------------------------------------------

SELECT Condition, AVG(Length_of_Stay) AS Avg_Stay
FROM hospital_data
GROUP BY Condition
ORDER BY Avg_Stay DESC;


-----------------------------------------------------
-- 11. Readmissions count
-----------------------------------------------------

SELECT Readmission, COUNT(*) AS Total
FROM hospital_data
GROUP BY Readmission;


-----------------------------------------------------
-- 12. Outcome distribution
-----------------------------------------------------

SELECT Outcome, COUNT(*) AS Total
FROM hospital_data
GROUP BY Outcome;


-----------------------------------------------------
-- 13. Cost category distribution
-----------------------------------------------------

SELECT Cost_Category, COUNT(*) AS Total
FROM hospital_data
GROUP BY Cost_Category;


-----------------------------------------------------
-- 14. Age group distribution
-----------------------------------------------------

SELECT Age_Group, COUNT(*) AS Total
FROM hospital_data
GROUP BY Age_Group;