--joins--
--ansi joins using on keyword--
use CFP
create table student(sId int,sName varchar(40),sEmailId varchar(50),courseId int)
insert into student(sId,sName,sEmailId,courseId)values(101,'prakash','abhinayprakash143@gmail.com',10)
insert into student(sId,sName,sEmailId,courseId)values(102,'mahesh','abhinay143@gmail.com',20)
insert into student(sId,sName,sEmailId,courseId)values(103,'rakesh','prakash143@gmail.com',30)

create table course(courseId int,cName varchar(40),cfee decimal(6,2))
insert into course(courseId,cName,cfee)values(10,'java',1000)
insert into course(courseId,cName,cfee)values(20,'javaScript',500)
insert into course(courseId,cName,cfee)values(40,'css',500)
insert into course(courseId,cName,cfee)values(50,'html',500)

--inner join--
select*from student inner join course on student.courseId=course.courseId--should be same column and data type--

--outer join==>left outer join it fetching only left side data only--
select*from student s left outer join course c on s.courseId=c.courseId
--outer join==> right outer join it fetching onlt right side data only--
select*from student s right outer join course c on s.courseId=c.courseId
--outer join==>fully outer join it fetching all data from the table--
select*from student s full outer join course c on s.courseId=c.courseId

--cross join means (m X n)--
select*from student cross join course
-----------------------------------------------------------------------------------------------

--non ansi join use where key word used in this join--
create table demo1(SNO int,SName varchar(40))
insert into demo1(SNO,SName)values(10,'ram')
insert into demo1(SNO,SName)values(20,'sairam')
insert into demo1(SNO,SName)values(30,'sam')

create table demo2(SNO int,SName varchar(40))
insert into demo2(SNO,SName)values(10,'monkey')
insert into demo2(SNO,SName)values(20,'venky')
insert into demo2(SNO,SName)values(40,'venkta')
--equi join--
select *from demo1,demo2 where demo1.SNO=demo2.SNO
select*from demo1
select *from demo2
--Non equi join--
select*from demo1,demo2 where demo1.SNO>demo2.SNO
select*from demo1,demo2 where demo1.SNO<demo2.SNO

--self join it is retriving data it self--

create table demo3(eid int,eName varchar(40),salary money,managerId int )
insert into demo3(eid,eName,salary,managerId)values(101,'prakash',2000,101)
insert into demo3(eid,eName,salary,managerId)values(102,'rakesh',5000,108)
insert into demo3(eid,eName,salary,managerId)values(103,'mahesh',3000,109)
insert into demo3(eid,eName,salary,managerId)values(104,'nilesh',5000,104)
insert into demo3(eid,eName,salary,managerId)values(105,'somesh',6000,110)
insert into demo3(eid,eName,salary,managerId)values(106,'lokesh',1000,106)
select*from demo3
select e1.eid,e1.eName,e1.salary,e1.managerId from demo3 e1,demo3 e2 where e1.salary=e2.salary and e2.eName='nilesh' 
