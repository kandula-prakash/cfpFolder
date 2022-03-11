--cascade function--
create table p1(eid int primary key,ename varchar(20))
create table c1(eid int primary key ,eaddres varchar(50))

alter table c1 drop constraint fk_c1

alter table c1 add constraint fk_c1 foreign key(eid) references p1(eid)
on delete cascade --no action/set null/set default
on update cascade

insert p1 (eid,ename)values(1,'raki')
insert p1 (eid,ename)values(2,'maki')
insert p1 (eid,ename)values(3,'saki')

insert c1(eid,eaddres)values(1,'pune')
insert c1(eid,eaddres)values(2,'ranchi')
select *from p1
select*from c1
delete from p1 where eid=2
update p1 set eid=4 where eid=1
