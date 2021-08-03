SELECT * FROM assignment1_2vn_duc.trainee;
INSERT INTO trainee (TraineeID, Full_name, Birth_Date, Gender, ET_IQ, ET_Gmath, ET_english, Tranining_Class, Evaluation_Notes, vti_account) VALUES ('1', 'NguyenVanA', '2000/3/20', 'Male', '15', '16', '19', 'AB12', 'Kha', '1');
INSERT INTO trainee (TraineeID, Full_name, Birth_Date, Gender, ET_IQ, ET_Gmath, ET_english, Tranining_Class, Evaluation_Notes, vti_account) VALUES ('2', 'NguyenVanB', '1993/9/24', 'male', '16', '13', '20', 'AB12', 'Kha', '2');
INSERT INTO trainee (TraineeID, Full_name, Birth_Date, Gender, ET_IQ, ET_Gmath, ET_english, Tranining_Class, Evaluation_Notes, vti_account) VALUES ('3', 'NguyenVanC', '1992/4/12', 'Male', '17', '18', '20', 'AB14', 'Gioi', '3');
INSERT INTO trainee (TraineeID, Full_name, Birth_Date, Gender, ET_IQ, ET_Gmath, ET_english, Tranining_Class, Evaluation_Notes, vti_account) VALUES ('4', 'NguyenVanD', '1995/12/13', 'Male', '18', '19', '20', 'AB14', 'Gioi', '4');
INSERT INTO trainee (TraineeID, Full_name, Birth_Date, Gender, ET_IQ, ET_Gmath, ET_english, Tranining_Class, Evaluation_Notes, vti_account) VALUES ('5', 'NguyenVanF', '1991/11/5', 'male', '20', '20', '19', 'AB15', 'SuatXac', '5');
INSERT INTO trainee (TraineeID, Full_name, Birth_Date, Gender, ET_IQ, ET_Gmath, ET_english, Tranining_Class, Evaluation_Notes, vti_account) VALUES ('6', 'NguyenVanE', '2003/12/11', 'Male', '10', '5', '5', 'AB15', 'Yeu', '6');
INSERT INTO trainee (TraineeID, Full_name, Birth_Date, Gender, ET_IQ, ET_Gmath, ET_english, Tranining_Class, Evaluation_Notes, vti_account) VALUES ('7', 'NguyenVanG', '2001/9/8', 'male', '7', '10', '2', 'AB16', 'Yeu', '7');
INSERT INTO trainee (TraineeID, Full_name, Birth_Date, Gender, ET_IQ, ET_Gmath, ET_english, Tranining_Class, Evaluation_Notes, vti_account) VALUES ('8', 'NguyenVanH', '2000/8/20', 'Male', '20', '20', '50', 'AB16', 'SuatXac', '8');
INSERT INTO trainee (TraineeID, Full_name, Birth_Date, Gender, ET_IQ, ET_Gmath, ET_english, Tranining_Class, Evaluation_Notes, vti_account) VALUES ('9', 'NguyenVanJ', '2000/7/12', 'male', '15', '18', '20', 'AB17', 'Kha', '9');
INSERT INTO trainee (TraineeID, Full_name, Birth_Date, Gender, ET_IQ, ET_Gmath, ET_english, Tranining_Class, Evaluation_Notes, vti_account) VALUES ('10', 'NguyenVanK', '2003/8/12', 'male', '20', '19', '20', 'AB17', 'SuatXac', '10');
-- 3 --
select * 
from trainee
where length(full_name) = (select max(length(FULL_name)) from trainee);

-- 4 -- 
select * 
from trainee
where ET_IQ >=8 and	ET_Gmath >=8 and ET_English >=18 and (ET_IQ + ET_Gmath >=20);

-- 5 ---
Delete
from trainee
where TraineeID = 3;