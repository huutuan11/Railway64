USE Testing_System_Assignment_1;
INSERT INTO department(DepartmentID, DepartmentName)
VALUES            ('1', N'củ cải'),
                  ('2', N'mộng chuột'),
                  ('3', N'shi béo'),
                  ('4', N'mai cua'),
                  ('5', N'bia thối');
INSERT INTO positions(PositionID)
VALUES            ('1'),
                  ('2'),
                  ('3'),
                  ('4'),
                  ('5');
INSERT INTO Accounts(AccountID, Email, Username, Fullname, DepartmentID, PositionID, CreateDate)
VALUES              ('1', N'mad@gmail.com', N'tuannguyen', N'nguyenhuutuan', N'1', N'1', N'2022/12/01'),
					('2', N'madi@gmail.com', N'tuan', N'nguyentuan', N'2', N'2', N'2022/12/01'),
                    ('3', N'mad9k@gmail.com', N'tuannguyen', N'nguyenhuutuan', N'3', N'3', N'2022/12/01'),
                    ('4', N'mad@gmail.com', N'tuannguyen', N'nguyenhuutuan', N'4', N'4', N'2022/12/01'),
                    ('5', N'mad@gmail.com', N'tuannguyen', N'nguyenhuutuan', N'5', N'5', N'2022/12/01');
INSERT INTO Group1(GroupID, GroupName, CreatorID ,CreateDate)
VALUES            ('1', N'tuannguyen', N'1', N'2022/12/01'),
                  ('2', N'tuannguyen', N'2', N'2022/12/01'),
                  ('3', N'tuannguyen', N'3', N'2022/12/01'),
                  ('4', N'tuannguyen', N'4', N'2022/12/01'),
                  ('5', N'tuannguyen', N'5', N'2022/12/01');
INSERT INTO GroupAccount(GroupID, AccountID, Joindate)
VALUES            ('1', N'1', N'2021-02-10'),
                  ('2', N'2', N'2022-01-13'),
                  ('3', '3', N'2022-04-11'),
                  ('4', '4', N'2022-06-06'),
                  ('5', '5', N'2022-10-07');
INSERT INTO TypeQuestion(TypeID)
VALUES                  ('1'),
						('2'),
                        ('3'),
                        ('4'),
                        ('5');
INSERT INTO  CategoryQuestion(CategoryID, CategoryName)
VALUES                       ('01','trong rừng có nai có thỏ, có sói có hổ và rắn'),
                             ('02','có loài rậu đổ bìm leo'),
                             ('03','có loài nhảy bổ vào cắn'),
                             ('04','có loài ăn không nói có, có loài thừa nước đục thả câu'),
                             ('05','miệng thì cười, tay thì bắt, dao thì kề trước ngực đã lâu');
INSERT INTO Question(QuestionID, Content, CategoryID, TypeID, CreatorID, CreateDate)
VALUES              ('01','cuộc đời là nồi cá kho','01','2','01','2021-12-01'),
				    ('02','muốn nó ngon phải kho nhiều nữa','02','4','02','2022-01-01'),
                    ('03','có quá nhiều thứ mưu cầu','03','5','03','2022-12-01'),
                    ('04','ta chỉ cần được no nhiều bữa','04','2','04','2019-12-01'),
                    ('05','rút cục chỉ là cuộc vui, hết vui nhà ai đấy về, rút cục tin vào bản thân trước khi tin lời ai đấy thề','01','2','01','2021-12-01');
INSERT INTO Answer(AnswerID, Content, QuestionID, isCorrect)
VALUES            ('01','con gấu kiếm ăn đủ, thì nó mới có thể ngủ đông','01','Đúng'),
				  ('02','đại bàng tập đập cánh trước cả khi nó có đủ lông','02','Sai'),
                  ('03','chim thì có tổ là con người chắc chắn là có tông','03','Đúng'),
                  ('04','muốn bay vào trời cao rộng con nào không cần có lông','04','Sai'),
                  ('05','mang tiền về cho mẹ, đừng mang ưu phiền về cho mẹ','05','Đúng');
INSERT INTO Exam(ExamID, Codes, Title, CategoryID, Duration, CreatorID, CreateDate)
VALUES          ('01','VTI010101','MANG TIỀN VỀ CHO MẸ - ĐEN VÂU','01','01:30:00','02','2022-12-02'),
				('02','VTI010102','AI MUỐN NGHE KHÔNG - ĐEN VÂU','02','01:30:00','02','2022-12-02'),
                ('03','VTI010103','MỘT TRIỆU LIKE - ĐEN VÂU','03','01:30:00','02','2022-12-02'),
                ('04','VTI010104','MƯỜI NĂM - ĐEN VÂU','04','01:30:00','02','2022-12-02'),
                ('05','VTI010105','LỐI NHỎ - ĐEN VÂU','05','01:30:00','02','2022-12-02');
                    
                             
                    
