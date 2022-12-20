-- lấy tên
USE Testing_System_Assignment_1;
DROP PROCEDURE IF EXISTS Department_1;
DELIMITER $
CREATE PROCEDURE Department_1 (IN In_DepartmentID INT, OUT Out_DepartmentName VARCHAR (255))
		BEGIN 
        SELECT DepartmentName INTO Out_DepartmentName
        FROM Department 
        WHERE DepartmentID = In_DepartmentID;
        END $
DELIMITER $ 
-- USE Department_1
SET @v_DepartmentName_1_name = '';
CALL Department_1 (2, @v_DepartmentName_1_name);
SELECT @v_DepartmentName_1_name ;

----------------------------- in dữ liệu
USE Testing_System_Assignment_1;
DROP PROCEDURE IF EXISTS Department_1;
DELIMITER $
CREATE PROCEDURE Department_1 (IN In_DepartmentID INT, OUT Out_DepartmentName VARCHAR (255))
		BEGIN 
        SELECT DepartmentName INTO Out_DepartmentName
        FROM Department 
        WHERE DepartmentID = In_DepartmentID;
        SELECT Out_DepartmentName;
        END $
DELIMITER $Department_1
-- USE
SET @v_DepartmentName_1_name = '';
CALL Department_1 (2, @v_DepartmentName_1_name);
SELECT @v_DepartmentName_1_name ;
-- lấy id
USE Testing_System_Assignment_1;
DROP PROCEDURE IF EXISTS Department_1;
DELIMITER $
CREATE PROCEDURE Department_1 (IN In_DepartmentName VARCHAR(255), OUT Out_DepartmentID INT)
		BEGIN 
        SELECT D.DepartmentID INTO Out_DepartmentID
        FROM Department D
        WHERE D.DepartmentName = In_DepartmentName;
        END $
DELIMITER $Department_1
-- USE
SET @v_DepartmentID ='';
CALL Department_1 ( 'CUCAI', @v_DepartmentID);
SELECT @v_DepartmentID ;
-- bài tập
-- Question 1: Tạo store để người dùng nhập vào tên phòng ban và in ra tất cả các account thuộc phòng ban đó;
SELECT * FROM Accounts
WHERE DepartmentID = (
SELECT DepartmentID FROM Department
WHERE DepartmentName = 'CUCAI');
-- Question 2: Tạo store để in ra số lượng account trong mỗi group
SELECT * FROM GroupAccount
WHERE AccountID IN (
SELECT AccountID FROM Accounts
WHERE GroupID = 2);
-- Question 3: Tạo store để thống kê mỗi type question có bao nhiêu question được tạo
-- trong tháng hiện tại
-- Question 4: Tạo store để trả ra id của type question có nhiều câu hỏi nhất
-- Question 5: Sử dụng store ở question 4 để tìm ra tên của type question
-- Question 6: Viết 1 store cho phép người dùng nhập vào 1 chuỗi và trả về group có tên
-- chứa chuỗi của người dùng nhập vào hoặc trả về user có username chứa
-- chuỗi của người dùng nhập vào
-- Question 7: Viết 1 store cho phép người dùng nhập vào thông tin fullName, email và
-- trong store sẽ tự động gán: username sẽ giống email nhưng bỏ phần @..mail đi, positionID: sẽ có default là developer, departmentID: sẽ được cho vào 1 phòng chờ
-- Sau đó in ra kết quả tạo thành công
-- Question 8: Viết 1 store cho phép người dùng nhập vào Essay hoặc Multiple-Choice
-- để thống kê câu hỏi essay hoặc multiple-choice nào có content dài nhất
-- Question 9: Viết 1 store cho phép người dùng xóa exam dựa vào ID
-- Question 10: Tìm ra các exam được tạo từ 3 năm trước và xóa các exam đó đi (sử
-- dụng store ở câu 9 để xóa)
-- Sau đó in số lượng record đã remove từ các table liên quan trong khi
-- removing
-- Question 11: Viết store cho phép người dùng xóa phòng ban bằng cách người dùng
-- nhập vào tên phòng ban và các account thuộc phòng ban đó sẽ được
-- chuyển về phòng ban default là phòng ban chờ việc
-- Question 12: Viết store để in ra mỗi tháng có bao nhiêu câu hỏi được tạo trong năm nay
-- Question 13: Viết store để in ra mỗi tháng có bao nhiêu câu hỏi được tạo trong 6 tháng gần đây nhất (Nếu tháng nào không có thì sẽ in ra là "không có câu hỏi nào trong tháng")
