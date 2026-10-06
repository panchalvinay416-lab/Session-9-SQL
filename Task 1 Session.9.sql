CREATE DATABASE influencers_db;
use influencers_db;

CREATE TABLE influencers(
influencer_id int primary key,
influencer_name varchar(100) not null,
city varchar (100) not null
);

CREATE TABLE brands(
 brand_id int primary key,
 brand_name varchar (100) not null,
 city varchar(100) not null,
 influencer_id int,
 foreign key (influencer_id)
    references 
influencers(influencer_id)
);

INSERT INTO influencers (influencer_ID, influencer_Name, city)
VALUES
(1, 'Rahul Sharma', 'Ahmedabad'),
(2, 'Priya Patel', 'Surat'),
(3, 'Amit Shah', 'Vadodara'),
(4, 'Neha Joshi', 'Rajkot'),
(5, 'Riya Mehta', 'Ahmedabad'),
(6, 'Karan Patel', 'Mumbai'),
(7, 'Pooja Desai', 'Pune'),
(8, 'Vishal Shah', 'Delhi'),
(9, 'Anjali Trivedi', 'Jaipur'),
(10, 'Harsh Panchal', 'Ahmedabad');


INSERT INTO brands (brand_id, brand_name, city)
VALUES
(1, 'Nike', 'Ahmedabad'),
(2, 'Adidas', 'Surat'),
(3, 'Puma', 'Vadodara'),
(4, 'Levis', 'Rajkot'),
(5, 'Samsung', 'Ahmedabad'),
(6, 'Apple', 'Mumbai'),
(7, 'Zara', 'Pune'),
(8, 'H&M', 'Delhi'),
(9, 'Pepsi', 'Jaipur');


select * from influencers;
select * from brands;



select
 i.influencer_name,
 b.brand_name
from influencers i
left join brands b
 on i.city =b.city
 
 UNION
 
 select
 i.influencer_name,
 b.brand_name
from influencers i
right join brands b
 on i.city =b.city;
 