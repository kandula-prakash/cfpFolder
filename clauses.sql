--clauses--
use CFP
create table Emp(empId int,empName varchar(40),empJob varchar(30),empSalary money,department int )
insert into Emp(empId,empName,empJob,empSalary,department)values(101,'prakash','manager',54650,10)
insert into Emp(empId,empName,empJob,empSalary,department)values(102,'sowji','manager',64650,20)
insert into Emp(empId,empName,empJob,empSalary,department)values(103,'raki','clerk',24650,20)
insert into Emp(empId,empName,empJob,empSalary,department)values(104,'ravi','sales man',34650,30)
insert into Emp(empId,empName,empJob,empSalary,department)values(105,'amith','dean',84650,10)
insert into Emp(empId,empName,empJob,empSalary,department)values(106,'rajesh','clerk',34650,20)
insert into Emp(empId,empName,empJob,empSalary,department)values(107,'mahesh','manager',64650,30)
insert into Emp(empId,empName,empJob,empSalary,department)values(108,'mani','sales man',24650,30)
insert into Emp(empId,empName,empJob,empSalary,department)values(109,'somesh','clerk',4650,20)
insert into Emp(empId,empName,empJob,empSalary,department)values(110,'rakesh','manager',44650,10)
select *from Emp
--where clause--
select *from Emp where empId=104
update Emp set empSalary=56421 where empId=104
delete from  Emp where empId=110
--order by--
select*from Emp order by department asc
select*from Emp order by empName desc
--top n--
select top(3)*from Emp
select top(7)*from Emp
select top(3)*from Emp order by empSalary asc
--group by--
select empJob ,count(*)as noOfemployye from Emp group by empJob
select empJob,department,count(*)numberofemployee from Emp group by empJob,department
select department,sum(empSalary)sumOfSalary from Emp group by department
select department,sum(empSalary),avg(empSalary),MIN(empSalary),max(empSalary) from Emp group by department
--having--
select department,count(*)from Emp group by department having count(*)<3

