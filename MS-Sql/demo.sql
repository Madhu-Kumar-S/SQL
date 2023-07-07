select 'madhu' as Name;
select 1 as Num;
go
select 4+9 as MyAnswer;
select 18-26 as Balance;
select 24*4+3 as MyResponse;
select 48/4 as Result;
go

create table Student(stname varchar(10),stid int);

insert into Student
values('a',1),('b',2),('c',3);

select * from Student;

truncate table Student;
drop table Student;