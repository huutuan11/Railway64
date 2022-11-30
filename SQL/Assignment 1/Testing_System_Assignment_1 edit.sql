create database Testing_System_Assignment_1;
use Testing_System_Assignment_1;
create table Department(
DepartmentID int not null auto_increment unique,
DepartmentName nvarchar(255)
);
create table Positions(
PositionID int not null auto_increment unique,
PositionName enum ('Dev', 'Test', 'Scrum Master', 'PM')
);
create table Accounts(
AccountID int not null auto_increment unique,
Email varchar(255),
Username varchar(255),
Fullname varchar(255),
DepartmentID int,
PositionID int,
CreateDate date
);
create table Group1(
GroupID int not null auto_increment unique,
GroupName varchar(255),
CreatorID int not null unique,
CreateDate date
);
create table GroupAccount(
GroupID int,
AccountID int,
Joindate date
);
create table TypeQuestion(
TypeID int not null auto_increment unique,
TypeName nvarchar(255)
);
create table CategoryQuestion(
CategoryID int not null auto_increment unique,
CategoryName nvarchar(255)
);
create table Question(
QuestionID int not null auto_increment unique,
Content varchar(255),
CategoryID int,
TypeID int,
CreatorID int,
CreateDate date
);
create table Answer(
AnswerID int not null auto_increment unique,
Content varchar(255),
QuestionID int,
isCorrect varchar(255)
);
create table Exam(
ExamID int not null auto_increment unique,
Codes varchar(20),
Title varchar(255),
CategoryID int,
Duration time,
CreatorID int,
CreateDate date
);
create table ExamQuestion(
ExamID int,
QuestionID int
);
