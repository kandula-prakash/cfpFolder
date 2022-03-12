--multiple joins--
use CFP
create table dept1(did int primary key,dName varchar(40))
insert dept1(did,dName)values(1,'hr')
insert dept1(did,dName)values(2,'it')
insert dept1(did,dName)values(3,'finance')
create table gender(genderId int primary key,gender varchar(40))
insert gender(genderId,gender)values(1,'male')
insert gender(genderId,gender)values(2,'female')

create table employees(empId int primary key,empName varchar(30),did int foreign key references dept1(did),genderId int foreign key references gender(genderId))
insert employees(empId,empName,did,genderId)values(1,'mark',1,1)
insert employees(empId,empName,did,genderId)values(2,'james',1,1)
insert employees(empId,empName,did,genderId)values(3,'adams',2,1)
insert employees(empId,empName,did,genderId)values(4,'mary',2,2)
insert employees(empId,empName,did,genderId)values(5,'roki',3,2)
insert employees(empId,empName,did,genderId)values(6,'crack',3,2)

select empName,dName,gender from employees join dept1 on employees.did=dept1.did
join gender on gender.genderId=employees.genderId

select dName,gender,count(*) as totalN from employees join dept1 on employees.did=dept1.did
join gender on gender.genderId=employees.genderId group by dName, gender
