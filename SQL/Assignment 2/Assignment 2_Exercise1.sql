create database Fresher;
use Fresher;
create table Trainee(
TraineeID int not null auto_increment unique,
Full_Name varchar(255),
Birth_Date date,
Gender enum('male','female','unknown'),
ET_IQ integer(20),
ET_Gmath integer(20),
ET_English integer(50),
Training_Class nvarchar(255),
Evaluation_Notes text(255)
);