--DDL commands--
create database CFP
use CFP
create table cfpStudent(st_id int not null,student_name varchar(40),student_fee money,student_age TINYint)
select *from cfpStudent
sp_help cfpStudent
--alter is used for changing or modifying--
alter table cfpStudent alter column student_name varchar(50)
select*from cfpStudent
--alter add is used for adding new column --
alter table cfpStudent add student_address varchar(100)
sp_rename 'cfpStudent','cfp_student'
select*from cfp_student
sp_rename 'cfp_student.student_name','student_Name'
alter table cfp_student drop column student_fee
select*from cfp_student
--data manuplate (DML)--
--insert--
insert cfp_student values(1021,'prakash',25,'ballikurava')
select*from cfp_student
insert cfp_student values (1022,'rakesh',24,'andhra pradesh'),(1023,'somesh',26,'guntur'),
				  (1024,'mukesh',25,'hyderabad');
update cfp_student set student_age=24 where st_id=1024
delete cfp_student where st_id=1024
                  