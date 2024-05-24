SELECT 
    Quarter,
    SUM(Immigration) AS Total_Immigration,
    SUM(Job_Vacancies) AS Total_Job_Vacancies,
    SUM(Payroll_Employees) AS Total_Payroll_Employees,
    AVG(Avg_Offered_Hourly_Wage) AS Avg_Offered_Hourly_Wage
FROM 
    Canada_Data
GROUP BY 
    Quarter;
SELECT 
    SUBSTRING(Quarter, 1, 4) AS Year,
    UPPER(SUBSTRING(Quarter, 6)) AS Quarter
FROM 
    Canada_Data;
SELECT 
    DATEPART(YEAR, Quarter) AS Year,
    DATEPART(QUARTER, Quarter) AS Quarter
FROM 
    Canada_Data;
SELECT 
    Quarter,
    AVG(Avg_Offered_Hourly_Wage) AS Avg_Offered_Hourly_Wage,
    AVG(Avg_Offered_Hourly_Wage) * AVG(Avg_Offered_Hourly_Wage) AS Square_Avg_Offered_Hourly_Wage
FROM 
    Canada_Data
GROUP BY 
    Quarter;
	SELECT 
    DATEPART(YEAR, Quarter) AS Year,
    COUNT(DISTINCT Quarter) AS Quarters_Included,
    SUM(Immigration) AS Total_Immigration,
    AVG(Job_Vacancies) AS Avg_Job_Vacancies
FROM 
    Canada_Data
GROUP BY 
    DATEPART(YEAR, Quarter);

