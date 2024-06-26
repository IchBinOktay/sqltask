CREATE DATABASE DrugstoreApp 
USE DrugstoreApp 

Create Table Owners (
	id int Primary key identity(1,1),
	Name nvarchar(50) Not Null,
	Surname nvarchar(50) Not Null
)
Create Table DrugStores (
	id int Primary key identity(1,1),
	Name nvarchar(50) Not Null,
	Address nvarchar(50) Not Null,
	ContactNumber varchar(50) Not Null,
	CreationDate date Not Null,
	OwnerId int foreign key references Owners(id)
)

Create Table Drugs (
	id int Primary key identity(1,1),
	Name nvarchar(50) Not Null,
	Price float Not Null,
	Count integer Not Null,
	DrugStoreId int foreign key references DrugStores(id)
)
Create Table Druggist (
	id int Primary key identity(1,1),
	Name nvarchar(50) Not Null,
	Surname nvarchar(50) Not Null,
	BirthDate date not null,
	Experience varchar(50) not null,
	DrugStoreId int foreign key references DrugStores(id)
)


Insert INTO Owners
Values('Oktay','Babayev')

Insert INTO DrugStores
Values('Zeferan','Baku','+9945522222','2006-08-17',1)

Insert INTO Drugs
Values('Aspirin',500,10,1)

Insert INTO Druggist
Values('Nicat','Babayev','2003-10-07','good experienced',1)

Select * from Owners
Select * from DrugStores
Select * from Drugs
Select * from Druggist
