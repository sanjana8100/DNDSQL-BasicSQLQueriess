use EmployeeDatabase

insert into Employee (EmployeeName, Age, Department, Salary) values
('Sanjana', 22, 'Accounts', '125000'),
('Spoorthi', 26, 'Management', '75000'),
('Sahana', 25, 'Accounts', '110000');

insert into Employee (EmployeeName, Age, Department, Salary) values
('Akshaya', 24, 'Accounts', '55000'),
('Latha', 22, 'Management', '95000');

insert into Employee (EmployeeName, Age, Department, Salary) values
('Jyotsna', 24, 'Accounts', '115000'),
('Inchara', 22, 'Management', '65000');

--Retrieve the names of employees in alphabetical order.
Select EmployeeName from Employee order by EmployeeName

--Retrieve the names and salaries of the first 5 highest-paid employees.
select top 5 EmployeeName, Salary from Employee order by Salary desc

--Retrieve the names of employees whose names start with the letter 'A'.
select EmployeeName from Employee where EmployeeName like 'a%'

--Skip first 2 data and retrieve next data from table.
select * from Employee order by EmployeeId offset 2 rows;


--Do inner join on two table of your choice.
create table EmployeeBirthDate(
	Id int primary key identity(1,1),
	EmployeeId int foreign key references Employee(EmployeeId),
	Birthdate date);

insert into EmployeeBirthDate (EmployeeId, Birthdate) values
(12,'2023-07-14'),
(10,'2023-07-07'),
(9,'2023-07-30'),
(7,'2023-07-21');

select * from Employee join EmployeeBirthDate on Employee.EmployeeId = EmployeeBirthDate.EmployeeId