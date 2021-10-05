 DROP DATABASE IF EXISTS   Fresher_Training_Management;
 CREATE DATABASE            Fresher_Training_Management;
 USE                        Fresher_Training_Management;
 
 CREATE TABLE Trainee(
        TraineeID           INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        Full_Name           VARCHAR(50),
        Birth_Date          DATE,
        Gender              ENUM ('male', 'female', 'unknown'),
        ET_IQ               TINYINT UNSIGNED CHECK ((ET_IQ) <=20),
        ET_Gmath            TINYINT UNSIGNED CHECK ((ET_Gmath) <=20),
        ET_English          TINYINT UNSIGNED CHECK ((ET_English) <=50),
        Training_Class      VARCHAR(50),
        Evaluation_Notes    VARCHAR(50),
        VTI_Account         VARCHAR(50) NOT NULL UNIQUE KEY
);

CREATE TABLE IF NOT EXISTS  DataTypes(
	ID 				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `Name`			VARCHAR(50) NOT NULL,
    `Code`			CHAR(5) NOT NULL UNIQUE KEY,
    ModifiedDate	DATETIME
);

CREATE TABLE IF NOT EXISTS  DataTypes2(
	ID 				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   `Name`			VARCHAR(50) NOT NULL,
    BirthDate		DATE,
    Gender			ENUM('0','1','2'), -- 0: Male, 1: Female, 2:Unknown
    IsDeletedFlag	ENUM('0','1') -- 0: Đang hoạt động,	1: Đã xóa 
    );

-- Question 1: Thêm ít nhất 10 bản ghi vào table
INSERT INTO Trainee (   Full_Name	  ,   Birth_Date	, Gender	, ET_IQ	, ET_Gmath	, ET_English	, Training_Class	, Evaluation_Notes	, VTI_Account)
VALUE 				('Doan Văn O'     ,  '2000-12-19'	, 'male'	,	20	,	20		,	20			,		'RAILWAY1'	,		'Khá'       ,	'Opro'  ),
					('Nguyễn Văn Trí' ,  '1998-05-10'	, 'male'	,	18	,	16		,	16			,		'RAILWAY2'	,		'Yếu'       ,	'Tripro' ),
                    ('Nguyễn Thị Hoàng' ,  '1995-07-24'	, 'female'	,	11	,	17		,	10			,		'RAILWAY3'	,		'Khá'       ,	'Hanpro' ),
                    ('Nguyễn Văn Hùng',  '2001-10-17'	, 'male'	,	20	,	12		,	20			,		'RAILWAY4'	,		'Tốt'       ,	'Hung'   ),
                    ('Nguyễn Văn Huy' ,  '1997-011-27'	, 'male'	,	16	,	20		,	16			,		'RAILWAY5'	,		'Tốt'	    ,   'Huypro' ),
                    ('Nguyễn Thị Hậu' ,  '1999-04-07'	, 'female'	,	19	,	10		,	19			,		'RAILWAY6'	,		'Khá'       ,	'Haupro' ),
                    ('Nguyễn Văn Bi'  ,  '2000-01-07'	, 'male'	,	20	,	19		,	18			,		'RAILWAY7'	,		'Yếu'       ,	'Bipro'  ),
                    ('Nguyễn Thị Hải' ,  '1992-10-19'	, 'female'	,	15	,	20		,	17			,		'RAILWAY8'	,		'Trung bình',	'Khaipro'),
                    ('Nguyễn Văn Huấn',  '2001-06-22'	, 'unknown'	,	20	,	19		,	20			,		'RAILWAY9'	,		'Khá'       ,	'Huanpro'),
					('Nguyễn Thị Vy'  ,  '1998-06-24'	, 'female'	,	20	,	19		,	15			,		'RAILWAY10'	,		'Tốt'       ,	'Tungpro');
   
INSERT INTO DataTypes	(   `Name`          ,  	   `Code`, 		ModifiedDate	)
VALUE 				    ('Action Films' 	, 'RAI01'	,	'2021-03-25'	),
                        ('Adventure Films'	, 'RAI02'	,	'2019-12-14'	),
                        ('Comedy Films' 	, 'RAI03'	,	'2021-03-20'	),
                        ('Gangster Films'	, 'RAI04'	,	'2020-11-28'	),
                        ('Drama Films'	    , 'RAI05'	,	'2029-10-15'	),
                        ('Hisorical Films'	, 'RAI06'	,	'2021-10-05'	),
                        ('Horror Films'		, 'RAI07'	,	'2021-09-15'	),
                        ('Dance Films'		, 'RAI08'	,	'2019-02-22'	),
                        ('Westerns Films'	, 'RAI09'	,	'2020-09-03'	),
                        ('Sports Films'		, 'RAI10'	,	'2021-07-19'	);
                        
INSERT INTO DataTypes2 	(   `Name`	    ,   BirthDate		, Gender	, IsDeletedFlag	)
VALUE 				('Sitcom movie'     ,  '1998-04-29'		, 	'0'		,		'0'			),                    
					('Family movie'	    ,  '2000-05-09'		, 	'0'		,		'1'			),
                    ('Cartoon'	        ,  '1995-06-22'		, 	'1'		,		'0'			),
                    ('Horror movie'		,  '1996-07-24'		, 	'1'		,		'1'			),
                    ('War Films'		,  '1996-08-05'		, 	'2'		,		'0'			),
                    ('Tragedy movie'	,  '2000-09-08'		, 	'1'		,		'1'			),
                    ('Comedy'	        ,  '2002-10-11'		, 	'0'		,		'1'			),
                    ('Documentary'	    ,  '2001-11-12'		, 	'0'		,		'0'			),
                    ('Sitcom movie'	    ,  '1999-11-13'		, 	'0'		,		'0'			),
					('Romance movie'	,  '2000-11-13'		, 	'1'		,		'1'			);
                        
                        
              
                        
                        
-- Question 2: Viết lệnh để lấy ra tất cả các thực tập sinh đã vượt qua bài test đầu vào, nhóm chúng thành các tháng sinh khác nhau       
SELECT *
FROM `account` 
WHERE  (group_concat(username)
Month (CreateDate)
GROUP BY 
	 Month(CreateDate);

    
-- Question 3: Viết lệnh để lấy ra thực tập sinh có tên dài nhất, lấy ra các thông tin sau: tên, tuổi, các thông tin cơ bản (như đã được định nghĩa trong table)
SELECT *
FROM  Trainee
WHERE CHAR_LENGTH(Full_Name) = (SELECT  MAX(CHAR_LENGTH(Full_Name))  
                               FROM  Trainee);
                            
-- Question 4: Viết lệnh để lấy ra tất cả các thực tập sinh là ET, 1 ET thực tập sinh là những người đã vượt qua bài test đầu vào và thỏa mãn số điểm như sau: `ET_IQ + ET_Gmath>=20
 ET_IQ>=8
 ET_Gmath>=8
 ET_English>=18
 
 SELECT *
 FROM Trainee
 WHERE ET_IQ + ET_Gmath >=20 AND 
 ET_IQ>=8 AND 
 ET_Gmath>=8 AND 
 ET_English>=18;
 
 -- Question 5: xóa thực tập sinh có TraineeID = 3
 DELETE 
 FROM Trainee
 WHERE TraineeID = 3;
 
 -- Question 6: Thực tập sinh có TraineeID = 5 được chuyển sang lớp "2". Hãy cập nhật thông tin vào `database`
 UPDATE Trainee
 SET Training_Class=2
 WHERE TraineeID=5;





      

 