-- ASSESSMENT 3

create database Assesment_3;
use  Assesment_3;

-- create table with Not Null

create table table1
(agent_code varchar(6) Not null,
agent_name varchar(25) Not Null,
working_area varchar(25) Not Null);

desc  table1;
select table_name,constraint_type,constraint_name from information_schema.table_constraints where table_name='table1';

-- create table with UNIQUE 

create table table2
(ord_num decimal(6,0)  unique,
ord_amount decimal(12,2),
ord_date DATE NOT NULL,
cust_code VARCHAR(6) NOT NULL,
agent_code VARCHAR(6) NOT NULL);

desc table2;
select table_name,constraint_type,constraint_name from information_schema.table_constraints where table_name='table2';

create table table2_1
(ord_num decimal(6,0)  unique Not Null,
ord_amount decimal(12,2),
ord_date DATE NOT NULL,
cust_code VARCHAR(6) NOT NULL,
agent_code VARCHAR(6) NOT NULL);

desc table2_1;
select table_name,constraint_type,constraint_name from information_schema.table_constraints where table_name='table2_1';

-- Write SQL CREATE TABLE to check unique value on more columns
create table table3
(agent_code char(6) unique,
agent_name char(25) unique,
working_area char(25) Not null,
commission decimal(5,2) );

desc table3;
select table_name,constraint_type,constraint_name from information_schema.table_constraints where table_name='table3';

create table table3_1
(agent_code char(6) unique Not Null,
agent_name char(25) unique Not Null,
working_area char(25) Not null,
commission decimal(5,2));

desc table3_1;
select table_name,constraint_type,constraint_name from information_schema.table_constraints where table_name='table3_1';

-- Write SQL CREATE TABLE to check unique value on more columns
create table table4
(cust_code char(6) unique Not Null,
cust_name char(25) Not Null,
cust_city char(25) Not null,
grade integer,
agent_code char(6) Not null unique);

desc table4;
select table_name,constraint_type,constraint_name from information_schema.table_constraints where table_name='table4';

-- SQL CREATE TABLE with CHECK CONSTRAINT

create table table5
(agent_code char(6) Not Null unique,
agent_name char(25) Not Null unique,
working_area char(25) Not null,
commission int check(commission<1));

desc table5;
select table_name,constraint_type,constraint_name from information_schema.table_constraints where table_name='table5';


-- SQL ALTER TABLE with check constraint
create table table6
(agent_code char(6) Not Null unique,
agent_name char(25) Not Null unique,
working_area char(25) Not null,
commission int );

desc table6;

ALTER TABLE TABLE6
ADD CHECK(commission<1);

select table_name,constraint_type,constraint_name from information_schema.table_constraints where table_name='table6';

-- SQL CREATE TABLE with CHECK CONSTRAINT and IN operator

create table table7
(agent_code char(6) Not Null unique,
agent_name char(25) Not Null unique,
working_area char(25) Not null check(working_area in ('London','Brisban','Mumbai','Chennai')) ,
commission int check(commission<1));

desc table7;
select table_name,constraint_type,constraint_name from information_schema.table_constraints where table_name='table7';


-- SQL CREATE TABLE using CHECK CONSTRAINT and AND, OR operator

create table table8
(agent_code char(6) Not Null unique,
agent_name char(25) Not Null unique,
working_area char(25) Not null,
commission decimal(8,2));

desc table8;

alter table table8
add constraint 
check ((commission<0.14 AND working_area='London') OR 
(commission<0.15 AND working_area='Mumbai') OR
(commission<0.13 AND working_area='NewYork'));

select table_name,constraint_type,constraint_name from information_schema.table_constraints where table_name='table8';


