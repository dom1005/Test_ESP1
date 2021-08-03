USE assignment1_2vn_duc;
CREATE TABLE trainee(
	TraineeID SMALLINT UNSIGNED PRIMARY KEY  AUTO_INCREMENT,
	Full_name NVARCHAR(40) NOT NULL,
    Birth_Date DATE,
    Gender ENUM( 'male', 'female','Unknown') NOT NULL,
	ET_IQ FLOAT,
    CHECK(ET_IQ <=20),
    ET_Gmath TINYINT UNSIGNED,
    check(ET_Gmath <= 20),
    ET_english INT UNSIGNED,
    check(ET_English <=50),
    Tranining_Class CHAR(30) NOT NULL,
    Evaluation_Notes VARCHAR(200)

);
alter table	trainee
add column vti_account SMALLINT unsigned unique NOT NULL;

-- ex2 --
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