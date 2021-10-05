DROP DATABASE IF EXISTS TestManagemen_1;
CREATE DATABASE		TestManagemen_1;
USE				TestManagemen_1;

CREATE TABLE	Department(
	DepartmentID		INT,	
	DepartmentName		VARCHAR(50)
);

CREATE TABLE	`Position`(
	PositionID			INT,	
	PositionName		VARCHAR(50)
);

CREATE TABLE	`Account`(
	AccountID			INT,
	Email				VARCHAR(50),
	Username			VARCHAR(50),	
	FullName			VARCHAR(100),
	DepartmentID		INT,
	PositionID			INT,
    CreateDate			DATE
);

CREATE TABLE	`Group`(
	GroupID				INT,
	GroupName			VARCHAR(50),
	CreatorID			INT,	
	CreateDate			DATE
);
CREATE TABLE	 GroupAccount(
	GroupID				INT,
	AccountID			INT,
	JoinDate			DATE
);
CREATE TABLE	TypeQuestion(
	TypeID				INT,
    TypeName			VARCHAR(50)
);
    
CREATE TABLE	CategoryQuestion(
	CategoryID			INT,
    CategoryName		VARCHAR(50)
);
    
CREATE TABLE	 Question(
    QuestionID	 		INT,
	Content				VARCHAR(500),
	CategoryID			INT,	
	TypeID				INT,
	CreatorID			INT,
    CreateDate			DATE
);

 CREATE TABLE	  Answer(
    AnswerID	 		INT,
	Content				VARCHAR(500),
	QuestionID			INT,	
	isCorrect			VARCHAR(100)
	
);

 CREATE TABLE	 Exam(
    ExamID	 			INT,
	`Code`				INT	,
	Title				VARCHAR(100),	
	CategoryID			INT,
	Duration 			DATE,
    CreatorID			INT,
    CreateDate			DATE
);

CREATE TABLE	  ExamQuestion(
	ExamID	 			INT,
	QuestionID			INT
);


        