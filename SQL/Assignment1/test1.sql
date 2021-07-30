-- create database
-- DROP DATABASE IF EXISTS manager;
CREATE DATABASE manager;
USE manager;

-- create table: Department
CREATE TABLE Department (
	department_id 	TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    department_name	NVARCHAR(50) NOT NULL UNIQUE KEY
);


-- create table: Position
CREATE TABLE `Position` (
	position_id		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    position_name	ENUM('Dev', 'Test', 'Scrum Master', 'PM') NOT NULL UNIQUE KEY
);

-- create table: Account
CREATE TABLE `Account` (
	account_id 		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    email 			NVARCHAR(50) NOT NULL UNIQUE KEY,
    username 		NVARCHAR(50) NOT NULL,
    full_name 		NVARCHAR(50) NOT NULL,
    department_id 	TINYINT UNSIGNED NOT NULL,
    position_id		TINYINT UNSIGNED NOT NULL,
    create_date 	DATETIME DEFAULT NOW(),
    FOREIGN KEY (department_id) REFERENCES Department (department_id),
    FOREIGN KEY (position_id) REFERENCES `Position` (position_id)
);

-- create table: Group
CREATE TABLE `Group` (
	group_id 		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    group_name		NVARCHAR(50) NOT NULL UNIQUE KEY,
    creator_id		TINYINT UNSIGNED NOT NULL UNIQUE KEY,
    create_date		DATETIME DEFAULT NOW(),
    FOREIGN KEY (creator_id) REFERENCES `Account`(account_id)
    
);

-- create table: GroupAcount
CREATE TABLE GroupAcount(
	group_id 	TINYINT UNSIGNED ,
    account_id 	TINYINT UNSIGNED NOT NULL,
    join_date 	DATE,
    PRIMARY KEY (group_id, account_id),
    FOREIGN KEY (group_id) REFERENCES `Group` (group_id),
    FOREIGN KEY (account_id) REFERENCES `Account` (account_id)
);

-- create table: TypeQuestion
CREATE TABLE TypeQuestion(
	type_id 	TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    type_name 	ENUM('Q&A', 'Multiple-Choice') UNIQUE KEY
);	

-- create table: CategoryQuestion
CREATE TABLE CategoryQuestion(
	category_id 	TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    category_name 	NVARCHAR(50) NOT NULL UNIQUE KEY
);

-- create table: Question
CREATE	TABLE Question(
	question_id 	INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    content 		NVARCHAR(100) NOT NULL,
    category_id 	TINYINT UNSIGNED NOT NULL,
    type_id 		TINYINT UNSIGNED NOT NULL,
    creator_id 		TINYINT UNSIGNED NOT NULL,
    create_date 	DATETIME DEFAULT NOW(),
    FOREIGN KEY (category_id)
        REFERENCES CategoryQuestion (category_id),
    FOREIGN KEY (type_id)
        REFERENCES TypeQuestion (type_id),
	FOREIGN KEY (creator_id) 
		REFERENCES `Account`(account_id)
);

-- create table: Answer
CREATE TABLE Answer(
    answer_id 		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    content 		NVARCHAR(100) NOT NULL,
    question_id 	TINYINT UNSIGNED NOT NULL,
    isCorrect 		BIT  DEFAULT 0,
    FOREIGN KEY (question_id)
        REFERENCES Question (question_id)
);

-- create table: Exam
CREATE TABLE Exam(
	exam_id 		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `code` 			CHAR(10) NOT NULL,
    tilte 			NVARCHAR(50) NOT NULL,
    category_id 	TINYINT UNSIGNED NOT NULL,
    duration 		TINYINT UNSIGNED NOT NULL,
    creator_id 		TINYINT UNSIGNED NOT NULL,
    create_date 	DATETIME DEFAULT NOW(),
    FOREIGN KEY (category_id)
        REFERENCES CategoryQuestion (category_id),
	FOREIGN KEY (creator_id) 
		REFERENCES `Account`(account_id)
);

