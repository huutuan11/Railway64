create database Khach_hang2;
use khach_hang2;
create table khachhang2 (
ID int auto_increment,
FullName nvarchar(255),
BirthDay date,
Gender enum('0','1','NULL'),
IsDeletedFlag enum('0','1'),
primary key (ID)
);