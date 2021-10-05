DROP DATABASE IF EXISTS Testing_System_Assignment_3;
CREATE DATABASE		Testing_System_Assignment_3;
USE				Testing_System_Assignment_3;

-- Tạo bảng Department
CREATE TABLE IF NOT EXISTS Department(
	DepartmentID 			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    DepartmentName 			NVARCHAR(30) NOT NULL UNIQUE KEY
);

-- Tạo bảng Posittion
CREATE TABLE IF NOT EXISTS `Position` (
	PositionID				TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    PositionName			ENUM('Dev','Test','Scrum Master','PM') NOT NULL UNIQUE KEY
);

--  Tạo bảng: Account
CREATE TABLE IF NOT EXISTS `Account`(
	AccountID				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Email					VARCHAR(50) NOT NULL UNIQUE KEY,
    Username				VARCHAR(50) NOT NULL UNIQUE KEY,
    FullName				NVARCHAR(50) NOT NULL,
    DepartmentID 			TINYINT UNSIGNED NOT NULL,
    PositionID				TINYINT UNSIGNED NOT NULL,
    CreateDate				DATETIME,
    FOREIGN KEY(DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY(PositionID)   REFERENCES `Position`(PositionID)
);

--  Tạo bảng: Group
CREATE TABLE IF NOT EXISTS `Group`(
	GroupID					TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    GroupName				NVARCHAR(50) NOT NULL UNIQUE KEY,
    CreatorID				INT UNSIGNED,
    CreateDate				DATETIME,
    FOREIGN KEY(CreatorID) 	REFERENCES `Account`(AccountId)
);

--  Tạo bảng GroupAccount
CREATE TABLE IF NOT EXISTS GroupAccount(
	GroupID					TINYINT UNSIGNED NOT NULL,
    AccountID				INT UNSIGNED NOT NULL,
    JoinDate				DATETIME,
    FOREIGN KEY(GroupID) REFERENCES `Group`(GroupID) 
);

-- c Tạo bảng TypeQuestion
CREATE TABLE IF NOT EXISTS TypeQuestion (
    TypeID 			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    TypeName 		ENUM('Essay','Multiple-Choice')
);

--  Tạo bảng CategoryQuestion
CREATE TABLE IF NOT EXISTS CategoryQuestion(
    CategoryID				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    CategoryName			NVARCHAR(50) NOT NULL UNIQUE KEY
);

--  Tạo bảng Question
CREATE TABLE IF NOT EXISTS Question(
    QuestionID				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Content					NVARCHAR(100) NOT NULL,
    CategoryID				INT UNSIGNED NOT NULL,
    TypeID					INT UNSIGNED NOT NULL,
    CreatorID				INT UNSIGNED NOT NULL,
    CreateDate				DATETIME,
    FOREIGN KEY(CategoryID) 	REFERENCES CategoryQuestion(CategoryID),
    FOREIGN KEY(TypeID) 		REFERENCES TypeQuestion(TypeID),
    FOREIGN KEY(CreatorID) 		REFERENCES `Account`(AccountId) 
);

--  Tạo bảng Answer
CREATE TABLE IF NOT EXISTS Answer(
    AnswerID				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Content					NVARCHAR(100) NOT NULL,
    QuestionID				INT UNSIGNED NOT NULL,
    isCorrect				Boolean,
    FOREIGN KEY(QuestionID) REFERENCES Question(QuestionID)
);

--  Tạo bảng Exam
CREATE TABLE IF NOT EXISTS Exam(
    ExamID					INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `Code`					VARCHAR(10),
    Title					NVARCHAR(50) ,
    CategoryID				INT UNSIGNED ,
    Duration				INT UNSIGNED,
    CreatorID				INT UNSIGNED,
    CreateDate				DATETIME,
    FOREIGN KEY(CategoryID) REFERENCES CategoryQuestion(CategoryID),
    FOREIGN KEY(CreatorID) 	REFERENCES `Account`(AccountId)
);

--  Tạo bảng ExamQuestion
CREATE TABLE IF NOT EXISTS ExamQuestion(
    ExamID				INT UNSIGNED ,
	QuestionID			INT UNSIGNED,
    FOREIGN KEY(QuestionID) REFERENCES Question(QuestionID),
    FOREIGN KEY(ExamID)     REFERENCES Exam(ExamID)
);