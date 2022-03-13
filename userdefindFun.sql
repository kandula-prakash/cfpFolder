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
Begin return (Select @FirstName + ' '+ @LastName);
end

select dbo.fun1 ('kandula','prakash') as Name, Salary from Employee7 where EmpID=2