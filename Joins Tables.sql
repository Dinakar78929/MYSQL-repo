create database Joins;
use joins;

create table details(
branch_id int primary key auto_increment,
branch_name varchar(30) ,
address varchar(50)
);

CREATE TABLE employee (
  emp_id INT primary key NOT NULL auto_increment,
  emp_name VARCHAR(45) NOT NULL,
  emp_job VARCHAR(45) NOT NULL,
   branch_id int,
  constraint emp_fk foreign key(branch_id) references details(branch_id)
 );
 
 insert into details(branch_name,address) 
 values('Rajajinagar','Bengaluru'),
('BTM','Bengaluru'),
(null,null),
(null,null);


insert into details(branch_name,address) 
 values(null,null);
 
 insert into employee(emp_name,emp_job,branch_id) 
 values('Dinakar','Reciptionalist',1),
 ('Dharshan','Trainer',1),
 ('Jayanth','Trainer',1),
 ('Pavan','Trainee',2),
 ('Kavan','Trainee',2),
 ('Basu','HR',1),
 ('Rekesh','HR',2),
 ('Shivu','Trainer',1),
 ('Annesh','Reciptionalist',2),
 ('Sanketh','Trainer',3),
 ('Irphan','Reciptionalist',null);
 
 select * from details;
 
 select * from employee;
 
 
 -- Inner Join
 select employee.emp_id,employee.emp_name,employee.emp_job,details.branch_name
 from employee
 inner join details
 on employee.branch_id=details.branch_id
 order by employee.emp_id;
 
 -- Left Join
  select employee.emp_id,employee.emp_name,employee.emp_job,details.branch_name
 from employee
 left join details
 on employee.branch_id=details.branch_id
 order by employee.emp_id;
 
  -- right join 
 select employee.emp_id,employee.emp_name,employee.emp_job,details.branch_name
 from employee
 right join details
 on employee.branch_id=details.branch_id
 order by employee.emp_id;
 
 --  full join 
 select *
 from employee
 full join details
 on employee.branch_id=details.branch_id;
 -- order by employee.emp_id;
