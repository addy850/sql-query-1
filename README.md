# sql-query-1
# Previous Year Salary Analysis

## Project Overview
This project demonstrates how to calculate the **previous year salary** for employees using SQL window functions. It handles multiple years of salary data per employee and generates a column showing the salary from the previous year for analysis purposes.

The project uses the `LAG()` and `LEAD()` functions to retrieve the previous year’s salary in a clean, easy-to-read format.

---

## Dataset
Example employee salary data:

| name   | year | salary_this_year |
|--------|------|-----------------|
| Aditya | 2024 | 2134            |
| Aditya | 2023 | 1234            |
| Aditya | 2022 | 12345           |
| Ani    | 2024 | 90000           |

---

## SQL Concepts Used
- **Window Functions**: `LAG()` and `LEAD()`  
- **PARTITION BY**: to separate calculations for each employee  
- **ORDER BY**: to ensure chronological calculation of previous year salary  

---

## Sample Query

```sql
SELECT *,
       LEAD(salary_this_year) OVER (PARTITION BY name ORDER BY year DESC) AS prev_year_salary
FROM employees;
