DROP DATABASE IF EXISTS TestManagemen_2;
CREATE DATABASE		TestManagemen_2;
USE				TestManagemen_2;

CREATE TABLE	Department(
	DepartmentID		SMALLINT UNSIGNED PRIMARY KEY,	
	DepartmentName		VARCHAR(50) CHECK (LENGTH(DepartmentName) >=4 )
);

CREATE TABLE	`Position`(
	PositionID			SMALLINT UNSIGNED,	
	PositionName		VARCHAR(50) CHECK (LENGTH(PositionName) >=2 )
);

CREATE TABLE	`Account`(
	AccountID			SMALLINT UNSIGNED,
	Email				VARCHAR(50),
	Username			VARCHAR(50) CHECK(LENGTH(Username) >=4),	
	FullName			VARCHAR(50) CHECK(LENGTH(FullName) >=7),
	DepartmentID	    SMALLINT UNSIGNED,
	PositionID		     SMALLINT UNSIGNED,
    CreateDate			DATETIME
);

CREATE TABLE	`Group`(
	GroupID				SMALLINT UNSIGNED,
	GroupName			VARCHAR(50) CHECK (LENGTH(GroupName) >=6 ),
	CreatorID			TINYINT UNIQUE,	
	CreateDate			DATETIME
);
CREATE TABLE	 GroupAccount(
	GroupID				SMALLINT UNSIGNED,
	AccountID			SMALLINT UNSIGNED,
	JoinDate			DATETIME
);
CREATE TABLE	TypeQuestion(
	TypeID				INT,
    TypeName			VARCHAR(100)
);
    
CREATE TABLE	CategoryQuestion(
	CategoryID			SMALLINT UNSIGNED NOT NULL,
    CategoryName		VARCHAR(50)
);
    
CREATE TABLE	 Question(
    QuestionID	 		SMALLINT UNSIGNED PRIMARY KEY,
	Content				VARCHAR(500),
	CategoryID			SMALLINT UNSIGNED,	
	TypeID				SMALLINT UNSIGNED,
	CreatorID			SMALLINT UNSIGNED,
    CreateDate			DATETIME
);

 CREATE TABLE	  Answer(
    AnswerID	 		SMALLINT UNSIGNED,
	Content				VARCHAR(500),
	QuestionID		    SMALLINT UNSIGNED,	
	isCorrect			ENUM ('Đúng','Sai')
);

 CREATE TABLE	 Exam(
    ExamID	 			SMALLINT UNSIGNED PRIMARY KEY,
	`Code`				SMALLINT,
	Title				VARCHAR(100),	
	CategoryID			SMALLINT UNSIGNED,
	Duration 			DATETIME,
    CreatorID			SMALLINT UNSIGNED,
    CreateDate			DATETIME
);

CREATE TABLE	  ExamQuestion(
	ExamID	 			SMALLINT UNSIGNED,
	QuestionID			SMALLINT UNSIGNED
);

