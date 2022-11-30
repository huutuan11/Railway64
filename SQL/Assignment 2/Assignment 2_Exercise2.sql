create database Khach_hang;
use khach_hang;
create table khachhang (
ID int auto_increment,
FullName nvarchar(255),
CodeID varchar(5),
ModifiedDate datetime,
primary key (ID)
);