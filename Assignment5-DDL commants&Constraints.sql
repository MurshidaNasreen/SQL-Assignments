create database employee;
use employee;
create table departments(department_id int primary key ,department_name varchar(100));
create table location(location_id int primary key,location_name varchar(30));
CREATE TABLE employees (
employee_id INT PRIMARY KEY,employee_name VARCHAR(50),gender ENUM('M','F'),
age INT,hire_date DATE,designation VARCHAR(100),department_id INT,
location_id INT,salary DECIMAL(10,2),FOREIGN KEY (department_id) REFERENCES departments(department_id),
FOREIGN KEY (location_id) REFERENCES location(location_id)
);
alter table employees add email varchar(100);
ALTER TABLE employees MODIFY COLUMN designation VARCHAR(255);
ALTER TABLE Employees DROP COLUMN Age;
ALTER TABLE employees CHANGE hire_date date_of_joining date ;
RENAME TABLE departments TO departments_info;
RENAME TABLE location to locations;
TRUNCATE TABLE employees;
drop table employees;
drop database employee;
create table departments(department_id int primary key unique,department_name varchar(100)
 unique not null);
 create table location(location_id int auto_increment primary key,
 location_name varchar(30) not null unique);
 CREATE TABLE employees (
employee_id INT UNIQUE PRIMARY KEY ,employee_name VARCHAR(50) NOT NULL ,gender CHAR(1) 
check(gender in ('M','F')),
age INT check (age>=18), 
hire_date DATE,
designation VARCHAR(100),department_id INT,
location_id INT,salary DECIMAL(10,2),FOREIGN KEY (department_id) REFERENCES departments(department_id),
FOREIGN KEY (location_id) REFERENCES location(location_id)
);
 