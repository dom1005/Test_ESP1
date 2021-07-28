CREATE database Manager;
Use Manager;

CREATE TABLE Customer(
	customer_id int,
    first_name varchar(50),
    last_name varchar(20),
    email_address varchar(50),
    number_of_complaints int
);

CREATE TABLE Sales(
	purchase_number int,
	date_of_purchase date,
    customer_id int,
    item_code int
);
CREATE TABLE Item(
	item_code int ,
    item varchar(10),
    unit_price_usd int ,
    company_id int,
    headquaters_phone_number varchar(50)
);
CREATE TABLE Department(
	department_id int,
    department_name varchar(20)

);
CREATE TABLE `Positon`(
	position_id int,
    position_name varchar(20)	
);
CREATE TABLE `Account`(
	account_id int,
    email nvarchar(50),
    user_name varchar(20),
    full_name varchar(40),
    department_id int,
    position_id int,
    create_date date
);
CREATE TABLE `Group`(
	group_id int,
    group_name nvarchar(30),
    create_id int,
    create_date date
);
CREATE TABLE GroupAcount(
	group_id int,
    account_id int,
    join_date date
);
CREATE TABLE TypeQuestion(
	type_id int,
    type_name nvarchar(50)
);	
CREATE TABLE CategoryQuestion(
	catogory_id int,
    catogory_name nvarchar(50)
);
CREATE	TABLE Question(
	question_id int,
    content nvarchar(50),
    category_id int,
    type_id int,
    creator_id int,
    create_date date
);
CREATE TABLE Answer(
	answer_id int,
    content nvarchar(50),
    question_id int,
    isCorrect varchar(4)
);
CREATE TABLE Exam(
	exam_id int,
    code int,
    tilte nvarchar(10),
    category_id int,
    duration time,
    create_date date
);

CREATE TABLE Question(
	exam_id int,
    question_id int
);


