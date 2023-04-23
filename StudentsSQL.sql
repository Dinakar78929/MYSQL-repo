create database STUDENT;
use student;
 create table student(
StdID int primary key,
StdName varchar(30) not null ,
gender varchar(6) check(gender in('male','female')),
percentage float,
SClass int,
section varchar(5),
streams varchar(10) ,
DOB Date
);

INSERT INTO  student VALUES(111,'Dinakar','male',69.9,12 ,'A','Science','2002-01-01');
INSERT INTO  student VALUES(112,'Kavana','female',80, 12,'B','Science','2002-05-02');
INSERT INTO  student VALUES(113,'Divya','female',79,11 ,'C','Commerce','2021-07-05');
INSERT INTO  student VALUES(114,'Shambu','Male',89, 12,'D','Science','2000-08-05');
INSERT INTO  student VALUES(115,'jhon','Male',76,11,'A','Commerce','1990-7-06',55);
INSERT INTO  student VALUES(116,'Wick','male',79,12,'B','Science','1995-9-12',66);
INSERT INTO  student VALUES(117,'Andriya','female',95,12,'B','Commerce','1998-9-14',61);
INSERT INTO  student VALUES(125,'Suhana','female',88,12,'C','Science','1990-7-06',60);
INSERT INTO  student VALUES(150,'Mark','male',76,11,'A','Commerce','1990-12-12',59);
INSERT INTO  student VALUES(195,'howkin','female',85,11,'B','Science','1993-01-01',65);
select * from student;
-- 4. write a query to display only name and date of birth
select StdName,DOB
from student
where percentage>80;
-- 5. write a query to display all students record where percentage is greater or equal to 80
select * 
from student
where percentage>=80;
-- 6. write a query to display student name, stream and percentage where percentage of student is more than 80
select StdName,streams,percentage
from student
where percentage>80;

-- 7. write a query to display all records of science students whose percentage is more than 75 
select * 
from student
where streams="Science" and percentage>75 ;

-- 8. write a query to add a new column age
alter table student add age int;
-- 3. write a query to display all the records
select * from student;
desc student;

-- 9. write a query to rename age column to studentWeight 
alter table student rename column age to studentWeight;

alter table student modify column studentWeight double;

-- 10. write a query to studentWeight should be in decimal format
alter table student modify column studentWeight decimal not null;

