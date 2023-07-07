create database Demo;

USE Demo;

CREATE TABLE Employee(
empId INTEGER NOT NULL,
empName CHAR(20) NOT NULL,
CONSTRAINT emppk PRIMARY KEY(empID)
);
insert into Employee(empId,empName)
values(1,'Tom'),(2,'Jerry'),(3,'Bob');

create table Skill(
skillId INTEGER NOT NULL,
skillName char(20) NOT NULL,
CONSTRAINT skillpk PRIMARY KEY(skillId)
);
insert into Skill(skillId,skillName)
values(101,'Drawing'),(102,'Singing'),(103,'Reading');

CREATE TABLE EmployeeSkill(
empId INTEGER Not Null,
skillId INTEGER NOT NULL,
skillLevel INTEGER NULL,
CONSTRAINT emppk1 PRIMARY KEY(empId,skillId),
CONSTRAINT empfk FOREIGN KEY(empId) REFERENCES Employee (empId) ON DELETE CASCADE,
CONSTRAINT skillfk FOREIGN KEY(skillId) REFERENCES Skill (skillId) ON UPDATE CASCADE
);
INSERT INTO EmployeeSkill(empId,skillId,skillLevel)
values(1,101,4),(1,102,5),(2,101,6),(3,103,8);

select * from Employee;
select * from Skill;
select * from EmployeeSkill;

update Skill
set skillId=105 where skillName='Drawing'; 

select * from Employee;
select * from Skill;
select * from EmployeeSkill;

truncate table Employee;
truncate table Skill;
truncate table EmployeeSkill;

drop table EmployeeSkill;
drop table Skill;
drop table Employee;

