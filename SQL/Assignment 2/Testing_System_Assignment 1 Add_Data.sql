drop database if exists Testing_System_Assignment_1;
create database  Testing_System_Assignment_1;
use Testing_System_Assignment_1;
create table Department(
DepartmentID int(50) not null auto_increment,
DepartmentName nvarchar(255) not null,
primary key (DepartmentID)
);
create table Positions(
PositionID int not null auto_increment,
PositionName enum('Dev', 'Test', 'Scrum Master', 'PM') DEFAULT ('Dev'),
primary key(PositionID)
);
create table Accounts(
AccountID int(50) not null auto_increment,
Email varchar(255) not null,
Username char(255) not null,
Fullname char(255) not null,
DepartmentID int(50) not null,
PositionID int(50) not null,
CreateDate date,
primary key(AccountID)
);
create table Group1(
GroupID int(50) not null auto_increment unique,
GroupName varchar(255),
CreatorID int(50) not null unique,
CreateDate date
);
create table GroupAccount(
GroupID varchar(50) not null,
AccountID int(50) not null,
Joindate date not null
);
create table TypeQuestion(
TypeID int not null auto_increment,
TypeName enum('Essay', 'Multiple-Choice') default 'Essay',
PRIMARY KEY(typeID)
);
create table CategoryQuestion(
CategoryID int not null auto_increment,
CategoryName nvarchar(255),
primary key(CategoryID)
);
create table Question(
QuestionID int not null auto_increment,
Content varchar(255) not null,
CategoryID int,
TypeID int,
CreatorID int,
CreateDate date,
primary key(QuestionID)
);
create table Answer(
AnswerID int not null auto_increment,
Content varchar(255),
QuestionID int,
isCorrect enum('Đúng','Sai'),
primary key(AnswerID)
);
create table Exam(
ExamID int not null auto_increment,
Codes varchar(20),
Title varchar(255),
CategoryID int,
Duration time,
CreatorID int,
CreateDate date,
primary key(ExamID)
);
create table ExamQuestion(
ExamID int,
QuestionID INT
);
