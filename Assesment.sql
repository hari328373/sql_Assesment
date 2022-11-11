-- create database
create database Employee;
use Employee;

-- create table
create table EmployeeInfo (
EmpId int ,
Firstname varchar(20),
Lastname varchar(20),
Age int,
Gender varchar(2),
PhoneNo int,
EmailId varchar(30),
Alternate_EmailId varchar(30),
Date_of_Birth date,
Date_of_Joining date);

-- show records
select * from EmployeeInfo;
desc EmployeeInfo;
-- delete column using Alter command

alter table EmployeeInfo
drop column Alternate_EmailId;

select * from EmployeeInfo;

-- Insert values into table

insert into EmployeeInfo 
values ( 10301,"Amulya","Alaboni",23,'F',987564,'abc100@gmail.com','1998-02-01','2022-05-08');

insert into EmployeeInfo 
values 
( 10302,"Harsha","Alam",25,'M',987564,'def500@gmail.com','1996-08-08','2018-11-09'),
( 10303,"Anirudh","vuba",22,'M',888964,'ghi800@gmail.com','1998-10-09','2022-03-05'),
( 10304,"Uday","Banka",27,'M',987554,'xyz900@gmail.com','1995-02-04','2015-09-03'),
( 10305,"Santha","Kumar",30,'M',987997,'edr2000@gmail.com','1992-10-01','2012-07-09'),
( 10306,"Harshi","Bonangi",22,'F',987564,'har20100@gmail.com','2000-05-03','2022-10-10'),
( 10307,"Akki","Bonu",27,'F',787564,'aki90100@gmail.com','1995-11-08','2019-07-28'),
( 10308,"prasanth","Dondi",28,'M',777564,'pras80100@gmail.com','1994-03-01','2017-05-29'),
( 10309,"Rohitha","Gondi",35,'F',987464,'roh10000@gmail.com','1987-05-04','2002-06-08'),
( 10310,"Aparanji","Gudese",22,'F',9875641,'appu310100@gmail.com','2000-02-09','2022-09-12');

select * from EmployeeInfo;
