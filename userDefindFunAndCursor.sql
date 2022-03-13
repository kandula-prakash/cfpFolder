--function in scalar
use CFP
create table sclarEmp(eid int,ename varchar(40),esalary money)
insert sclarEmp(eid,ename,esalary)values(101,'jones',1000)
insert sclarEmp(eid,ename,esalary)values(102,'allen',2000)
insert sclarEmp(eid,ename,esalary)values(103,'scott',3000)
select*from sclarEmp

--create sclar function
create function grossSal(@eid int)
returns money
as

begin
declare @basicSal money,@dr money,@pf money,@hra money,@grossSalry money
select @basicSal =esalary from sclarEmp where eid=@eid
set @dr=@basicSal*0.1
set @pf=@basicSal*0.2
set @hra=@basicSal*0.3
set @grossSalry=@basicSal+@pf+@hra+@dr
return @grossSalry
end

select dbo.grossSal(102)

--table function 

create table tFunction(eid int ,ename varchar(40),salary money,dept varchar(40))
insert tFunction(eid,ename,salary,dept)values(101,'james',100,'hr')
insert tFunction(eid,ename,salary,dept)values(102,'janu',200,'manager')
insert tFunction(eid,ename,salary,dept)values(103,'jessi',300,'finance')
insert tFunction(eid,ename,salary,dept)values(104,'jack',5500,'hr')
insert tFunction(eid,ename,salary,dept)values(105,'vasu',1100,'finance')
insert tFunction(eid,ename,salary,dept)values(106,'james',1000,'manager')
insert tFunction(eid,ename,salary,dept)values(107,'stephen',1200,'hr')

create function TableDept(@deptName varchar(40))
returns table
as
return select *from tFunction where dept=@deptName

select*from TableDept('hr')

 CREATE TABLE Employee7(

EmpID int PRIMARY KEY,

FirstName varchar(50),
LastName varchar(50), 
Salary int ,
Addres varchar(100),
)


insert into Employee7 (EmpID, FirstName, LastName, Salary, Addres)

Values (1, 'Mike', 'Chaua', 22000, 'Detroit');

Insert into Employee7 (EmpID, FirstName, LastName, Salary, Addres)

Values (2, 'Aron', 'Kuax', 15000, 'Rochester');

Insert into Employee7 (EmpID, FirstName, LastName, Salary, Addres)

Values (3, 'Betty', 'Samon', 19000, 'Novi');

Insert into Employee7 (EmpID, FirstName, LastName, Salary, Addres)

Values (4, 'Daniel', 'Kate', 19000, 'Troy');

select * from Employee7

Create function fun1
(
@FirstName varchar(50),
@LastName varchar(50)
)
returns varchar(101)
As
Begin 
return (Select @FirstName + ' '+ @LastName);
end

select dbo.fun1 ('kandula','prakash') as Name, Salary from Employee7 where EmpID=2

----cursors without cursor variable
declare c1 cursor scroll for select*from tFunction
open c1
--fetch last from c1
--fetch first from c1
--fetch prior from c1
--fetch next from c1
fetch absolute 6 from c1
fetch relative -2 from c1

close c1
deallocate c1

--with cursor variable
declare c2 cursor scroll for select eid,ename from tFunction
declare @eid int,@ename varchar(40)
open c2
fetch last from c2 into @eid,@ename
print 'employee is'+' '+@ename+' '+'id is'+'  '+cast(@eid as varchar(20))
close c2
deallocate c2 

