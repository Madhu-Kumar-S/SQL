select name from sys.databases;

create database Student;
use Student;

create table student(
stid integer not null,
stfname char(20) not null,
stlname char(20) not null,
stdept char(5) not null,
stbranch char(5),
primary key(stid)
);

insert into student(stid,stfname,stlname,stdept,stbranch) 
values(1,'Madhu','Kumar','BE','CSE'),(2,'Raj','Kumar','BE','IT'),(3,'Bill','Gates','BE','EEE'),(4,'Elon','Musk','BE','CSE');

select stfname,stlname from student;
select * from student;

select * from student where stfname='Madhu' and stlname='Kumar';
select * from student where stfname='Madhu' or stlname='Kumar';
select * from student where not stfname='Madhu' and not stlname='Kumar';
select distinct(stlname) from student; /*removes duplicates*/

select stfname,stlname from student where stid in(1,4);
select * from student where stid between 1 and 3;

select * from student where stbranch like 'c__';

select * from student order by stfname asc;
select * from student order by stfname desc;

select count(*) as no_of_students from student;
select min(stid) from student;
select max(stid) from student;

select stbranch,count(*) as no_of_students from student group by stbranch;
