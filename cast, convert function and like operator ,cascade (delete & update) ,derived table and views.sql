--like operator--
create table demo4(sId int ,sName varchar(50))
insert into demo4(sId,sName)values(10,'prakash')
insert into demo4(sId,sName)values(20,'mahi')
insert into demo4(sId,sName)values(30,'mani')
insert into demo4(sId,sName)values(40,'prasanth')
insert into demo4(sId,sName)values(50,'ramesh')
insert into demo4(sId,sName)values(60,'rakesh')

select*from demo4 where sName like 'p%'
select*from demo4 where sName like '%i'
select*from demo4 where sName like '%e'
select*from demo4 where sName like '_a%'

----views----
create table employeee(eid int ,ename varchar(40),salary money)
insert employeee (eid,ename,salary)values(101,'prakash',2000)
insert employeee (eid,ename,salary)values(102,'mukesh',3000)
insert employeee (eid,ename,salary)values(103,'rakesh',7000)
insert employeee (eid,ename,salary)values(104,'mahesh',4000)
insert employeee (eid,ename,salary)values(105,'prasanth',6000)
 create view Vemp as select*from employeee
 select*from Vemp
 --here perform dml operation on simple view--
 insert Vemp(eid,ename,salary)values(106,'ravi',9000)
 update Vemp set salary=8000 where eid=106
 delete Vemp where eid=106

 --complex view--
 create table empHyd(eid int,ename varchar(40),salary money)
  create table empchennai(eid int,ename varchar(40),salary money)
insert empHyd(eid,ename,salary)values(101,'adams',1000)
insert empHyd(eid,ename,salary)values(102,'james',5000)
insert empHyd(eid,ename,salary)values(103,'miller',4000) 
insert empHyd(eid,ename,salary)values(104,'warner',6000)

insert empchennai(eid,ename,salary)values(101,'adams',20000)
insert empchennai(eid,ename,salary)values(105,'scott',205000)
insert empchennai(eid,ename,salary)values(106,'allen',50000)

create view vdata as select *from empHyd union select *from empchennai
 select*from vdata

 --cascade deleting and updating--
create table show1(eid int primary key,ename varchar(40),salary money)
insert show1(eid,ename,salary)values (10,'adams',1000)
insert show1(eid,ename,salary)values (20,'adi',2000)
insert show1(eid,ename,salary)values (30,'raki',30)
create table childShow(epn bigint,eaddress varchar(50),eid int foreign key references show1(eid))
insert childShow(epn,eaddress,eid)values(9398068163,'hyd',10)
insert childShow(epn,eaddress,eid)values(9398068165,'hyd',10)
insert childShow(epn,eaddress,eid)values(9398065163,'ranchi',20)
insert childShow(epn,eaddress,eid)values(9398064163,'pune',30)
select*from childShow

delete from childShow where eid=10

alter table show1 add constraint childShow foreign key (eid)references show1(eid)
on delete cascade
on update cascade

--cast and convert--

 create table storeLocations (
  id int primary key,
  store_name varchar(40),
  store_id int,
  postal_code varchar(10)
);


insert into storeLocations values(1, 'swiggy', 14500, 4400)
insert into storeLocations values(2, 'iddlz', 8977, 90902)
insert into storeLocations values(3, 'mcDonalds', 3422, 55443)



select *from storeLocations;

select store_id, postal_code, store_id + cast(postal_code AS INTEGER) AS [StoreID-Postalcode] from storeLocations

select store_name, store_id, store_name + ' - ' + cast(store_id AS VARCHAR) AS [Storename-storeId]
from storeLocations 

select store_id, postal_code, store_id + convert(INTEGER, postal_code) AS [StoreID-Postalcode] from storeLocations


select store_name, store_id, store_name + ' - ' + convert(VARCHAR,store_id ) AS [Storename-storeId]
from storeLocations