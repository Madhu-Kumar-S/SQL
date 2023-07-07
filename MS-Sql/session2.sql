create database DB;
use DB;

create table tblEmployee
(
EmployeeNumber int not null,
EmployeeFirstName varchar(10) not null,
EmployeeMiddleName varchar(10) null,
EmployeeLastName varchar(10) not null,
EmployeeGovernmentID varchar(10) null, 
DateOfBirth date not null
);

alter table tblEmployee
add Department varchar(20) null;

select * from tblEmployee;

insert into tblEmployee 
values(132,'Dylan','A','Word','OI654628A','05-02-1987','HR'),
(131,'Jossef','H','Wright','TX928854Z','06-03-1967','HR');

select * from tblEmployee;

select * from tblEmployee
where EmployeeLastName like 'W%';

select * from tblEmployee
where EmployeeLastName like '[^g-z]%';
select * from tblEmployee
where EmployeeLastName like '[AGQ]%';
select * from tblEmployee
where EmployeeLastName like '[g-z]%';

select * from tblEmployee
where DateOfBirth between '19760101' and '19861231'

select * from tblEmployee
where DateOfBirth > '19940101'

select year(DateOfBirth) as yearOfBirth,
count(*) as NumberBorn
from tblEmployee
group by year(DateOfBirth)

--order how the above statement executes
--from tblEmployee
--where 1=1
--group by year(DateOfBirth)
--select year(DateOfBirth) as yearOfBirth,count(*) as NumberBorn

select top(5) left(EmployeeLastName,1) as Initial,
count(*) as countofinitial from tblEmployee
group by left(EmployeeLastName,1)
order by count(*) desc

select left(EmployeeLastName,1) as Initial,
count(*) as countofinitial from tblEmployee
where DateOfBirth > '19800101'
group by left(EmployeeLastName,1)
having count(*)>50
order by count(*) desc

Update tblEmployee
Set EmployeeMiddleName = NULL
Where EmployeeMiddleName = ''

select datename(month,DateOfBirth) as MonthNumber,
count(*) as NumberOfEmployees
from tblEmployee
group by datename(month,DateOfBirth), datepart(month,DateOfBirth)
order by datepart(month,DateOfBirth)


