DROP DATABASE IF EXISTS TestManagemen_2;
CREATE DATABASE		TestManagemen_2;
USE				TestManagemen_2;

CREATE TABLE	Department(
	DepartmentID			VARCHAR(50),	
	DepartmentName			VARCHAR(50)
);

CREATE TABLE	`Position`(
	PositionID			VARCHAR(50),	
	PositionName		VARCHAR(50)
);

CREATE TABLE	`Account`(
	AccountID			INT,
	Email				VARCHAR(50),
	Username			VARCHAR(50),	
	FullName			VARCHAR(100),
	PositionID			VARCHAR(100),
    CreateDate			DATE
);

CREATE TABLE	`Group`(
	GroupID				VARCHAR(50),
	GroupName			VARCHAR(50),
	CreatorID			INT,	
	CreateDate			DATE
);
CREATE TABLE	 GroupAccount(
	GroupID				VARCHAR(50),
	AccountID			VARCHAR(50),
	JoinDate			DATE
);
CREATE TABLE	TypeQuestion(
	TypeID				VARCHAR(100),
    TypeName			VARCHAR(50)
    );
    
CREATE TABLE	CategoryQuestion(
	CategoryID			VARCHAR(100),
    CategoryName		VARCHAR(50)
    );
    
CREATE TABLE	 Question(
    QuestionID	 		VARCHAR(100),
	Content				VARCHAR(500),
	CategoryID			VARCHAR(100),	
	TypeID				VARCHAR(100),
	CreatorID			INT,
    CreateDate			DATE
);

 CREATE TABLE	  Answer(
    AnswerID	 		VARCHAR(100),
	Content				VARCHAR(500),
	QuestionID			VARCHAR(100),	
	isCorrect			VARCHAR(100)
	
);

 CREATE TABLE	 Exam(
    ExamID	 			VARCHAR(100),
	`Code`				INT	,
	Title				VARCHAR(100),	
	CategoryID			VARCHAR(100),
	Duration 			INT,
    CreatorID			INT,
    CreateDate			DATE
);

CREATE TABLE	  ExamQuestion(
	ExamID	 			VARCHAR(100),
	QuestionID			VARCHAR(500)
    );
