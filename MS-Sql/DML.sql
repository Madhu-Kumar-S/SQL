use Demo;

create table Student(
stid integer not null,
stname char(20) not null
);

insert into Student(stid,stname)
values (1,'Aadhi'),(2,'Madhu'),(3,'Sandhya'),(4,'Sushma'),(5,'Divya'),(6,'Chandhu'),(7,'Bullz');


select * from Student;
select stid from Student;
select stname from Student;
select stname from Student where stname like 'S%';
select stname from Student where stname like '%a';

update Student
set stname = 'Bullzz'
where stname = 'Bullz'; 
select * from Student;

update Student
set stname = 'NA'
where stname like 'S%';
select * from Student;

update Student
set stname = 'NA';
select * from Student;

delete from Student
where stid = 1;
select * from Student;

delete from Student;
select * from Student;

drop table Student;