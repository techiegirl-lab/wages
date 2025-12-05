create database wages;
SELECT * FROM wages.wage_predict;

-- List the top 10 highest paid employees.
SELECT 
    *
FROM
    wages.wage_predict
ORDER BY monthly_salary DESC
LIMIT 10;

-- How many employees are male vs female
SELECT 
    sex, COUNT(*) AS Gender
FROM
    wages.wage_predict
GROUP BY sex;

-- What is the average salary in each industry?
SELECT 
    industry, AVG(monthly_salary) AS Avg_Salary
FROM
    wages.wage_predict
GROUP BY industry;

-- List all unique occupations present in the dataset.
SELECT DISTINCT
    occupation
FROM
    wages.wage_predict;
  
-- Find the number of employees with more than 15 years of qualification
SELECT 
    yrs_qual
FROM
    wages.wage_predict
WHERE
    yrs_qual > 15;
    
-- List all records where qualifications are required but experience is not
SELECT 
    *
FROM
    wages.wage_predict
WHERE
    qual_needed = 1
        AND experience_needed = 0;
    
-- Retrieve the first 20 records from the dataset.
SELECT 
    *
FROM
    wages.wage_predict
LIMIT 20;

-- Find the minimum and maximum monthly salary.
SELECT 
    MAX(monthly_salary) AS Max_Salary,
    MIN(monthly_salary) AS Min_Salary
FROM
    wages.wage_predict;
    




