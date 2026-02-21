-- Create a table named "Employees" with columns for ID (integer), Name (varchar), and Salary (decimal).

create database contain

use contain 

create table Employees
(
id int ,
name varchar(20),
salary decimal
)


--Add a new column named "Department" to the "Employees" table with data type varchar(50).

alter table Employees
add Department varchar(50)


--Remove the "Salary" column from the "Employees" table.
alter table Employees 
drop column Salary

--Rename the "Department" column in the "Employees" table to "DeptName".
execute sp_rename 'dbo.Employees.Department','DeptName','column'

--Create a new table called "Projects" with columns for ProjectID (integer) and ProjectName (varchar).

create table Projects
(
ProjectID int ,
 ProjectName varchar(20)
)

--Add a primary key constraint to the "Employees" table for the "ID" column.
alter table Employees
ADD constraint PK_Employees_ID PRIMARY KEY (ID);


--Add a unique constraint to the "Name" column in the "Employees" table.
ALTER TABLE Employees
ADD CONSTRAINT UQ_Employees_Name UNIQUE (Name);

--Create a table named "Customers" with columns for CustomerID (integer), FirstName (varchar), LastName (varchar), and Email (varchar), and Status (varchar).
create table Customers
(
CustomerID int ,
FirstName varchar(20),
LastName varchar(20),
Email varchar(20),
Status varchar(20)
)

--Add a unique constraint to the combination of "FirstName" and "LastName" columns in the "Customers" table.
ALTER TABLE Customers
ADD CONSTRAINT UQ_Customers_FullName UNIQUE (FirstName, LastName);

--Create a table named "Orders" with columns for OrderID (integer), CustomerID (integer), OrderDate (datetime), and TotalAmount (decimal).
CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    OrderDate DATETIME,
    TotalAmount DECIMAL(10,2)
)

--Add a check constraint to the "TotalAmount" column in the "Orders" table to ensure that it is greater than zero.
ALTER TABLE Orders
ADD CONSTRAINT CHK_Orders_TotalAmount
CHECK (TotalAmount > 0)


--Create a schema named "Sales" and move the "Orders" table into this schema.
create schema sales 

ALTER SCHEMA Sales
TRANSFER Orders;

--Rename the "Orders" table to "SalesOrders."

EXEC sp_rename 'Sales.Orders', 'SalesOrders';



