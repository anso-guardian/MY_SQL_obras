create database employee;
use employee;
create table Departments(department_id int primary key,department_name varchar(50));
alter table Departments modify department_name varchar(50) not null unique;
create table Location(location_id int,location_name varchar(30));
alter table Departments modify department_name varchar(100);
create table Employees(employee_id int primary key,employee_name varchar(50) not null,gender enum('M','F'),hire_date date,designation varchar(100),department_id int,location_id int,salary decimal(10,2));
ALTER TABLE Location
MODIFY location_id INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (location_id);
ALTER TABLE Location
MODIFY location_name VARCHAR(100) NOT NULL,
ADD UNIQUE (location_name);
alter table employees
add email varchar(100);
alter table employees modify designation varchar(200);
alter table employees add age int;
alter table employees drop column age;
alter table employees rename column hire_date to date_of_joining;
rename table departments to Departments_Info;
rename table location to locations;
TRUNCATE TABLE EMPLOYEES;
DROP TABLE EMPLOYEES;
DROP DATABASE IF EXISTS employee;
create database employee;
use employee;
create table Department(Department_id int primary key ,Departmet_name varchar(100) not null unique);
create table Location(Location_id int AUTO_INCREMENT PRIMARY KEY,Location_name varchar(100) not null unique);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender ENUM('M', 'F'),
    age INT,
    hire_date DATE DEFAULT (CURRENT_DATE));
    alter table Employees add Department_id int, add Location_id int;
    alter table department rename column departmet_name to Department_name;
    ALTER TABLE Employees
	ADD CONSTRAINT wk_Employee_Department
    FOREIGN KEY (department_id)
    REFERENCES Department(department_id),
    ADD CONSTRAINT wk_Employee_Location
    FOREIGN KEY (location_id)
    REFERENCES Location(location_id);
    ALTER TABLE EMPLOYEES ADD CONSTRAINT CHK_AGE_EMPLOYEE CHECK(age>=18);
    
    
    
    