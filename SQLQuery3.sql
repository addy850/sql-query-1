create table empolyees(
name nvarchar(100),
department nvarchar(100),
year_ int,
salary_this_year int,
);



---------------query for making a table named 'empolyees'-------------------------------




insert into empolyees ( name , year_ ,salary_this_year  , department)
values
('aditya' , 2024 , 2000 , 'IT'),
('aditya' , 2023 , 200000 , 'IT'),
('aditya' , 2022 , 160000 , 'IT'),
('Vinayak' , 2024 , 20000 , 'IT'),
('Vinayak' , 2023 , 20000 , 'IT'),
('Vinayak' , 2022 , 20000 , 'IT'),
('aryan' , 2024 , 200000 , 'IT'),
('aryan' , 2023 , 2000 , 'IT'),
('aryan' , 2022 , 2000 , 'IT'),
('addy' , 2024 , 120000 , 'IT'),
('addy' , 2023 , 12000000 , 'IT'),
('addy' , 2022 , 12000000 , 'IT'),
('anant' , 2024 , 130000 , 'IT'),
('anant' , 2023 , 130000 , 'IT'),
('anant' , 2022 , 13000 , 'IT');
select * from empolyees;



--------------query for inserting data into the table ------------------------------



SELECT *, 
       LAG(salary_this_year) OVER (PARTITION BY name ORDER BY name) AS prev_year_salary
FROM empolyees; 



-------------query to make a new column and print the previous year salary of employees-----------------------------------------
