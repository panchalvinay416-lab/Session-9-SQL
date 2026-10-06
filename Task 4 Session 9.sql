use tops;


CREATE TABLE  employees2(
  id int primary key,
  Emp_name VARCHAR (100),
  Emp_manager_id int
);


insert into employees2(id,Emp_name,Emp_manager_id)
values
(1, 'Rahul', NULL),
(2, 'Priya', 1),
(3, 'Amit', 1),
(4, 'Neha', 2),
(5, 'Vikas', 2);

select * from employees2;


select 
e.Emp_name as employees2,
m.Emp_name as manager
from employees2 as e
left join employees2 as m 
  on e.Emp_manager_id = m.id;