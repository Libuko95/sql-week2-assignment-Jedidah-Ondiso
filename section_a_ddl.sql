-====================================================================================
--SECTION A - BUILDING THE DATABASE(DDL)=============================================
--Jedidah Ondiso Libuko=========================================================
--22-07-2026=========================================================================
--===================================================================================
create schema greenwood_academy;

set search_path to  greenwood_academy;

===========================================================
-- students table
===========================================================
create table greenwood_academy.students(
student_id INT PRIMARY key,
first_name VARCHAR(50) NOT null,
last_name VARCHAR(50) NOT null,
gender VARCHAR(1), 
date_of_birth DATE, 
class VARCHAR(10),
city VARCHAR(50) 
);

===========================================================
 subjects table 
===========================================================
create table greenwood_academy.subject(
subject_id INT PRIMARY key,
subject_name VARCHAR(100) NOT null unique,
department VARCHAR(50),
teacher_name VARCHAR(100), 
credits INT 
);


==============================================================
-- Exam_results table 
===============================================================
create table greenwood_academy.exam_results(
result_id INT PRIMARY key,
student_id INT NOT null,
subject_id INT NOT null, 
marks INT NOT null,
exam_date DATE,
grade VARCHAR(2) 
);

==================================================================================================
