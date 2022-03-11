---indexers---
drop table Cdemo
create table Cdemo(eid int,eName varchar(30))
create index ND1 on cDemo(eid)
insert Cdemo(eid,eName)values(105,'aa')
insert Cdemo(eid,eName)values(102,'ac')
insert Cdemo(eid,eName)values(104,'cc')
insert Cdemo(eid,eName)values(106,'bb')
insert Cdemo(eid,eName)values(107,'ab')
select*from Cdemo

--

create table C_DEMO(eid int primary key,eName varchar(30))
create index C_D1 on C_DEMO(eid)

insert C_DEMO(eid,eName)values(105,'aa')
insert C_DEMO(eid,eName)values(102,'ac')
insert C_DEMO(eid,eName)values(104,'cc')
insert C_DEMO(eid,eName)values(106,'bb')
insert C_DEMO(eid,eName)values(107,'ab')
select*from C_DEMO

---stored procedure without parameter---
create procedure sp1
as
begin
select*from C_DEMO
end 

exec sp1
create procedure sp2 @s varchar(30)
as
begin
print 'yes,my name is :-'+@s
end 
exec sp2 'prakash'

create procedure sp3 @x int,@y int
as
begin
declare @z int--temporary variable
set @z=@x+@y
print 'add is:'+cast(@z as varchar)
end 
exec sp3 10,20



/* update employee record */
Create procedure spUpdateEmployeePayroll
(
@Name varchar(20),
@eid  int
)
As 
Begin try
update C_DEMO set eid=@eid where eName=@name
end try
Begin catch
SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH 
select*from C_DEMO 

exec spUpdateEmployeePayroll
'ab',101

