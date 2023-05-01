create table serviceStation(
sNo int primary key auto_increment,
serviceType varchar(50) not null
);


insert into serviceStation(serviceType) values('Replacing your spark plugs');
insert into serviceStation(serviceType) values('Replacing the oxygen sensor ');
insert into serviceStation(serviceType) values('Ensuring brakes and pads replace');
insert into serviceStation(serviceType) values('Oil changes ');
insert into serviceStation(serviceType) values(' Tyre repairs and changes ');
insert into serviceStation(serviceType) values('The Ignition System ');
insert into serviceStation(serviceType) values('The electrical system ');
insert into serviceStation(serviceType) values('Alarms installed');
insert into serviceStation(serviceType) values('fluid level refills');
insert into serviceStation(serviceType) values(' Car washing and detailing');

drop table serviceStation;
select * from serviceStation;

create table customerRecords(
srNo int primary key auto_increment,
carBrand varchar(30),
customerName varchar(30),
customerNumber long,
carIssue varchar(30),
receivedDate date,
returnedDate date,
maintenanceDays int not null,
mechanicName varchar(30),
mechanicPhone long,
cost int,
serviceTypeId int,
constraint service_fk foreign key (serviceTypeId) references serviceStation(sNo)
);

insert into customerRecords values(1,
'swift',
'Dinakar',
7892966782,
'oil problem',
'2022-4-14',
'2022-04-15',
1,
'jhon',
6784839,
10000,
4);
insert into customerRecords values(
2,
'i20',
'Darshan',
87654334,
'Alram problem',
'2022-4-18',
'2022-04-20',
2,
'jhon',
6784839,
8000,
8);
insert into customerRecords values(
3,
'i10',
'Jayanth',
2345678,
'Ignition system',
'2022-4-10',
'2022-04-15',
5,
'Boss',
6784839,
12000,
6);

insert into customerRecords values(
4,
'Santro',
'Shambu',
4567098,
'Replacing oxygen sensor',
'2022-4-25',
'2022-04-30',
5,
'Tailor',
6784839,
5000,
2);

insert into customerRecords values(
5,
'XUV',
'Chandu',
4387839,
'Replacing oxygen sensor',
'2022-5-25',
'2022-05-30',
5,
'Curran',
7647838,
8000,
2);
drop table customerRecords;
select * from customerRecords;

-- count all records
SELECT count(*) as  total 
FROM customerRecords; 
-- find total cost in each month & for 3 months
SELECT SUM(cost) as totalAmount
from customerRecords
where receivedDate between '2022-04-01' and '2022-04-30';

-- find average cost in each month & for 3 months
SELECT monthname(receivedDate) as month ,AVG(cost) as AverageAmount
from customerRecords
where receivedDate between '2022-04-01' and '2022-04-30';

SELECT monthname(receivedDate) as month ,AVG(cost) as AverageAmount
from customerRecords
where receivedDate between '2022-05-01' and '2022-05-30';

--  find Heighest & cost from 3 months 
SELECT monthname(receivedDate) as month,MAX(cost) as highest
from customerRecords;
-- --  find lowest & cost from 3 months 
SELECT monthname(receivedDate) as month,MIN(cost) as lowest
from customerRecords;

-- find customers whose name starts with a
SELECT * FROM customerRecords
WHERE customerName LIKE "a%";

--  join both tables

select customerRecords.srNo,
customerRecords.carBrand,
customerRecords.customerName,
customerRecords.customerNumber ,
customerRecords.carIssue,
customerRecords.receivedDate ,
customerRecords.returnedDate ,
customerRecords.maintenanceDays ,
customerRecords.mechanicName,
customerRecords.mechanicPhone ,
customerRecords.cost ,
serviceStation.serviceType
from customerRecords
join serviceStation
on customerRecords.serviceTypeId=serviceStation.sNo;

select customerRecords.* ,
serviceStation.serviceType
from customerRecords
join serviceStation
on customerRecords.serviceTypeId=serviceStation.sNo;

-- fetch top 1 record from customerRecords & increase its cost by 1000rs
  update customerRecords set cost=cost+1000 where srNo=5;
  
  select * from customerRecords;