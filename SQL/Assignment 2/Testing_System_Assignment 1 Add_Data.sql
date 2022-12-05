DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE  Testing_System_Assignment_1;
USE Testing_System_Assignment_1;
CREATE TABLE Department(
DepartmentID INT(50) NOT NULL AUTO_INCREMENT,
DepartmentName NVARCHAR(255) not null,
primary key (DepartmentID)
);
create table Positions(
PositionID int not null auto_increment UNIQUE,
PositionName enum('Dev', 'Test', 'Scrum Master', 'PM') DEFAULT ('Dev')
);
create table Accounts(
AccountID int(50) not null auto_increment,
Email varchar(255) not null,
Username char(255) not null,
Fullname char(255) not null,
DepartmentID int(50) not null,
PositionID int(50) not null,
CreateDate date,
primary key(AccountID),
FOREIGN KEY (DepartmentID) REFERENCES  Department(DepartmentID),
FOREIGN KEY (PositionID) REFERENCES  Positions(PositionID)
);
create table Group1(
GroupID int(50) not null auto_increment,
GroupName varchar(255),
CreatorID int(50) not null,
CreateDate date,
PRIMARY KEY (GroupID)
);
create table GroupAccount(
GroupID int(50) not null,
AccountID int(50) not null,
Joindate date not null,
FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID),
FOREIGN KEY (GroupID) REFERENCES Group1(GroupID)
);
create table TypeQuestion(
TypeID int not null auto_increment,
TypeName enum('Essay', 'Multiple-Choice'),
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
PRIMARY KEY (QuestionID),
FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID),
FOREIGN KEY (TypeID) REFERENCES TypeQuestion(TypeID),
FOREIGN KEY (CreatorID) REFERENCES Accounts(AccountID)
);
create table Answer(
AnswerID int not null auto_increment,
Content varchar(255),
QuestionID int,
isCorrect enum('Đúng','Sai'),
primary key(AnswerID),
FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
);
create table Exam(
ExamID int not null auto_increment,
Codes varchar(20),
Title varchar(255),
CategoryID int,
Duration time,
CreatorID int,
CreateDate date,
primary key(ExamID),
FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID),
FOREIGN KEY (CreatorID) REFERENCES Accounts(AccountID)
);
create table ExamQuestion(
ExamID int,
QuestionID INT,
FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
);
