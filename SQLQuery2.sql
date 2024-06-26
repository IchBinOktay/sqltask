CREATE DATABASE CodeAcademy

Create TABLE GroupTypes (
	Id int primary key identity(1,1),
	Type nvarchar(50) not null unique
)

Create TABLE Groups(
Id int primary key identity(1,1),
Name nvarchar(50) not null unique default('new_group') ,
BeginDate date not null,
	EndDate date not null,
	LessonHours int not null,
	GroupTypeId int foreign key references GroupTypes(Id)

)

Create TABLE Students (
	Id int primary key identity(1,1),
	Name nvarchar(50) not null   ,
	Surname nvarchar(50) not null  ,
	BirthDate date not null default( 'yyyy-mm-dd')
	CHECK (BirthDate <= DATEADD(YEAR, -18, GETDATE())),
	RegistrationDate date not null,
	PhoneNumber nvarchar(50) unique default('+9940000000000'),
	Email nvarchar(50) unique ,
	GroupId int foreign key references Groups(id)
)

Create TABLE Topics (
	Id int primary key identity(1,1),
	Name nvarchar(50) not null unique ,
	LessonHours int not null,
	GroupTypeId int foreign key references GroupTypes(Id)
)

Create TABLE ExerciseType (
	Id int primary key identity(1,1),
	Name nvarchar(50) not null unique ,
)
Create TABLE Exercises (
	Id int primary key identity(1,1),
	Name nvarchar(50) not null  unique,
	Grade int not null,
	ExerciseTypeId int foreign key references  ExerciseType(id),
	StudentId int foreign key references  Students(id)
)


Insert into GroupTypes
Values('Programming'),('Design')

Insert into Groups 
Values('Pb401','2021-03-30','2023-12-12',400,1)

Insert into Students 
Values('Oktay','Babayev','2003-08-04','2023-03-29','+994517274898','gmail.com',1)


Insert into Topics Values('C#', 300,1)

Insert into Exercisetype Values('HomeWork')
Insert Into Exercises Values('Sql task',100,1,1)

Select * from GroupTypes
Select * from Groups
Select * from Students
Select * from Topics
Select * from Exercisetype
Select * from Exercises

