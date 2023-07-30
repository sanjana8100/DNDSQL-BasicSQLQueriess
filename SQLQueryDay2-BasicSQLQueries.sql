use EmployeeDatabase

--Modify an existing table by adding, modifying, or dropping columns or constraints.
Alter table Employee add Phone varchar(50)

Alter table Employee drop column Phone


create table EmployeeBirthDate(
	EmployeeId int primary key identity(1,1),
	Birthdate date);

--Inserts new rows into a table.
insert into EmployeeBirthDate (Birthdate) values
('2023-07-14'),
('2023-07-21');

insert into Employee (EmployeeName, Age, Department, Salary) values
('Sanjana', 22, 'Accounts', '125000'),
('Spoorthi', 26, 'Management', '75000'),
('Sahana', 25, 'Accounts', '110000');

--Deletes an existing table and all its data.
drop table EmployeeBirthDate

--Modifies existing rows in a table.
update Employee set Age = 26 where EmployeeId = 3

--Removes rows from a table.
delete from Employee where Department = 'Management'

--Deletes all rows from a table while keeping the table structure intact.
delete from Employee

select * from Employee

