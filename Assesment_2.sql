-- create database
create database Assesment_2;

use Assesment_2;
-- create Table
create table Ass_Table(
Movie_ID int primary key,
Movie_Title varchar(50),
Movie_year year,
Movie_Time_min int,
Movie_Language varchar(10),
Movie_Release_Date date,
Movie_Release_Country varchar(5));

desc  assesment_2.ass_table;
select * from Ass_table;

-- insert values
-- import csv file contains data
select * from Ass_table;

-- Write a SQL query to find the name and year of the movies. Return movie title, movie release year

select Movie_Title , Movie_Release_Date from ass_table;

-- Write a SQL query to find when the movie 'Titanic' released. Return movie release year
select Movie_Title , Movie_Release_Date from ass_table where Movie_Title='Titanic';

-- Write a SQL query to find the movie that was released in 1999. Return movie title

select Movie_Title from ass_table where Movie_year=1999;

-- Write a SQL query to find those movies, which were released before 1998. Return movie title

select Movie_Title  from ass_table  where Movie_year>1998;

-- Write a SQL query to find those movies which is more than 150 min

select Movie_Title  from ass_table  where Movie_Time_min > 150;

-- Write a SQL query to find the movie title whose are not released in UK country

select Movie_Title from ass_table where not movie_release_country='UK';

