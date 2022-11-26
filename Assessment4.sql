-- ASSESSMENT 4

create database Assessment4;
use Assessment4;

-- 1 create Table
create table Salesman_table
(salesman_id int primary key auto_increment,
name varchar(25),
city varchar(25),
commission decimal(3,2));

alter table salesman_table
auto_increment=5001;


-- 2 insert the values

insert into salesman_table values
(5001,'james Hoog','New York',0.15),
(5002,'Nail Knite','Paris',0.13),
(5003,'Lauson Hen','San Jose',0.12),
(5005,'Pit Alex','London',0.11),
(5007,'Paul Adam','Paris',0.13),
(5006,'Mc Lyon','Paris',0.14);

-- 3 Write an SQL query to display all the information from Salesman table

select * from Salesman_table;

insert into Salesman_table(name,city,commission) values
('James','New York',0.12);

-- 4 Write an SQL query to display distinct city from salesman table

select distinct city from Salesman_table;

-- 5 Write an SQL query to display all distinct rows from salesman table
select distinct * from  Salesman_table;

 -- 6 Write an SQL query to display distinct name and city from Salesman table
select distinct name,city from salesman_table;

-- 7 Write an SQL query to display all records but city should be "Paris"
select * from salesman_table where city='paris';

-- 8 Write an SQL query to display all records but city should be "Paris" and comission should be greater than 0.14
select * from salesman_table where city='paris' and commission>0.14;

select * from salesman_table where city='paris' and commission>0.12;

-- 9 Write an SQL query to display all reocrds from Salesman table but commission column should be ascending order
select * from Salesman_table order by commission;
select * from Salesman_table order by commission desc;

-- 10 Write an SQL query to display all records except San Jose city
select * from salesman_table where city<>'san Jose'; 
select * from salesman_table where city!='san Jose';
