BrightLight Data Analytics Practicals

This repository contains the completed solutions for the BrightLight Data Analytics Coding Practical, which includes 5 main components:

- Practical 1 – SQL Fundamentals (Snowflake Basic SQL Syntax)
- Practical 2 – SQL JOIN Practice (Orders, Products, Customers)
- Practical 3 – Shopping Trends Data Cleaning & Exploration Queries
- Practical exercise – Soccer SQL Questions (Microsoft SQL Server )
- Practical exercise – Retail sales (Google BigQuery)

Each practical is designed to evaluate SQL proficiency, data cleaning, querying ability, and foundational data analytics thinking.

Practical 1: SQL Fundamentals (Snowflake – Basic SQL Syntax)

Dataset: retail_sales_dataset.csv
Table: SALES.RETAIL.RETAIL_SALES_DATASET

This practical covers the foundational SQL concepts needed for data manipulation in Snowflake:

Concepts Tested

- SELECT
- SELECT DISTINCT
- WHERE filtering
- Aggregate functions (COUNT, SUM, AVG, MAX, MIN)
- GROUP BY
- HAVING
- CASE statements

Skills Demonstrated

1. Understanding of fundamental SQL syntax
2.  Ability to filter, group, summarize, and categorize data
3.  Writing clean, readable SQL queries
4.  Using Snowflake-specific best practices, such as table naming

 Practical 2: SQL JOIN Practice (Relational Database Queries)

Datasets:

- orders_large.csv
- products_large.csv
- customers_large.csv

This practical focuses on working with relational data, identifying relationships, and performing JOIN operations correctly.

Concepts Tested

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN
- Use of aliases

Returning only required columns

Skills Demonstrated

1.  Ability to merge datasets using appropriate JOIN types
2.  Handling missing relationships (NULLs)
3.  Producing correctly structured query outputs
4.  Understanding one-to-many and many-to-one relationships
5.  Using FULL OUTER JOIN fallbacks when the DB engine does not support it natively

 Practical 3: Shopping Trends Data Cleaning & Exploration

Dataset: shopping_trends.csv
Table: SHOPPING_DB.PUBLIC.SHOPPING_TRENDS

This practical involves identifying missing values, applying the COALESCE function, using CASE logic, grouping data, and analysing trends.

Concepts Tested

- NULL handling (COALESCE
- Conditional categorisation (CASE)
- Grouping and aggregation
- Data quality checks
- Basic exploratory data analysis in SQL

Skills Demonstrated

1.  Detecting and handling missing values
2.  Creating derived variables (e.g., spender levels, delivery speed categories)
3.  Aggregating by customer, location, season, etc.
4.  Cleaning categorical variables
5.  Highlighting meaningful patterns in shopping behaviour

 Tools Used

- Snowflake (Primary SQL execution)
- CSV dataset uploads
- SQL Worksheet


Practical 4: Soccer Team Analysis (Python Data Transformation & SQL Integration)

Dataset: soccer_team_analysis.csv
Table: SOCCER_TEAM_ANALYSIS

This practical demonstrates the use of Python for data cleaning and transformation before SQL analysis. 
The goal was to explore soccer team performance metrics and player statistics.

Data Transformation Using Python:

- Converted nvarchar numeric columns (e.g., shot_accuracy, goals) to numeric types using pd.to_numeric()
- Handled missing values by filling or removing rows with NaN

Extracted derived columns, such as:

- Contract year from contract_end_year
- Player efficiency ratios (goals per shot)
- Standardised categorical columns like team and position
- Saved the cleaned dataset to a database-friendly format for SQL queries

Concepts Tested:

Data type conversions and validation
- Handling missing and inconsistent data
- Feature engineering (derived metrics for analysis)
- Preparing data for SQL aggregation and visualisation

Skills Demonstrated:

- Using Python pandas for robust data transformation
- Cleaning text and numeric fields for analytics
- Integrating Python-processed datasets into SQL workflows
- Performing exploratory data analysis (EDA) using both Python and SQL
- Writing SQL queries for aggregation, grouping, and correlation analysis

Tools Used

- SQL Server
- Python (pandas) for data transformation
- Jupyter Notebook for Python-based transformations
- CSV dataset uploads
- SQL Worksheet for queries

Practical 5: Retail sales (Google BigQuery)

This repository contains SQL solutions to the BrightLearn BigQuery Practical Exercise, using the Retail Sales Dataset.
All queries were executed and tested in Google BigQuery Sandbox, optimised to ensure compatibility with BigQuery’s SQL syntax.

1. Dataset
Retail Sales Dataset (Google BigQuery Sandbox)

2. Objective of the Practical

The exercise tests foundational SQL skills using real-world retail data.
The focus is on:

- Filtering
- Aggregation
- Conditional statements
- Using CASE logic
- Using WHERE and HAVING
- Grouping and summarising retail performance
- Calculated fields

5. Technologies Used

- Google BigQuery Sandbox
- Standard SQL
- Retail analytics concepts
- Google Cloud Console





