create database Demo1;
use Demo1;
go

create table Employee
(Empno int,Empname varchar);

insert into Employee
values(1,'a');

drop table Employee;
go

declare @myvar as int = 2
set @myvar = @myvar+1
select @myvar as myvariable;

declare @mynum as decimal(7,2) --or numeric(7,2)
set @mynum = 1234.67
select @mynum as mynumber;
go

declare @myvalue1 as numeric(7,2)=3
select sqrt(power(@myvalue1,2)) as pow;
select power(@myvalue1,3) as cube;
go

declare @myvalue2 as varchar(20)
set @myvalue2 = 'Welcome'
print @myvalue2
go

--implicit
declare @val as decimal(5,2) = 3
print @val/2
go

--explicit
print convert(decimal(5,2),3)
print cast(3 as decimal(5,2))
print 3.0/2
print 4/2
go

select * from sys.databases; --list out all databases
go

--strings
declare @word as char(15)
set @word = 'hello world'
select @word as String,len(@word) as length,datalength(@word) as datalen;
go


declare @chrASCII as varchar(10) = 'hello?'
declare @chrUNICODE as varchar(10) = N'hello?'
select @chrASCII as myASCII, @chrUNICODE as myUNICODE
select left(@chrASCII,2) as myASCII, right(@chrUNICODE,2) as myUNICODE
select SUBSTRING(@chrASCII,3,2)
select LTRIM(@chrASCII)
go

declare @num as int
select @num+1 as value
declare @str as nvarchar(20)
select @str as string
 go

--joining strings
declare @str1 as nvarchar(10);
declare @str2 as nvarchar(10);
declare @str3 as nvarchar(10);
set @str1 = 'a';
set @str2 = null;
set @str3 = 'c';
select concat(@str1,@str2,@str3);
select @str1+' '+@str2+@str3;
select @str1+iif(@str2 is null,'','' +@str2)+' '+@str3;
select @str1 + case when @str2 is null 
then '' else ''+@str2 end +''+@str3;
select @str1+' '+coalesce(@str2,'')+' '+@str3;
go

select 'My number is: '+ cast(123 as char(5));
select 'My number is: '+ convert(char(5),123);
select 'My salary is: '+format(2345.6,'C','en-US');
go

--Date data types and functions
declare @mydate1 as datetime = '2000-02-18 07:30:56.124';
select @mydate1 as MyDate

declare @mydate2 as datetime2(5) = '20000218 07:30:56.124';
select @mydate2 as MyDate

select datefromparts(2000,02,18) as ThatDate
select DATETIME2FROMPARTS(2000,02,18,07,30,56,124,5) as ThatDay
select year(@mydate1),month(@mydate1),day(@mydate1);

select current_timestamp as rightnow
select getdate() as rightnow
select sysdatetime() as rightnow
select dateadd(year,1,'2000-02-18 07:30:56.123') as myyear
select datepart(year,getdate())
select datepart(month,getdate())

declare @mydateoffset as datetimeoffset = '20150625 01:02:03.456 +5:30'
select @mydateoffset
select SYSDATETIMEOFFSET()

declare @mydate3 as datetime = '2000-02-18 07:30:56.124';
select convert(nvarchar(20),@mydate3) 



































