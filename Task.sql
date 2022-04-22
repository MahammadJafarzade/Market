CREATE DATABASE SUPERMARKET
USE SUPERMARKET
CREATE TABLE Position(
Id INT PRIMARY KEY IDENTITY,
[NAME] NVARCHAR(50)
)

CREATE TABLE Branch(
Id INT PRIMARY KEY IDENTITY,
[NAME] NVARCHAR(50)
)

CREATE TABLE Product(
Id INT PRIMARY KEY IDENTITY,
NAME NVARCHAR(100),
PurchasePrice FLOAT,
SellingPrice FLOAT
)
DROP TABLE Product

CREATE TABLE Employee(
Id INT PRIMARY KEY IDENTITY,
SAA NVARCHAR(100),
PositionId INT REFERENCES Position(Id),
Salary MONEY
)
DROP TABLE Employee
CREATE TABLE Sales(
Id INT PRIMARY KEY IDENTITY,
ProductId INT REFERENCES Product(Id),
EmployeeId INT REFERENCES Employee(Id),
BranchId INT REFERENCES Branch(Id),
SoldDATE DATE
)
DROP TABLE Sales

INSERT INTO Position
VALUES('Adminstrator'),
('Satici'),
('Kassir')
INSERT INTO Branch
VALUES('Yasamal'),
('Bakixanov'),
('Nizami'),
('Xetai')
INSERT INTO Product
VALUES('Dondurma',1,2),
('Alma',1,3),
('Gilas',2,4),
('Pendir',2,5)

INSERT INTO Employee
VALUES('Eli Eliyev',3,450),
('Mehemmed Ceferzade',1,900),
('Emin Hasanov',2,600)

INSERT INTO Sales
VALUES(1,2,1,'2022-02-15'),
(2,3,2,'2022-03-14'),
(3,2,1,'2022-01-25')

--T4
SELECT Employee.SAA,COUNT(*) FROM Sales
INNER JOIN Employee ON Sales.EmployeeId = Employee.ID
WHERE Sales.EmployeeId = Employee.ID
GROUP BY Employee.SAA 


 