--new transaction table
create table tblTransaction
(
Amount smallmoney not null,
DateOfTransaction smalldatetime null,
EmployeeNumber int not null,
)
INSERT INTO tblTransaction VALUES
(-964.05, '20150526', 658), 
(-105.23, '20150914', 987), 
(-506.8, '20150505', 695), 
(239.55, '20141224', 766), 
(672.19, '20151031', 629), 
(38.63, '20141013', 109), 
(282.36, '20141115', 864), 
(72.03, '20151007', 804), 
(-283.63, '20150506', 245), 
(-1.07, '20140418', 1010), 
(839.73, '20140131', 1105), 
(-613.61, '20141019', 744), 
(-964.58, '20140705', 261), 
(-2.77, '20150515', 132), 
(-334.5, '20150904', 994), 
(-697.83, '20151205', 1007), 
(281.46, '20151021', 552), 
(478.3, '20140626', 388), 
(-495.4, '20150601', 40), 
(786.47, '20141226', 423), 
(656.65, '20140622', 1121), 
(-167.06, '20151120', 725), 
(-4.19, '20140726', 188), 
(-665.55, '20140109', 1062), 
(-485.6, '20140731', 825), 
(-263.27, '20140531', 1109), 
(552.03, '20150817', 652), 
(324.12, '20141001', 178), 
(898.56, '20141019', 1025), 
(614.83, '20150207', 831), 
(-309.04, '20150222', 1101), 
(591.86, '20140612', 140), 
(-105.61, '20141101', 563), 
(11.93, '20150805', 39), 
(224.83, '20140723', 13), 
(357.18, '20151204', 593), 
(-631.86, '20151025', 340), 
(-454.75, '20150925', 640), 
(-476.29, '20140928', 664), 
(670.42, '20150830', 303), 
(3.87, '20150409', 996), 
(482.08, '20140307', 235), 
(-527.78, '20140610', 700), 
(-106.81, '20141001', 732), 
(-868.56, '20150730', 782), 
(346.35, '20140325', 509), 
(803.01, '20150813', 1054), 
(893.38, '20141031', 928), 
(-379.69, '20151203', 351), 
(468.04, '20151224', 227), 
(775.33, '20140504', 873), 
(-463.25, '20151130', 307), 
(-158.78, '20150627', 1076), 
(296.07, '20150623', 170), 
(-369.69, '20150409', 129), 
(456.52, '20140124', 1102), 
(789.03, '20150713', 343), 
(51.59, '20150306', 787), 
(623.87, '20141201', 368), 
(-185.11, '20150519', 594), 
(554.05, '20150829', 1077), 
(-600.03, '20151010', 331), 
(-887.41, '20151005', 743), 
(314.44, '20150322', 407), 
(148.59, '20141115', 678), 
(959.44, '20140329', 982), 
(361.52, '20140701', 324), 
(-141.86, '20150601', 218), 
(-127.13, '20140824', 546), 
(18.65, '20150717', 827), 
(118.93, '20141117', 659), 
(-175.94, '20140319', 982), 
(461.88, '20150223', 21), 
(787.97, '20141115', 687), 
(61.96, '20150612', 11), 
(-329.15, '20151031', 411), 
(245.34, '20140610', 353), 
(-865.74, '20150409', 443), 
(98.35, '20140731', 905), 
(-643.77, '20151027', 151), 
(310.53, '20140211', 898), 
(-508.6, '20140819', 532), 
(896.07, '20141031', 321), 
(-364.94, '20140815', 100), 
(0.89, '20140130', 714), 
(628.69, '20140205', 295), 
(-821.17, '20150622', 386), 
(473.8, '20140319', 744), 
(642.72, '20140425', 80), 
(693.35, '20141120', 308), 
(958.94, '20150225', 200), 
(856.55, '20150122', 1026), 
(107.88, '20141118', 22), 
(-997.35, '20141125', 653), 
(828.05, '20141008', 810), 
(-547.78, '20150414', 303), 
(408.81, '20141213', 774), 
(-428.31, '20140925', 723), 
(643.94, '20141118', 564), 
(424.34, '20151022', 769), 
(-349.52, '20140419', 486), 
(-783.89, '20151110', 722), 
(964.31, '20150610', 513), 
(-355.55, '20150706', 749), 
(201.78, '20140228', 1007), 
(112.6, '20141124', 905), 
(-116.16, '20151105', 569), 
(-787.64, '20150818', 702), 
(722.41, '20140929', 878), 
(276.09, '20150617', 1086), 
(33.65, '20140202', 53), 
(46.5, '20141030', 219), 
(886.75, '20150214', 696), 
(92.85, '20141211', 1045), 
(-763.39, '20151218', 1035), 
(937.37, '20140522', 588), 
(-405.23, '20151107', 1114), 
(572.55, '20150906', 77), 
(239.78, '20150928', 1), 
(414.87, '20150921', 466), 
(107.9, '20140928', 582), 
(954.48, '20150126', 221), 
(-811.21, '20140123', 119), 
(-215.53, '20150412', 576), 
(640.3, '20150802', 531), 
(-561.7, '20150721', 599), 
(-210.73, '20141128', 1121), 
(-442.27, '20140223', 985), 
(-930.72, '20150711', 955), 
(-68.27, '20151214', 307), 
(-132.42, '20140706', 32), 
(685.68, '20150110', 1069), 
(-668.14, '20150126', 120), 
(-543.44, '20140709', 72), 
(-435.16, '20141214', 170), 
(40.13, '20140311', 932), 
(856.38, '20140819', 741), 
(256.93, '20140105', 242), 
(-143.43, '20150524', 858), 
(-91.41, '20141015', 903), 
(-543.65, '20150213', 53), 
(-747.41, '20150419', 643), 
(819.52, '20150409', 918), 
(542.1, '20140428', 824), 
(-292.23, '20150811', 1044), 
(23.06, '20140201', 1084), 
(175.81, '20140715', 929), 
(-780.12, '20150704', 836), 
(515.1, '20140604', 471), 
(-763.58, '20141029', 795), 
(-522.14, '20140625', 735), 
(726.97, '20140528', 527), 
(642.53, '20150729', 625), 
(-449.54, '20150730', 592), 
(716.8, '20140828', 388), 
(644.9, '20141026', 704), 
(91.3, '20151104', 607), 
(-110.78, '20140601', 141), 
(45.44, '20140705', 1112), 
(-257.22, '20140317', 77), 
(-737.99, '20150205', 791), 
(-170.32, '20150719', 775), 
(-765.51, '20150216', 349), 
(764.87, '20150125', 887), 
(-486.61, '20140211', 386), 
(-768.58, '20140926', 848), 
(184.63, '20140406', 816), 
(240.53, '20141212', 924), 
(886.29, '20140119', 951), 
(-4.12, '20150907', 294), 
(-319.11, '20141225', 419), 
(-932.09, '20141012', 188), 
(994.31, '20141018', 280), 
(-356.08, '20141123', 629), 
(-293.19, '20140514', 44), 
(85.32, '20150710', 389), 
(606.53, '20150416', 493), 
(-73.84, '20140723', 801), 
(-736.17, '20140622', 633), 
(344.9, '20140202', 680), 
(-21.63, '20150828', 252), 
(-253.43, '20150709', 559), 
(969.48, '20150916', 968), 
(328.38, '20140619', 23), 
(874.36, '20140108', 938), 
(90.21, '20140827', 566), 
(525.16, '20140907', 727), 
(-452.14, '20150224', 832), 
(-146.88, '20140731', 98), 
(-105.76, '20150418', 1010), 
(-761.76, '20141122', 296), 
(-82.78, '20140622', 435), 
(330.23, '20151221', 308), 
(998.79, '20150801', 503), 
(145.2, '20140407', 434), 
(743.32, '20140105', 21), 
(-643.92, '20140318', 696), 
(-839.23, '20151022', 842);
select * from tblTransaction;

select EmployeeNumber, sum(Amount) as TotalAmount
from tblTransaction
group by EmployeeNumber;

select tblEmployee.EmployeeNumber,EmployeeFirstName,EmployeeLastName,sum(Amount) as Sum
from tblEmployee
join tblTransaction
on tblEmployee.EmployeeNumber=tblTransaction.EmployeeNumber
group by tblEmployee.EmployeeNumber,EmployeeFirstName,EmployeeLastName
order by EmployeeNumber

--department table
select Department, count(*) as NumberOfDepartment
from tblEmployee
group by Department

--derived table 
select Department as NumberOfDepartments from
(select Department, count(*) as NumberOfDepartment
from tblEmployee
group by Department) as newTable

select distinct Department from tblEmployee

--creating new table from existing
select distinct Department,convert(varchar(20),N'') as DepartmentHead
into tblDepartment
from tblEmployee

select * from tblDepartment
--drop table tblDepartment

select * 
from tblDepartment 
join tblEmployee
on tblDepartment.Department=tblEmployee.Department
join tblTransaction
on tblEmployee.EmployeeNumber=tblTransaction.EmployeeNumber





--truncate table tblEmployee;
--drop table tblEmployee;