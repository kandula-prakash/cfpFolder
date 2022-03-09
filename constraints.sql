--constraints--
use CFP
--unique--
create table test1(sId int unique,location varchar(40) unique)
insert test1(sId,location)values(101,'hyd')
insert test1(sId,location)values(101,'pune')--error bcz it is unique--
insert test1(sId,location)values(102,'hyd')--this is also error--
insert test1(sId,location)values(102,'pune')--valid--
select*from test1
--not null--

create table test2(eid int not null,eName varchar(40) not null)
insert test2(eid,eName)values(10,'prakash')--it taking null values--
insert test2(eid,eName)values(10,'prakash')
insert test2(eid,eName)values(10,'prakash')
select*from test2
--check--
create table test3(ename varchar(40),esalary money check(esalary>4500))
insert test3(ename,esalary)values('prakash',5460)--valid--
insert test3(eName,esalary)values('prakash',65456)
--creating table with primary key--
create table department(d_id int primary key,d_name varchar(40),d_address varchar(50))--parant table--
insert department values(10,'.net','hyderabad'),(20,'java','pune'),(30,'python','mubai')
create table employee(emp_id int,emp_name varchar(40),emp_salary money,
d_id int foreign key references department(d_id))--chaild class--
select*from department 
select*from employee
insert employee values(101,'prakash',36450,10)
insert employee values(102,'adams',25410,20)
insert employee values (103,'ram',56412,30)