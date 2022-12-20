USE Testing_System_Assignment_1; 
-- Tạo view có chứa danh sách nhân viên thuộc phòng ban sale
CREATE VIEW PB_Sale AS
SELECT fullname, email, username FROM Accounts A 
WHERE departmentID = (SELECT departmentID From department
WHERE DepartmentName = 'Sale');

-- Tạo view có chứa thông tin các account tham gia vào nhiều group nhất
CREATE VIEW MaxGroup AS
SELECT * FROM Accounts
WHERE AccountID IN (
SELECT GroupID FROM GroupAccount
GROUP BY GroupID
HAVING max(GroupID));
-- Tạo view có chứa câu hỏi có những content quá dài (content quá 300 từ được coi là quá dài) và xóa nó đi
CREATE VIEW MaxCONTENT AS
SELECT QuestionID, Content, length(Content) FROM Question
WHERE length(Content)>='40'  
;
-- Tạo view có chứa danh sách các phòng ban có nhiều nhân viên nhất
CREATE VIEW MaxDepartment AS
SELECT DepartmentName FROM Department
WHERE DepartmentID IN (
SELECT DepartmentID FROM Accounts
GROUP BY DepartmentID
HAVING max(AccountID));
-- Tạo view có chứa tất các các câu hỏi do user họ Nguyễn tạo
CREATE VIEW Nguyen AS
SELECT Content FROM Question
WHERE CreatorID IN (
SELECT AccountID FROM Accounts
WHERE Username = 'Nguyen');

