SELECT A.Fullname, A.Email, D.DepartmentName FROM  Accounts A
JOIN Department D ON D.DepartmentID=A.DepartmentID;

SELECT A.Email, A.Username, A.Fullname, A.CreateDate FROM Accounts A
WHERE CreateDate > '2010-10-20';

SELECT A.AccountID, A.Username, A.Email, A.Fullname, P.PositionName FROM Accounts A
JOIN Positions P ON A.PositionID=P.PositionID
WHERE PositionName = 'Dev';

SELECT D.DepartmentID, D.DepartmentName, count(*) AS SLNV FROM Department D
JOIN Accounts A ON A.DepartmentID=D.DepartmentID
GROUP BY D.DepartmentID, D.DepartmentName
HAVING SLNV ='1';


SELECT  C.CategoryID, C.CategoryName, Q.Content, E.ExamID, count(*) AS SLCH FROM CategoryQuestion C
JOIN Question Q ON Q.CategoryID=C.CategoryID
JOIN Exam E ON E.CategoryID=Q.CategoryID
GROUP BY E.ExamID, Q.Content
HAVING SLCH >=1;




