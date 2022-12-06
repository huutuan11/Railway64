SELECT DepartmentName FROM department;

SELECT DepartmentID FROM department
WHERE DepartmentName = 'sale';


UPDATE Department
SET DepartmentName = 'sale'
WHERE DepartmentID = 10;

SELECT *, length(fullname) as nameL FROM Accounts 
order by nameL desc limit 1;

SELECT *, DepartmentID, length(fullname) as nameL FROM Accounts
WHERE departmentID = 3
order by nameL desc limit 1;

SELECT GroupName, CreateDate FROM group1
WHERE CreateDate < '2019-12-20';

SELECT QuestionID, COUNT(AnswerID) cautraloi FROM Answer
GROUP BY QuestionID
HAVING cautraloi>=3;

SELECT ExamID, CreateDate, COUNT(*) thoigian FROM Exam
GROUP BY ExamID
HAVING (thoigian >='01:00:00') and CreateDate< '2022-05-10';

SELECT groupname, CreateDate FROM group1
ORDER BY CreateDate desc limit 5;

SELECT departmentID, count(Fullname) as sonhanvien FROM accounts
WHERE departmentID = 2
order by sonhanvien asc;

SELECT * FROM accounts
WHERE fullname like 'D%o';


DELETE FROM testing_system_assignment_1.exam
WHERE CreateDate < '2022-04-19';

DELETE FROM testing_system_assignment_1.question
WHERE questionID = content LIKE 'xin tiền%';

UPDATE Accounts
SET fullname = 'Củ Cải',
    email = 'cucai1405@gmail.com'
WHERE AccountID = 5;

