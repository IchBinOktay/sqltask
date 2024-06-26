Create database LibraryManagement
use Librarymanagement

Create table Libraries (
	Id int primary key identity(1,1),
	Name nvarchar(50) not null  ,
	Address nvarchar(50) not null
)
Create table Genres (
	Id int primary key identity(1,1),
	Name nvarchar(50) not null unique  ,
)

Create table Books (
	Id int primary key identity(1,1),
	Name nvarchar(50) not null  ,
	Count int not null,
	Genre_Id int foreign key references Genres(id),
	Library_Id int foreign key references Libraries(id)
)

Create table Authors (
	Id int primary key identity(1,1),
	Name nvarchar(50) not null   ,
	Surname nvarchar(50) not null  ,
)

Create table BookAuthor (
	Id int primary key identity(1,1),
	Book_Id int foreign key references Books(id),
	Author_Id int foreign key references Authors(id)
)

insert into libraries values('oxu zali','elmler')
insert into genres values ('fantasy')
insert into books values('harry potter',5,1,1)
insert into authors values('jk ','rowley')
insert into BookAuthor values(1,1)

Select * from libraries
Select * from genres
Select * from books
Select * from authors
Select * from BookAuthor
