---sub query---
use CFP
create table dept(dId int,dNmae varchar(40),salary money)
insert into dept(dId,dNmae,salary)values(101,'hr',35000)
insert into dept(dId,dNmae,salary)values(102,'manager',45000)
insert into dept(dId,dNmae,salary)values(103,'clerk',4000)
insert into dept(dId,dNmae,salary)values(104,'hr',55000)
insert into dept(dId,dNmae,salary)values(105,'clerk',5000)
insert into dept(dId,dNmae,salary)values(106,'hr',62000)
select*from dept
select max(salary)from dept
select*from dept where salary=(select max(salary)from dept)

select *from dept where dId in(select dId from dept where dNmae='clerk' or dNmae='manager')