-- create table: Question
CREATE TABLE ExamQuestion(
    exam_id 		TINYINT UNSIGNED NOT NULL,
    question_id 	INT UNSIGNED NOT NULL,
    FOREIGN KEY (question_id)
        REFERENCES Question (question_id),
    FOREIGN KEY (exam_id)
        REFERENCES Exam (exam_id),
        PRIMARY KEY (exam_id,question_id)
);
    
    
INSERT INTO Department(DepartmentName) 
VALUES	(N'Marketing' ),
		(N'Sale' ),
		(N'Nhân viên' ),
		(N'Kỹ thuật' ),
		(N'Giám đốc' );
        
INSERT INTO Position (PositionName ) 
VALUES	('QuanLy' ),
		('KiemSat' ),
		('KeToan '),
		('CongNhan' ); 
        
INSERT INTO `Account`(Email , Username, FullName , DepartmentID , PositionID, CreateDate)
VALUES		('User1@gmail.com', 'User1', 'Fullname1', '1' , '1', '2021-29-07'),
			('User2@gmail.com', 'User2', 'Fullname2', '2' , '2', '2021-29-07'),
			('User3@gmail.com', 'User3', 'Fullname3', '3' , '2', '2021-29-07'),
			('User4@gmail.com', 'User4', 'Fullname4', '4' , '4', '2021-29-07'),
			('User5@gmail.com', 'User5', 'Fullname5', '5' , '5', '2021-29-07');
            
INSERT INTO `Group` ( GroupName , CreatorID , CreateDate)
VALUES	('Ketoan1', 1, '2021-10-05'),
		('CôngNhan1' , 2, '2021-10-05'),
		('QuanLy1' 	, 3, '2021-10-05'),
		('CongNhan2', 4, '2021-10-05'),
		('QuanLy2'	, 5, '2021-10-05');
 
INSERT INTO `GroupAccount` ( GroupID , AccountID , JoinDate )
VALUES	( 1 , 1,'2021-11-05'),
		( 2 , 2,'2021-11-05'),
		( 3 , 3,'2021-11-05'),
		( 4 , 4,'2021-11-05'),
		( 5 , 5,'2021-11-05');
        
INSERT INTO TypeQuestion (TypeName ) 
VALUES	('Q&A' ), 
		('Multiple-Choice' ); 
        
INSERT INTO CategoryQuestion (CategoryName )
VALUES	('Toan'),
		('Van'),
		('Anh'),
		('Ly'),
		('Hoa');
        
INSERT INTO Question (Content , CategoryID, TypeID , CreatorID, CreateDate )
VALUES	('Toan' , 1 , 2 , '1' ,'2021-28-07'),
		('Van' , 2 , 1 , '2' ,'2021-28-07'),
		('Anh' , 2 , '3' ,'2021-28-07'),
		('Ly' , 4 , 2 , '4' ,'2021-28-07'),
		('Hoa' , 5 , 1 , '5' ,'2021-28-07');
        
INSERT INTO Answer ( Content , QuestionID , isCorrect )
VALUES	('DapAn Toan' , 1 , 0),
		('DapAn Van' , 2 , 1),
		('DapAn Anh', 3 , 0 ),
		('DapAn Ly', 4 , 1 ),
		('DapAn Hoa', 5 , 1 );

INSERT INTO Exam (`Code` , Title , CategoryID, Duration , CreatorID , CreateDate )
VALUES	('TOAN' 	, 'Bai Toan'	, 1 , 60 , '1' ,'2021-30-07'),
		('VAN'		, 'Bai Van'	, 2 , 60 , '2' ,'2021-30-07'),
		('ANH'	, 'Bai Anh', 3 , 90 , '3' ,'2021-30-07'),
		('LY'		, 'Bai Ly'	, 4 , 60 , '4' ,'2021-30-07'),
		('HOA'		, 'Bai Hoa'	, 5 , 180, '5' ,'2021-30-07');

INSERT INTO ExamQuestion(ExamID , QuestionID ) 
VALUES	( 1 , 1 ),
		( 2 , 2 ), 
		( 3 , 3 ), 
		( 4 , 4 ), 
		( 5 , 5 );    
