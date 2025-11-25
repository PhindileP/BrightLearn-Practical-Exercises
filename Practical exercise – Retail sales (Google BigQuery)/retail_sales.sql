-- Exploring dataset
SELECT * FROM `retail-479317.Sales.data` LIMIT 1000;
-- 1. WHERE Clause Q1. Filter all transactions that occurred in the year 2023.
SELECT *
FROM `retail-479317.Sales.data`
WHERE EXTRACT(YEAR FROM DATE) = 2023;

-- 2. Filtering + Conditions Q2. Display all transactions where the Total Amount is more than the average Total Amount of the entire dataset.

SELECT
  *
FROM
  `retail-479317`.Sales.data
WHERE
  `Total Amount` > (
    SELECT
      AVG(`Total Amount`)
    FROM
      `retail-479317`.Sales.data
  );

-- 3. Aggregate Functions Q3. Calculate the total revenue (sum of Total Amount).Expected output: Total_Revenue
SELECT SUM(`Total Amount`) AS Total_Revenue
FROM `retail-479317.Sales.data`;

-- 4. DISTINCT Q4. Display all distinct Product Categories in the dataset.
SELECT DISTINCT `Product Category`
FROM `retail-479317.Sales.data`;

-- 5. GROUP BY Q5. For each Product Category, calculate the total quantity sold.
SELECT 
  `Product Category`,
  SUM(Quantity) AS Total_Quantity
FROM `retail-479317.Sales.data`
GROUP BY `Product Category`;

-- 6. CASE Statement Q6. Create a column called Age_Group that classifies customers as ‘Youth’ (<30), ‘Adult’(30–59), and ‘Senior’ (60+).
SELECT
  `Customer ID`,
  Age,
  CASE
    WHEN Age < 30 THEN 'Youth'
    WHEN Age BETWEEN 30 AND 59 THEN 'Adult'
    ELSE 'Senior'
  END AS Age_Group
FROM `retail-479317.Sales.data`;

-- 7. Conditional Aggregation Q7. For each Gender, count how many high-value transactions occurred (where Total Amount > 500).
SELECT
  Gender,
  COUNTIF(`Total Amount` > 500) AS High_Value_Transactions
FROM `retail-479317.Sales.data`
GROUP BY Gender;

-- 8. HAVING Clause Q8. For each Product Category, show only those categories where the total revenueexceeds 5,000
SELECT
  `Product Category`,
  SUM(`Total Amount`) AS Total_Revenue
FROM `retail-479317.Sales.data`
GROUP BY `Product Category`
HAVING SUM(`Total Amount`) > 5000;

-- 9. Calculated Fields Q9. Display a new column called Unit_Cost_Category that labels a transaction as:
SELECT
  `Transaction ID`,
  `Price per Unit`,
  CASE
    WHEN `Price per Unit` < 50 THEN 'Cheap'
    WHEN `Price per Unit` BETWEEN 50 AND 200 THEN 'Moderate'
    ELSE 'Expensive'
  END AS Unit_Cost_Category
FROM `retail-479317.Sales.data`;

-- 10. Combining WHERE + CASE Q10. Display all transactions from customers 
SELECT
  `Customer ID`,
  Age,
  `Total Amount`,
  CASE
    WHEN `Total Amount` > 1000 THEN 'High'
    ELSE 'Low'
  END AS Spending_Level
FROM `retail-479317.Sales.data`
WHERE Age >= 40;

