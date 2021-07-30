CREATE DATABASE Assignment1_2VN_Duc;

USE Assignment1_2VN_Duc;
---- Exercise1 ---
CREATE TABLE trainee(
	TraineeID INT UNSIGNED AUTO_INCREMENT,
	Full_name nvarchar(40),
    Birth_Date DATE,
    Gender ENUM( 'male', 'female','Unknown') NOT NULL,
	ET_IQ INT,
    ET_Gmath INT UNSIGNED,
    ET_english INT UNSIGNED,
    Tranining_Class INT UNSIGNED,
    Evaluation_Notes VARCHAR(100),
    VTI_Account CHAR(20) NOT NULL UNIQUE

);

--- Exercise 2 ;
CREATE TABLE DataTypes(
ID INT PRIMARY KEY AUTO_INCREMENT,
`Name` char(20),
`Code` char(5),
ModifiedDate Datetime
);
-- Exercise 3;
CREATE TABLE DataTypes2(
	ID INT PRIMARY KEY AUTO_INCREMENT ,
    `Name`  char(20),
    Gender  ENUM('male','Fermale','Unknown'),
    IsDeleteFlag bit
)
.......