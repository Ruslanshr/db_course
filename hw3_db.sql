-- create db
CREATE DATABASE employeedb;

-- use db

USE employeedb;

-- create table
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  salary INT NOT NULL
);

-- insert table
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales', 30000);
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting', 50000);
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales', 70000);
INSERT INTO EMPLOYEE VALUES (0004, 'Ivan', 'IT', 100000);
INSERT INTO EMPLOYEE VALUES (0005, 'Anna', 'IT', 40000);
INSERT INTO EMPLOYEE VALUES (0006, 'Mark', 'Management', 85000);
INSERT INTO EMPLOYEE VALUES (0007, 'Johny', 'Content', 66000);
INSERT INTO EMPLOYEE VALUES (0008, 'Igor', 'Sales', 90000);

-- fetch 
SELECT * FROM EMPLOYEE;




-- отсортируй данные по зарплате
SELECT * FROM EMPLOYEE order by salary;

-- отсортируй данные по зарплате от большего к меньшему
SELECT * FROM EMPLOYEE order by salary desc;

-- выведи первые 3 строчки таблицы
SELECT * FROM EMPLOYEE limit 3;

-- выведи последние 3 строчки таблицы
SELECT * FROM EMPLOYEE order by empId desc limit 3;

-- выведи данные, где в названии отделов встречается буква “t”
SELECT * FROM EMPLOYEE where dept like '%t%';

-- подсчитай длину названия отдела “Management”
SELECT dept, length(dept) FROM EMPLOYEE where dept like 'Management';

-- подсчитай сумму всех зарплат сотрудников
select sum(salary) from EMPLOYEE;

-- узнай среднюю зарплату сотрудников
select avg(salary) from EMPLOYEE;

-- округли среднюю зарплату сотрудников
select round (avg(salary)) from EMPLOYEE;

-- узнай минимальную и максимальную зарплату 
select min(salary), max(salary) from EMPLOYEE;

-- подсчитай количество сотрудников
select count(empId) from EMPLOYEE;

-- выведи количество сотрудников в каждом отделе
select  dept, count(name) from EMPLOYEE GROUP BY dept;

-- выведи отделы, где минимальная зарплата больше 40 000
select dept from EMPLOYEE group by dept having min(salary) > 40000; 


