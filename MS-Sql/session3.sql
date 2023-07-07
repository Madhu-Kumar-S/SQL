select * from tblEmployee;

select top(0) * from tblEmployee

insert into tblEmployee
values(2001, 'Carolyn', 'Andrea', 'Zimmerman', 'AB234578H', '1975-06-01', 'Commercial')

insert into tblEmployee
values(2001, 'Carolyn', 'Andrea', 'Zimmerman', 'AB234578H', '1975-06-01', 'Commercial')

select * from tblEmployee
where EmployeeNumber>2000

delete from tblEmployee
where EmployeeNumber>2000

select EmployeeGovernmentID, count(EmployeeGovernmentID)
from tblEmployee
group by EmployeeGovernmentID
having count(EmployeeGovernmentID)>1

--creating views

create view ViewEmployeeNames with encryption as
select top(50) EmployeeFirstName,EmployeeLastName 
from tblEmployee
go

select * from ViewEmployeeNames
where EmployeeFirstName like 'A%'


if exists(select * from sys.views where name = 'abc')
   drop view abc
go

select * from sys.views
drop view ViewEmployeeNames

select * from sys.syscomments as S
inner join sys.views as V
on S.id=V.object_id











