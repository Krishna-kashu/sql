CREATE DATABASE first_data;
CREATE DATABASE second_db;
CREATE DATABASE third_db;

USE second_db;
CREATE TABLE first_table(id int, person_name varchar(20), phone_number bigint);
CREATE TABLE second_TABLE(ID INT, PERSON_NAME VARCHAR(20), PHONE_NUMBER BIGINT);
CREATE TABLE timings_table(wakeup_time date, sleep_time date);

/*2 tables 6 columns*/
CREATE TABLE PERSONAL_INFO(ID INT, FIRST_NAME VARCHAR(20), LAST_NAME VARCHAR(20), GENDER CHAR, ADDRESS VARCHAR(30), PIN_CODE INT, PHONE_NO BIGINT, PWD BOOLEAN);
CREATE TABLE PROFESSIONAL(EMP_ID INT, EMP_NAME VARCHAR(30), JOB_TITLE VARCHAR(20), DEPARTMENT VARCHAR(10), COMP_NMAE VARCHAR(10), JOB_LOCATION VARCHAR(10), YEAR_OF_EXPERIENCE DATETIME);

DESC personal_info;
DESC professional;
/*1) CREATE 5 Tables with 5 columns.
By using ALTER
1) Add 2 columns        	    ALTER TABLE TABLE_NMAE ADD COLUMN DATATYPE
2) drop 1 column  				ALTER TABLE TABLE_NMAE DROP COLUMN
3) rename 3 columns     		ALTER TABLE TABLE_NAME RENAME COLUMN OLD_NAME TO NEW_NAME 
4) change 3 columns datatype.		ALTER TABLE TABLE_NAME MODIFY COLUMN_NAME NEW_DATATYPE                                        */

CREATE TABLE SKILLS(SKILL_ID INT, EMP_ID INT, SKILL_NMAE VARCHAR(10), PROFICIENCY_LEVEL VARCHAR(20), CERTIFIED BOOLEAN, YEARS_OF_EXPERIENCE INT);
CREATE TABLE CERTIFICATIONS(CERT_ID INT, EMP_ID INT, CERT_NAME VARCHAR(10),ISSUING_ORG VARCHAR(20),ISSUE_DATE DATE,EXPIRY_DATE DATE);
CREATE TABLE PROJECT(PROJ_ID INT,EMP_ID INT,PROJ_NAME VARCHAR(20),ROLE_NAME VARCHAR(20),TECHNOLOGY_USED VARCHAR(20),DURATION INT);

ALTER TABLE PERSONAL_INFO ADD AGE INT;
ALTER TABLE PERSONAL_INFO ADD DOB DATE;
DESC PERSONAL_INFO;
ALTER TABLE PROFESSIONAL ADD CMP_NAME VARCHAR(15);
ALTER TABLE PROFESSIONAL ADD IS_HYBRID BOOLEAN;
DESC PROFESSIONAL;
ALTER TABLE SKILLS ADD SKILL_NAME VARCHAR(10);
ALTER TABLE SKILLS ADD CERTIFIED BOOLEAN;
DESC SKILLS;
ALTER TABLE CERTIFICATIONS ADD CERT_LEVEL VARCHAR(10);
ALTER TABLE CERTIFICATIONS ADD CERTFICATION_TYPE VARCHAR(10);
DESC PROJECT;
DESC CERTIFICATIONS;
ALTER TABLE PROJECT ADD PROJECT_STATUS VARCHAR(20);
ALTER TABLE PROJECT ADD TEAM_SIZE INT;
/*DRP*/
ALTER TABLE PERSONAL_INFO DROP DOB;
ALTER TABLE PROFESSIONAL DROP COMP_NMAE;
ALTER TABLE SKILLS DROP SKILL_NMAE;
ALTER TABLE CERTIFICATIONS DROP CERT_LEVEL;
ALTER TABLE PROJECT DROP ROLE_NAME;
/*RENAME*/
ALTER TABLE PERSONAL_INFO RENAME COLUMN PWD TO CITIZEN;
ALTER TABLE PERSONAL_INFO RENAME COLUMN PHONE_NO TO PH_NO;
ALTER TABLE PERSONAL_INFO RENAME COLUMN CITIZEN TO INDIAN_CITIZEN;

ALTER TABLE PROFESSIONAL RENAME COLUMN JOB_LOCATION TO COMP_NAME;
ALTER TABLE PROFESSIONAL RENAME COLUMN CMP_NAME TO JOB_LOCATION;
ALTER TABLE PROFESSIONAL RENAME COLUMN IS_HYBRID TO HYBRID_JOB;

ALTER TABLE SKILLS RENAME COLUMN SKILL_NAME TO PROFICIENCY_LEVE;
ALTER TABLE SKILLS RENAME COLUMN PROFICIENCY_LEVEL TO SKILL_NAME;
ALTER TABLE SKILLS RENAME COLUMN PROFICIENCY_LEVE TO PROFICIENCY_LEVEL;

ALTER TABLE CERTIFICATIONS RENAME COLUMN ISSUING_ORG TO CERT_TYPE;
ALTER TABLE CERTIFICATIONS RENAME COLUMN CERTFICATION_TYPE TO ISSUING_ORG;
ALTER TABLE CERTIFICATIONS RENAME COLUMN CERT_NAME TO CERTFICATION_NAME;

ALTER TABLE PROJECT RENAME COLUMN DURATION TO PROJECT_DURATION;
ALTER TABLE PROJECT RENAME COLUMN PROJ_NAME TO PROJECT_NAME;
ALTER TABLE PROJECT RENAME COLUMN PROJ_ID TO PROJECT_ID;

/*CHANGING DATATYPE*/

ALTER TABLE PERSONAL_INFO MODIFY COLUMN GENDER VARCHAR(6);
ALTER TABLE PERSONAL_INFO MODIFY COLUMN PH_NO VARCHAR(10);
ALTER TABLE PERSONAL_INFO MODIFY COLUMN PH_NO BIGINT;

ALTER TABLE PROFESSIONAL MODIFY COLUMN YEAR_OF_EXPERIENCE INT;
ALTER TABLE PROFESSIONAL MODIFY COLUMN JOB_TITLE VARCHAR(15);
ALTER TABLE PROFESSIONAL MODIFY COLUMN EMP_NAME VARCHAR(20);

ALTER TABLE SKILLS MODIFY COLUMN SKILL_NAME VARCHAR(10);
ALTER TABLE SKILLS MODIFY COLUMN PROFICIENCY_LEVEL INT;
ALTER TABLE SKILLS MODIFY COLUMN PROFICIENCY_LEVEL VARCHAR(15);

ALTER TABLE CERTIFICATIONS MODIFY COLUMN CERT_TYPE VARCHAR(15);
ALTER TABLE CERTIFICATIONS MODIFY COLUMN ISSUING_ORG BIGINT;
ALTER TABLE CERTIFICATIONS MODIFY COLUMN ISSUING_ORG VARCHAR(15);

ALTER TABLE PROJECT MODIFY COLUMN PROJECT_STATUS VARCHAR(30);
ALTER TABLE PROJECT MODIFY COLUMN TECHNOLOGY_USED VARCHAR(30);
ALTER TABLE PROJECT MODIFY COLUMN PROJECT_NAME VARCHAR(20);

4) TRUNCATE:
DML: Data manipulation Language.
1) INSERT:

CREATE TABLE laptop_info(id int, laptop_name varchar(20),specifications varchar(20),
price bigint, model varchar(20), warranty varchar(15), screen_touch boolean); 

SELECT * FROM laptop_info;

1)INSERT:
/*Syntax for inserting the data into table
INSERT INTO table_name values(data1, data2, data3,....);*/

INSERT INTO laptop_info values(1, 'HP', 'core-i5', 50000,
'2025', '12months', false);

INSERT INTO laptop_info(id,laptop_name,specifications,price,model,warranty,screen_touch)
values(2,'Dell','core-i7',90000,2023,'18months',true);

INSERT INTO laptop_info(laptop_name,specifications,price,model,warranty,screen_touch,id)
values('Lenovo','intel-core-i5',80000,2024,'20months',false,3);

INSERT INTO laptop_info values(1, 'HP', 'core-i5', 50000,
'2025a', '12months', false);

INSERT INTO laptop_info(id,laptop_name, price) values(4,'msi',75000);

DESC laptop_info;
SELECT * FROM laptop_info;


DDL:
1)CREATE
2)ALTER
3)DROP
4)TRUNCATE

TRUNCATE table table_name;

TRUNCATE table laptop_info;

SELECT * FROM laptop_info;

ALTER TABLE laptop_info ADD COLUMN processor varchar(30);

ALTER TABLE laptop_info DROP column specifications;

ALTER TABLE laptop_info MODIFY COLUMN laptop_name int;

ALTER TABLE laptop_info MODIFY COLUMN model int;

ALTER TABLE laptop_info MODIFY COLUMN price varchar(30);


CREATE TABLE metro_info(id int, metro_line varchar(20),
src varchar(20), dest varchar(30), price int);

SELECT * FROM metro_info;

INSERT INTO metro_info values(1,'GreenLine','mejastic','Bsk',40);
INSERT INTO metro_info values(2,'PurpleLine','Mysoreroad','Indranagar',80);
INSERT INTO metro_info values(3,'GreenLine','nagasandra','jpnagar',70);
INSERT INTO metro_info values(4,'PurpleLine','whitefield','mejastic',60);


/*
TASK:
CREATE 3 TABLES(hospital_info, country_info, state_info, scam_info)
for each table 6 columns.
INSERT 15 data for each table.
*/

CREATE TABLE hospital_info(hospital_id INT, hospital_name VARCHAR(30),city VARCHAR(20),state VARCHAR(20),
bed_capacity INT,contact_number VARCHAR(20));

desc hospital_info;

INSERT INTO hospital_info VALUES(1, 'AIIMS Delhi', 'New Delhi', 'Delhi', 2000, '011-26588500');
SELECT * FROM hospital_info;
INSERT INTO hospital_info VALUES(2, 'Fortis Hospital', 'Bangalore', 'Karnataka', 500, '080-66214444');
INSERT INTO hospital_info VALUES(3, 'Apollo Hospital', 'Chennai', 'Tamil Nadu', 1000, '044-28293333');
INSERT INTO hospital_info VALUES(4, 'Medanta', 'Gurgaon', 'Haryana', 1600, '0124-4141414');
INSERT INTO hospital_info VALUES(5, 'Tata Memorial Hospital', 'Mumbai', 'Maharashtra', 700, '022-24177000');
INSERT INTO hospital_info VALUES(6, 'Narayana Health', 'Kolkata', 'West Bengal', 500, '033-71222222');
INSERT INTO hospital_info VALUES(7, 'Max Super Specialty', 'Saket', 'Delhi', 1200, '011-26515050');
INSERT INTO hospital_info VALUES(8, 'KIMS', 'Hyderabad', 'Telangana', 800, '040-44885000');
INSERT INTO hospital_info VALUES(9, 'Amrita Hospital', 'Kochi', 'Kerala', 1300, '0484-2851234');
INSERT INTO hospital_info VALUES(10, 'Sankara Nethralaya', 'Chennai', 'Tamil Nadu', 400, '044-28271616');
INSERT INTO hospital_info VALUES(11, 'Lilavati Hospital', 'Mumbai', 'Maharashtra', 300, '022-26751000');
INSERT INTO hospital_info VALUES(12, 'CMC', 'Vellore', 'Tamil Nadu', 2500, '0416-2281000');
INSERT INTO hospital_info VALUES(13, 'Manipal Hospital', 'Jaipur', 'Rajasthan', 900, '0141-6662200');
INSERT INTO hospital_info VALUES(14, 'Ruby Hall Clinic', 'Pune', 'Maharashtra', 750, '020-66455000');
INSERT INTO hospital_info VALUES(15, 'Apollo Gleneagles', 'Kolkata', 'West Bengal', 1000, '033-23203040');



CREATE TABLE state_info(state_id INT,state_name VARCHAR(30),capital VARCHAR(30),population BIGINT,
area DECIMAL(10,2),literacy_rate DECIMAL(5,2));
DESC state_info;
SELECT * FROM state_info;
INSERT INTO state_info VALUES(1, 'Maharashtra', 'Mumbai', 124000000, 307713, 82.91);
INSERT INTO state_info VALUES(2, 'Uttar Pradesh', 'Lucknow', 241000000, 243286, 73.00);
INSERT INTO state_info VALUES(3, 'Bihar', 'Patna', 127000000, 94163, 70.90);
INSERT INTO state_info VALUES(4, 'West Bengal', 'Kolkata', 100000000, 88752, 77.08);
INSERT INTO state_info VALUES(5, 'Madhya Pradesh', 'Bhopal', 85000000, 308350, 70.63);
INSERT INTO state_info VALUES(6, 'Tamil Nadu', 'Chennai', 78000000, 130058, 80.09);
INSERT INTO state_info VALUES(7, 'Rajasthan', 'Jaipur', 81000000, 342239, 69.70);
INSERT INTO state_info VALUES(8, 'Karnataka', 'Bangalore', 72000000, 191791, 75.36);
INSERT INTO state_info VALUES(9, 'Gujarat', 'Gandhinagar', 70000000, 196024, 78.03);
INSERT INTO state_info VALUES(10, 'Andhra Pradesh', 'Amaravati', 54000000, 162968, 67.41);
INSERT INTO state_info VALUES(11, 'Odisha', 'Bhubaneswar', 46000000, 155707, 72.90);
INSERT INTO state_info VALUES(12, 'Telangana', 'Hyderabad', 40000000, 112077, 72.80);
INSERT INTO state_info VALUES(13, 'Kerala', 'Thiruvananthapuram', 35000000, 38863, 94.00);
INSERT INTO state_info VALUES(14, 'Punjab', 'Chandigarh', 31000000, 50362, 75.84);
INSERT INTO state_info VALUES(15, 'Haryana', 'Chandigarh', 29000000, 44212, 76.64);

SELECT * FROM state_info;


CREATE TABLE scam_info(scam_id INT,scam_name VARCHAR(100),year INT,amount_in_crores DECIMAL(15,2),
state VARCHAR(50),key_people VARCHAR(100));
DESC scam_info;

INSERT INTO scam_info VALUES(1, '2G Spectrum Scam', 2008, 176000, 'Delhi', 'A. Raja');
INSERT INTO scam_info VALUES(2, 'Coal Allocation Scam', 2012, 186000, 'Multiple', 'Politicians');
INSERT INTO scam_info VALUES(3, 'Commonwealth Games Scam', 2010, 70000, 'Delhi', 'Suresh Kalmadi');
INSERT INTO scam_info VALUES(4, 'Vyapam Scam', 2013, 2000, 'Madhya Pradesh', 'Multiple Officials');
INSERT INTO scam_info VALUES(5, 'Satyam Scam', 2009, 14000, 'Telangana', 'Ramalinga Raju');
INSERT INTO scam_info VALUES(6, 'Nirav Modi PNB Scam', 2018, 11400, 'Maharashtra', 'Nirav Modi');
INSERT INTO scam_info VALUES(7, 'Chopper Scam', 2013, 3600, 'Multiple', 'Politicians');
INSERT INTO scam_info VALUES(8, 'Saradha Chit Fund Scam', 2013, 2400, 'West Bengal', 'Sudipta Sen');
INSERT INTO scam_info VALUES(9, 'Telgi Stamp Paper Scam', 2003, 20000, 'Maharashtra', 'Abdul Karim Telgi');
INSERT INTO scam_info VALUES(10, 'Adarsh Housing Scam', 2010, 400, 'Maharashtra', 'Politicians');
INSERT INTO scam_info VALUES(12, 'Stock Market Scam', 1992, 3542, 'Maharashtra', 'Harshad Mehta');
INSERT INTO scam_info VALUES(13, 'Hawala Scam', 1996, 800, 'Delhi', 'Politicians');
INSERT INTO scam_info VALUES(14, 'Bank Loan Fraud', 2019, 7100, 'Multiple', 'Vijay Mallya');
INSERT INTO scam_info VALUES(15, 'Gold Smuggling Scam', 2020, 300, 'Kerala', 'Officials');
INSERT INTO scam_info VALUES(11, 'I Monetary Advisory Scam', 2019, 4000, 'Karnataka', 'Mohammed Mansohospital_infoor Khan');
SELECT * FROM scam_info;

SELECT * FROM hospital_info;

SELECT * FROM hospital_info where state = 'Maharashtra' and 
city = 'Mumbai' and hospital_id = 5;

OR:
COND1   COND2
TRUE    FALSE  TRUE
FALSE   TRUE   TRUE
TRUE    TRUE   TRUE
FALSE   FALSE  FALSE

SELECT * FROM hospital_info;

SELECT * FROM scam_info where state = 'Del' or year = 2013;

SELECT * FROM stste_info where



SELECT hospital_id,hospital_name from hospital_info;

WHERE: To filter the data based on column condition

SELECT * FROM hospital_info where state = 'Tamil Nadu';
SELECT hospital_id,hospital_name from hospital_info where state = 'Karnataka';
SELECT * FROM scam_info;

SELECT * from scam_info where year = 2013 AND state = 'Multiple';

AND / OR

AND:
COND1   COND2  
TRUE    FALSE    FALSE
FALSE   TRUE     FALSE
FALSE   FALSE    FALSE
TRUE    TRUE     TRUE


SELECT * from scam_info where state = 'Maharashtra';

SELECT * FROM state_info;
SELECT * FROM state_info WHERE capital='Mumbai';
SELECT state_name,capital FROM state_info WHERE capital='Bhubaneswar';

SELECT  * FROM scam_info;
SELECT * FROM scam_info WHERE state='Kerala' OR state='Multiple';
SELECT scam_name,year FROM scam_info WHERE scam_name='Satyam Scam' and state='Telangana';
SELECT scam_name,year,amount_in_crores,state FROM scam_info 
WHERE state = 'Delhi';

SELECT scam_name, amount_in_crores,year FROM scam_info WHERE state='Multiple' and year=2012 OR year=2013;
SELECT scam_name,year FROM scam_info WHERE (year=2008 OR state='DELHI' 
OR scam_name='2G Spectrum Scam') AND key_people='A. Raja';

select * from scam_info where year = 2008 or year = 2010
or year = 2012 or year = 2013 or year = 2020;

IN: 

SELECT * FROM scam_info where year in(2008,2010000,2012000,2013000,2020888);

1-1000

SELECT * FROM scam_info where scam_id in(5,6,7,8);
SELECT * FROM scam_info where scam_id not in(5,6,7,8);

NOT IN: 

SELECT * FROM hospital_info;
SELECT * FROM hospital_info WHERE city="New Delhi";

SELECT * FROM hospital_info WHERE city="New Delhi" or city='Bangalore' or city='Chennai' or city='Gurgaon' or city='Kolkata';
SELECT * FROM hospital_info WHERE city IN("New Delhi",'Bangalore','Chennai','Gurgaon','Kolkata');
SELECT * FROM hospital_info WHERE state NOT IN('West Bengal','Rajasthan');

BETWEEN:

SELECT * FROM scam_info;

1-1000

SELECT * FROM scam_info where scam_id not between 5 and 8;

UPDATE: 
/*SYNTAX FOR update the data
UPDATE table_name set column_name = data;*/

UPDATE scam_info set state = 'Karnataka' where scam_id = 2;



24/03/2025

BETWEEN:

SELECT * FROM scam_info;

1-1000

SELECT * FROM scam_info where scam_id not between 5 and 8;

UPDATE: 
/*SYNTAX FOR update the data
UPDATE table_name set column_name = data;*/

UPDATE scam_info set state = 'Karnataka' where scam_id = 2;
update scam_info set scam_id = 9 where scam_id = 6;
select * from scam_info where state = 'Maharashtra'
and scam_id = 9;

UPDATE scam_info set year = 2024 
where state = 'Maharashtra'
and scam_id = 9 and year = 2018;

4,5,7,12,15

select * from scam_info where scam_id in(4,5,7,12,15,20,34);

UPDATE scam_info set year = 1999
 where scam_id in(4,5,7,12,15,20,34);



UPDATE scam_info set amount_in_crores = 11111
where scam_id = 30 or state = 'Multiple';

select * from scam_info;

UPDATE scam_info set year = 2000, amount_in_crores
= 22222 where scam_id = 7;




SELECT * FROM state_info;
SELECT * FROM state_info_dup;

create table state_info_dup as select * from state_info;

select * from scam_info;

alter table scam_info add column country varchar(20)
default 'India';

update scam_info set country = 'India';

ALTER TABLE scam_info drop column country;

(*************************************************)
AND, OR, IN, NOT IN, BETWEEN, NOT BETWEEN, UPDATE

SELECT * FROM hospital_info;
SELECT * FROM hospital_info WHERE city="New Delhi";
SELECT * FROM hospital_info WHERE city="New Delhi" or city='Bangalore' or city='Chennai' or city='Gurgaon' or city='Kolkata';
SELECT * FROM hospital_info WHERE city IN("New Delhi",'Bangalore','Chennai','Gurgaon','Kolkata');
SELECT * FROM hospital_info WHERE state NOT IN('West Bengal','Rajasthan');

SELECT * FROM scam_info WHERE scam_id=5 and year= 2025 AND country='india';
SELECT * FROM scam_info WHERE scam_id=5 or year= 2025 or year = 2018;
SELECT * FROM scam_info WHERE scam_id=5 AND year in (2025,2018,1020);
SELECT * FROM scam_info WHERE year IN (2024,2025,2013,2018,1020) AND scam_id IN (5,6,7,8);
SELECT * FROM scam_info WHERE year IN (2024,2025,2013,2018,1020) AND scam_id NOT IN (5,6,7,8);

SELECT * FROM state_info_dup WHERE state_id IN (4,7,9,15) ANd language NOT IN ('Kannada','Hindi');
SELECT * FROM state_info_dup WHERE state_id IN (4,7,9,15) AND language IN ('Kannada','Hindi');

SELECT * FROM state_info_dup WHERE state_id BETWEEN 1 and 20;
SELECT * FROM state_info_dup WHERE state_id BETWEEN 5 and 12 or language in ('English','kannada');

SELECT * FROM hospital_info WHERE hospital_id BETWEEN 1 and 7;
SELECT * FROM hospital_info WHERE hospital_id NOT BETWEEN 2 and 13;

SELECT * FROM state_info_dup;
ALTER TABLE state_info_dup add COLUMN language VARCHAR(10) default 'English';
UPDATE state_info_dup SET language='Hindi';
UPDATE state_info_dup SET language='English' WHERE state_id IN(1,3,7,8,20,45);
UPDATE state_info_dup SET language='Kannada' WHERE state_id NOT BETWEEN 1 and 10;


(***************************************************)
25/03/2025

4) Delete:

SELECT * FROM scam_info;

update table_name set column_name = data;
/*Syntax for deleting data
DELETE FROM table_name where column condition;*/

select * FROM scam_info where scam_id = 4;




DELETE FROM scam_info where scam_id = 4;

select * from scam_info where state = 'Maharashtra' and scam_id = 9 and year = 2024;

delete from scam_info where state = 'Maharashtra' and scam_id = 9 and year = 2024;

delete from scam_info where scam_id in(2,5,8,12);

TCL: Transaction Control Language 



/*
1) CREATE 2 TABLES WITH 10 columns(TABLES: Cricket_info, FootBall_info)
2) INSERT 15 data for each table.
3) By using alter add 2 columns
4) Rename 4 columns
5) update 5 data for each table using AND, OR, IN, NOT IN
6) delete 3 data for each table.
7) Fetch the data using Where, AND, OR, IN, NOT IN, BETWEEN, NOT BETWEEN,
LIKE, NOT LIKE.
*/
CREATE TABLE Cricket_info( player_id int, player_name varchar(20),
 age int, Team varchar(20), country varchar(15), matches int, 
 runs int, wickets int, highest_score float, catches int);
DESC Cricket_info;
SELECT * FROM Cricket_info;
 INSERT INTO Cricket_info(player_id, player_name, age, Team, country, matches, runs, wickets, highest_score, catches) 
 VALUES(1, 'Virat Kohli', 35 ,'RCB' ,'India' ,270 ,13000, 5 ,183 ,150);
INSERT INTO Cricket_info(player_id, player_name, age, Team, country, matches, runs, wickets, highest_score, catches) 
 VALUES(2, 'Babar Azam', 29 ,'Peshawar Zalmi' ,'Pakistan' ,180 ,8500, 2 ,158 ,85);
 INSERT INTO Cricket_info(player_id, player_name, age, Team, country, matches, runs, wickets, highest_score, catches) 
 VALUES(3, 'Joe Root', 33 ,'Yorkshire' ,'England' ,200 ,11000, 15 ,184 ,120);
 INSERT INTO Cricket_info(player_id, player_name, age, Team, country, matches, runs, wickets, highest_score, catches) 
 VALUES(4, 'Steve Smith', 34 ,'Sydney Sixers' ,'Australia' ,210 ,10500, 20 ,178 ,130);
 INSERT INTO Cricket_info(player_id, player_name, age, Team, country, matches, runs, wickets, highest_score, catches) 
 VALUES(5, 'Kane Williamson', 33 ,'SRH' ,'New Zealand' ,190 ,9500, 10 ,180 ,110);
 INSERT INTO Cricket_info(player_id, player_name, age, Team, country, matches, runs, wickets, highest_score, catches) 
 VALUES(6, 'Rohit Sharma', 36 ,'MI' ,'India' ,250 ,12000, 8 ,264 ,140);
INSERT INTO Cricket_info(player_id, player_name, age, Team, country, matches, runs, wickets, highest_score, catches) 
 VALUES(7, 'David Warner', 37 ,'DC' ,'Australia' ,220 ,10500, 12 ,179 ,135);
INSERT INTO Cricket_info(player_id, player_name, age, Team, country, matches, runs, wickets, highest_score, catches) 
 VALUES(8, 'Jasprit Bumrah', 30 ,'MI' ,'India' ,150 ,300, 250 ,50 ,95);
 INSERT INTO Cricket_info(player_id, player_name, age, Team, country, matches, runs, wickets, highest_score, catches) 
 VALUES(9, 'Trent Boult', 34 ,'RR' ,'New Zealand' ,180 ,250, 280 ,45 ,90);
 INSERT INTO Cricket_info(player_id, player_name, age, Team, country, matches, runs, wickets, highest_score, catches) 
 VALUES(10, 'Ben Stokes', 32 ,'CSK' ,'England' ,170 ,5500, 150 ,182 ,100);
 INSERT INTO Cricket_info(player_id, player_name, age, Team, country, matches, runs, wickets, highest_score, catches) 
 VALUES(11, 'Shubman Gill', 24 ,'GT' ,'India' ,80 ,4000, 1 ,208 ,50);
 INSERT INTO Cricket_info(player_id, player_name, age, Team, country, matches, runs, wickets, highest_score, catches) 
 VALUES(12, 'Rashid Khan', 26 ,'GT' ,'Afghanistan' ,190 ,1500, 350 ,75 ,70);
 INSERT INTO Cricket_info(player_id, player_name, age, Team, country, matches, runs, wickets, highest_score, catches) 
 VALUES(13, 'Mohammad Rizwan', 31 ,'Multan Sultans' ,'Pakistan' ,120 ,5000, 3 ,147 ,65);
 INSERT INTO Cricket_info(player_id, player_name, age, Team, country, matches, runs, wickets, highest_score, catches) 
 VALUES(14, 'Quinton de Kock', 32 ,'LSG' ,'India' ,160 ,6500, 5 ,178 ,80);
 INSERT INTO Cricket_info(player_id, player_name, age, Team, country, matches, runs, wickets, highest_score, catches) 
 VALUES(15, 'KL Rahul', 31 ,'LSG' ,'India' ,150 ,7000, 2 ,199 ,85);
 
 
 
 
 
 
 
CREATE TABLE FootBall_info(id int,namem varchar(20), country varchar(20), club varchar(20), 
position varchar(20), goal int, matches int, yellow_card int, red_card int, pass_accuracy float);
desc FootBall_info;
SELECT * FROM FootBall_info;
INSERT INTO FootBall_info(id, namem, country, club,position, matches, goal, yellow_card, red_card, pass_accuracy) 
VALUES(1, 'Lionel Messi', 'Argentina', 'Inter Miami', 'Forward', 850, 750, 45, 2, 89.4);
truncate FootBall_info;
INSERT INTO FootBall_info(id, namem, country, club,position, matches, goal, yellow_card, red_card, pass_accuracy) 
VALUES(2, 'Cristiano Ronaldo', 'Portugal',	'Al-Nassr',	'Forward',	900, 850, 60, 5, 86.2);
INSERT INTO FootBall_info(id, namem, country, club,position, matches, goal, yellow_card, red_card, pass_accuracy) 
VALUES(3, 'Neymar Jr', 'Brazil', 'Al-Hilal', 'Forward', 700, 450, 70, 10, 84.5);
INSERT INTO FootBall_info(id, namem, country, club,position, matches, goal, yellow_card, red_card, pass_accuracy) 
VALUES(4, 'Kylian Mbappé', 'France', 'PSG',	'Forward', 400,	320, 30, 1, 87.2);
INSERT INTO FootBall_info(id, namem, country, club,position, matches, goal, yellow_card, red_card, pass_accuracy) 
VALUES(5, 'Kevin De Bruyne', 'Belgium', 'Man City', 'Midfielder', 600, 150, 25, 0, 90.5);
INSERT INTO FootBall_info(id, namem, country, club,position, matches, goal, yellow_card, red_card, pass_accuracy) 
VALUES(6, 'Luka Modric', 'Croatia', 'Real Madrid', 'Midfielder', 750, 100, 20, 0, 91.3);
INSERT INTO FootBall_info(id, namem, country, club,position, matches, goal, yellow_card, red_card, pass_accuracy) 
VALUES(7, 'Robert Lewandowski', 'Poland', 'Barcelona', 'Forward', 750, 600, 40, 3, 85.1);
INSERT INTO FootBall_info(id, namem, country, club,position, matches, goal, yellow_card, red_card, pass_accuracy) 
VALUES(8, 'Mohamed Salah', 'Egypt', 'Liverpool', 'Forward', 550, 350, 35, 2, 84.8);
INSERT INTO FootBall_info(id, namem, country, club,position, matches, goal, yellow_card, red_card, pass_accuracy) 
VALUES(9, 'Karim Benzema', 'France', 'Al-Ittihad', 'Forward', 800, 500, 50, 4, 87.0);
INSERT INTO FootBall_info(id, namem, country, club,position, matches, goal, yellow_card, red_card, pass_accuracy) 
VALUES(10, 'Bruno Fernandes', 'Portugal', 'Man United', 'Midfielder', 400, 120, 20, 1, 89.2);
INSERT INTO FootBall_info(id, namem, country, club,position, matches, goal, yellow_card, red_card, pass_accuracy) 
VALUES(11, 'Joshua Kimmich', 'German', 'Bayern Munich', 'Midfielder', 450, 80, 25, 1, 92.5);
INSERT INTO FootBall_info(id, namem, country, club,position, matches, goal, yellow_card, red_card, pass_accuracy) 
VALUES(12, 'Casemiro', 'Brazil', 'Man United', 'Midfielder', 500, 70, 45, 4, 88.9);
INSERT INTO FootBall_info(id, namem, country, club,position, matches, goal, yellow_card, red_card, pass_accuracy) 
VALUES(13, 'Virgil van Dijk', 'Netherlands', 'Liverpool','Defender', 480, 40, 50, 2, 86.7);
INSERT INTO FootBall_info(id, namem, country, club,position, matches, goal, yellow_card, red_card, pass_accuracy) 
VALUES(14, 'Sergio Ramos', 'Spain', 'Sevilla', 'Defender', 700, 80, 100, 8, 83.4);
INSERT INTO FootBall_info(id, namem, country, club,position, matches, goal, yellow_card, red_card, pass_accuracy) 
VALUES(15, 'João Cancelo', 'Portugal', 'Barcelona', 'Defender', 420, 30, 35, 2, 90.2);
INSERT INTO FootBall_info(id, namem, country, club,position, matches, goal, yellow_card, red_card, pass_accuracy) 
VALUES(16, 'Achraf Hakimi','Morocco', 'PSG', 'Defender', 350, 25, 30, 1, 89.7);


SELECT * from Cricket_info;
ALTER TABLE Cricket_info ADD COLUMN Strike_Rate float;
ALTER TABLE Cricket_info ADD COLUMN Fifties int;

ALTER TABLE Cricket_info RENAME COLUMN player_name TO name;
ALTER TABLE Cricket_info RENAME COLUMN Team TO team;
ALTER TABLE Cricket_info RENAME COLUMN Strike_Rate TO strike_rate;
ALTER TABLE Cricket_info RENAME COLUMN Fifties TO fifties;

UPDATE Cricket_info SET strike_rate=85.5;
UPDATE Cricket_info SET fifties=65 where player_id in(1,3,7);
UPDATE Cricket_info SET fifties=0 where player_id between 8 and 10 ;
UPDATE Cricket_info SET fifties=45 where player_id not in(1,3,7,6,8,9,10,11,12,13);
UPDATE Cricket_info SET fifties=30 where player_id not between 1 and 10;
UPDATE Cricket_info SET fifties=20 where player_id=14 or player_id=15;
UPDATE Cricket_info SET fifties=68 where player_id=6;

SELECT * from Cricket_info;
SELECT Strike_Rate from Cricket_info where player_id=2;
DELETE FROM Cricket_info where player_id=2;
DeLETE FROM Cricket_info where country = 'Pakistan' and wickets=3;
DELETE FROM Cricket_info where team = 'GT' and wickets=208 and catches=50;

SELECT * FROM Cricket_info WHERE age IN (30,31,32,33,34,35) AND (player_id NOT BETWEEN 1 and 5);
SELECT * FROM Cricket_info where (age BETWEEN 30 and 35)  AND  player_id NOT IN (1,2,3,4,5);

SELECT * FROM Cricket_info where name like '%%A';
SELECT * FROM Cricket_info where name like 'A%S%';
SELECT * FROM Cricket_info where name like '%D%';

ALTER TABLE FootBall_info ADD COLUMN Headers int;
ALTER TABLE FootBall_info ADD COLUMN Tackles int;
ALTER TABLE FootBall_info RENAME COLUMN namem TO name;
ALTER TABLE FootBall_info RENAME COLUMN position TO Position;
ALTER TABLE FootBall_info RENAME COLUMN club TO Club;
ALTER TABLE FootBall_info RENAME COLUMN name TO player_name;
UPDATE FootBall_info SET strike_rate=200;
UPDATE FootBall_info SET Headers=100 where id in(6,4,10);
UPDATE FootBall_info SET Headers=150 where id between 1 and 5 ;
UPDATE FootBall_info SET Headers=205 where id in(1,3,7,6,8,9,10,11,12,13);
UPDATE FootBall_info SET Tackles=155 where id not between 1 and 10;
UPDATE FootBall_info SET Tackles=50 where id=12 or player_id=13;
UPDATE FootBall_info SET Tackles=68 where id=6;

DELETE from FootBall_info where id = 6 or Tackles=100;
SELECT * from FootBall_info where id = 2 and country='Portugal';
DELETE from FootBall_info where id = 2 and country='Portugal';
SELECT * from FootBall_info where id = 16;
DELETE from FootBall_info where id = 16 and Club='PSG' and country='MOROCCO';

SELECT * FROM FootBall_info WHERE age IN (30,31,32,33,34,35) AND (player_id NOT BETWEEN 1 and 5);
SELECT * FROM FootBall_info where (id BETWEEN 10 and 17)  AND  Club NOT IN ('Al-Hilal','PSG','Liverpool','Bayern Munich','Man United','Sevilla');
SELECT * FROM FootBall_info where country like 'A%';
SELECT * FROM FootBall_info where country like '%S%';
SELECT * FROM FootBall_info where country like '%A';

select * from cricket_info;

INSTR: INSTRING:

'BANGALORE' 
select instr(string, character);
SELECT INSTR('Bangalore','n');
SELECT INSTR('Bangalore','a');

select name,instr(name,'k') from cricket_info;

substr:
Bangalore
select substr(String, start position, no of characters);
select substr('Karnataka', 1,5);


SELECT country,SUBSTR(country,2,8) from cricket_info;

Length:


select * from cricket_info;
SELECT team,LENGTH(team) from cricket_info;

LTRIM: LEFT REMOVE
RTRIM: RIGHT REMOVE


SELECT team,LTRIM(team) from cricket_info;

SELECT UPPER(name) from cricket_info;
SELECT lower(name) from cricket_info;

concat:

SELECT CONCAT(name,team,country,matches,runs,wickets) from cricket_info;


Aggregate Functions:
Alias: 
1) count:
select count(*) as no_of_team from cricket_info;
select count(team) from cricket_info;
select * from cricket_info;

2) sum:
select sum(catches) as total_catches from cricket_info;

3) max:

SELECT MAX(highest_score) as high_score from cricket_info;

4) min:
SELECT min(runs) as min_runs from cricket_info;

5) avg:
SELECT avg(runs) as avg_runs from cricket_info;

SELECT instr('SONAL VINOD KARMA', 'V');
SELECT LENGTH('SONAL VINOD KARMA');
SELECT substr('SONAL VINOD KARMA', 2,8);


SELECT * from Cricket_info;
SELECT * from FootBall_info;
SELECT upper(player_name)from FootBall_info ;
SELECT lower(player_name) from FootBall_info;
SELECT CONCAT(player_name, country, Club, Position, goal) from FootBall_info;

SELECT sum(goal) as total_goal from FootBall_info;

SELECT count(*) as no_of_teams from FootBall_info;
SELECT count(*) as total_counts from cricket_info;

SELECT sum(red_card) as total_red_cards from FootBall_info;
SELECT max(yellow_card) as total_yellow_card from FootBall_info;
SELECT min(goal) from FootBall_info;
SELECT min(Headers) as min_of_headers from FootBall_info;

SELECT team,LTRIM(team) from cricket_info;
SELECT country, LTRIM(country) from FootBall_info;

27/03/25

select * from football_info;

Group By:

SELECT count(player_name) as no_of_players, country from football_info Group by country;

select count(goal) as no_of_goals, club from football_info
group by cLuB;

SELECT max(matches) as no_of_matches, country from football_info
group by country;

SELECT min(yellow_card) as min_cards, position from football_info
group by position;

select avg(matches) as avg_matches, country from football_info
group by country;


Having clause:

SELECT max(matches) as no_of_matches, country from football_info
group by country having no_of_matches > 500;

DISTINCT:

SELECT DISTINCT(position) from football_info;

/*ORDER*/
SELECT DISTINCT FROM WHERE GROUP BY HAVING;

select * from football_info;

select country, count(matches) as no_of_matches FROM football_info group by country having no_of_matches>1;
select country, count(matches) as no_of_matches FROM football_info group by country having no_of_matches>1;
SELECT player_name,country, max(red_card) as red from football_info 
where country in ('Argentina','brazil','france') 
group by country having red>=2;

SELECT player_name,country, count(red_card) as red from football_info 
where country in ('Argentina','brazil','france') 
group by country having red>=2;

SELECT DISTINCT(goal),player_name, red_card from football_info;


/* 27/03/25 
1) CREATE 2 TABLES(bmtc_details, tourist_info) with 10 columns.
2) Insert 20 data for each table.
3) Perform Aggregate Functions.
4) Perform Group by and having . */


Create table bmtc_details( id int, depot_name varchar(30), depot_location varchar(30), 
depot_code varchar(5), established_year int, total_vehicles int, maintenance_cost int, 
fuel_consumption int, daily_operations int, Route_Coverage int);

desc bmtc_details;

insert into bmtc_details values (1, 'Shanthinagar Depot', 'Shanthinagar', 'D001', 1995, 250, 500000, 10000, 200, 500);
INSERT INTO bmtc_details values (2, 'Majestic Depot', 'Majestic', 'D002', 1985, 300, 650000, 12000, 250, 600);
SELECT * FROM bmtc_details;

INSERT into bmtc_details values (3, 'Kengeri Depot', 'Kengeri', 'D003', 2000, 220, 475000, 9500, 180, 480);
INSERT into bmtc_details values (4, 'Yeshwanthpur Depot', 'Yeshwanthpur', 'D004', 1992, 275, 580000, 11000, 210, 550);
INSERT into bmtc_details values (5,  'Banashankari Depot', 'Banashankari', 'D005', 1998, 260, 520000, 10500, 190, 510);
INSERT into bmtc_details values (6,  'Jayanagar Depot', 'Jayanagar', 'D006', 1990, 240, 490000, 9800, 185, 490);
INSERT into bmtc_details values (7, 'Indiranagar Depot', 'Indiranagar', 'D007', 1996, 255, 530000, 10700, 195, 520);
INSERT into bmtc_details values (8, 'Koramangala Depot', 'Koramangala', 'D008', 1994, 270, 560000, 11200, 205, 540);
INSERT into bmtc_details values (9,  'Rajajinagar Depot', 'Rajajinagar', 'D009', 1988, 285,	590000, 11500, 220, 570);
INSERT into bmtc_details values (10,  'HSR Layout Depot', 'HSR Layout',	'D010',	2005, 230, 460000, 9300, 175, 470);
INSERT into bmtc_details values (11, 'Whitefield Depot', 'Whitefield', 'D011', 2010, 200, 430000, 8700, 160, 450);
INSERT into bmtc_details values (12, 'Marathahalli Depot', 'Marathahalli', 'D012', 2003, 215, 450000, 9100, 170, 460);
INSERT into bmtc_details values (13, 'Electronic City Depot', 'Electronic City', 'D013', 2012, 180, 390000, 8200, 150, 430);
INSERT into bmtc_details values (14, 'Hebbal Depot', 'Hebbal', 'D014', 1997, 250, 500000, 10000, 200, 500);
INSERT into bmtc_details values (15, 'Mysore Road Depot', 'Mysore Road', 'D015', 1982, 290, 600000, 12500, 230, 580);
INSERT into bmtc_details values (16, 'Kalyan Nagar Depot', 'Kalyan Nagar', 'D016', 2008, 195, 410000, 8500, 155, 440);
INSERT into bmtc_details values (17, 'Malleswaram Depot', 'Malleswaram', 'D017', 1999, 245, 495000, 9700,	185, 485);
INSERT into bmtc_details values (18, 'Vijayanagar Depot', 'Vijayanagar', 'D018', 1993, 265, 540000, 10800, 195, 525);
INSERT into bmtc_details values (19, 'Nagawara Depot', 'Nagawara', 'D019', 2006, 225, 470000, 9400, 170, 475);
INSERT into bmtc_details values (20, 'Peenya Depot', 'Peenya', 'D020', 2001, 235, 480000, 9600, 180, 490);


Create table tourist_info( id int, tourist_spot varchar(30), location varchar(30), 
district varchar(30), spot_code varchar(10), attraction_type varchar(30),  entry_fee decimal(10,2), 
opening_hours time, closing_hours time, best_season varchar(30));
desc tourist_info;
alter table tourist_info modify opening_hours varchar(10);
alter table tourist_info modify closing_hours varchar(10);

INSERT into tourist_info values(1, 'Mysore Palace', 'Mysore', 'Mysore', 'T001', 'Heritage', 100, '10:00AM', '5:30PM', 'Oct-Feb');

select * from tourist_info;
truncate tourist_info;
INSERT into tourist_info values(2, 'Hampi', 'Hampi', 'Bellary', 'T002', 'Historical', 40, '6:00 AM', '6:00 PM', 'Nov-Feb');
INSERT into tourist_info values(3, 'Coorg', 'Madikeri', 'Kodagu', 'T003', 'Hill Station', 0, 'Open 24x7', 'Open 24x7', 'Oct-Apr');
INSERT into tourist_info values(4, 'Gokarna Beach', 'Gokarna', 'Uttara Kannada', 'T004', 'Beach', 0, 'Open 24x7', 'Open 24x7', 'Oct-Mar');
INSERT into tourist_info values(5, 'Jog Falls', 'Sagara', 'Shimoga', 'T005', 'Waterfall', 0, '6:00 AM', '6:00 PM', 'July-Oct');
INSERT into tourist_info values(6, 'Belur Temple', 'Belur', 'Hassan', 'T006', 'Heritage', 50, '7:30 AM', '6:00 PM', 'Oct-Feb');
INSERT into tourist_info values(7, 'Bandipur National Park', 'Bandipur', 'Chamarajanagar', 'T007', 'Wildlife', 250, '6:00 AM', '6:00 PM', 'Nov-May');
INSERT into tourist_info values(8, 'Badami Caves', 'Badami', 'Bagalkot', 'T008', 'Historical', 40, '9:00 AM', '5:30 PM', 'Sep-Feb');
INSERT into tourist_info values(9, 'Nandi Hills', 'Chikkaballapur', 'Bangalore Rural', 'T009', 'Hill Station', 15, '6:00 AM', '6:30 PM', 'Aug-Feb');
INSERT into tourist_info values(10, 'Lalbagh', 'Bangalore', 'Bangalore', 'T010', 'Botanical Garden', 30, '6:00 AM', '7:00 PM', 'Year-round');

INSERT into tourist_info values(11, 'Shivanasamudra Falls', 'Kollegal', 'Chamarajanagar', 'T011', 'Waterfall', 30, '7:00 AM', '6:00 PM', 'July-Oct');
INSERT into tourist_info values(12, 'Biligiriranga Hills', 'Yelandur', 'Chamarajanagar', 'T012', 'Wildlife', 50, '6:00 AM', '5:30 PM', 'Oct-Apr');
INSERT into tourist_info values(13, 'Melukote', 'Melukote', 'Mandya', 'T013', 'Religious', 20, '6:00 AM', '7:30 PM', 'Year-round');
INSERT into tourist_info values(14, 'Kodachadri', 'Nittur', 'Shivamogga', 'T014', 'Trekking', 50, '6:00 AM', '6:00 PM', 'Sep-Feb');
INSERT into tourist_info values(15, 'Talakadu', 'Tirumakudal Narsipur', 'Mysore', 'T015', 'Historical', 30, '6:00 AM', '6:30 PM', 'Sep-Mar');
INSERT into tourist_info values(16, 'St. Mary’s Island', 'Malpe', 'Udupi', 'T016', 'Island', 400, '9:00 AM', '5:30 PM', 'Nov-Apr');
INSERT into tourist_info values(17, 'Kunti Betta', 'Pandavapura', 'Mandya', 'T017', 'Trekking', 15, '4:30 AM', '6:30 PM', 'Oct-Apr');
INSERT into tourist_info values(18, 'Kabini Backwaters', 'H D Kote', 'Mysore', 'T018', 'Nature', 200, '6:00 AM', '6:30 PM', 'Nov-May');
INSERT into tourist_info values(19, 'Malpe Beach', 'Malpe', 'Udupi', 'T019', 'Beach', 0, 'Open 24x7', 'Open 24x7', 'Oct-May');
INSERT into tourist_info values(20, 'Agumbe', 'Agumbe', 'Shivamogga', 'T020', 'Hill Station', 0, 'Open 24x7', 'Open 24x7', 'Aug-Jan');


SELECT * FROM bmtc_details;
SELECT * FROM tourist_info;

select count(*) as depot_name from bmtc_details;
select count(id) from bmtc_details;
select count(*) from tourist_info;
select count(location) from tourist_info;

SELECT * FROM tourist_info;
select sum(total_vehicles) as total_vehicles from bmtc_details;
select sum(entry_fee) from tourist_info;

SELECT MAX(entry_fee) as max_fee from tourist_info;
SELECT min(entry_fee) as minimum from tourist_info;

SELECT MAX(daily_operations) as max_fee from bmtc_details;
SELECT min(total_vehicles) as minimum from bmtc_details;

SELECT avg(daily_operations) as average from bmtc_details;

select tourist_spot, district, count(location) as loc FROM tourist_info 
group by district having loc>1;

SELECT * FROM bmtc_details;

select depot_name, count(daily_operations) as op FROM bmtc_details 
group by established_year having op>0;
SELECT depot_code, max(maintenance_cost) as max_maintainance from bmtc_details where total_vehicles>200 and fuel_consumption>150;

SELECT depot_name,depot_location, avg(maintenance_cost) as cost_avg from bmtc_details 
where depot_location in ('Majestic','Yeshwanthpur','Whitefield','Jayanagar') 
group by depot_location having cost_avg>=2;


Constraints:
1) Not Null:

CREATE TABLE movies_info(id int not null, movie_name
varchar(20) not null, movie_language varchar(20),
budget bigint, rating decimal(3,1));

select * from movies_info;
desc movies_info;


insert into movies_info values
(1,'max','Kannada', 2500000, 8.0),
(2,'KGF','Kannada',8000000, 8.5),
(3,'Kantara', 'kannada', 3000000, 8.6),
(4,'Leo','Tamil', 200000, 7.5),
(5,'avesham', 'Malayalam', 4000000, 8.7);

2) Unique: 

CREATE TABLE pkl_info(id int not null unique, 
team_name varchar(20) unique, captain_name varchar(15)
not null);

select * from pkl_info;

insert into pkl_info values(1, 'BengaluruBulls','pardeep');
insert into pkl_info values(2, null,'Rahul');
insert into pkl_info values(3, 'TT','pawan');

update pkl_info set team_name = 'DD' where id = 2;

alter table pkl_info modify column team_name varchar(30)
not null;


/*
28/03/2025

1. Create 3 tables with 10 columns.
1. pkl_info
2. movies_info
3. cosmetics_info)
2. Apply not null and unique for any 5 columns.
3. Insert 20 data for each table
4. After insert add new column using alter and update all the rows for new column for 2 tables
5. aggregate functions for all tables
6. Group by and having.

*/

CREATE table pkl_info(ID int  not null unique, team_name varchar(30) not null unique, 
captain varchar(30) not null unique, coach varchar(30) not null unique, 
home_city varchar(30), titles_won int, star_player varchar(30) not null unique, 
founded_year year, home_ground varchar(30), sponsor varchar(30) not null unique); 

desc pkl_info;
alter table pkl_info modify titles_won int;

alter table pkl_info modify home_ground varchar(30);
alter table pkl_info modify sponsor varchar(30);
alter table pkl_info modify coach varchar(30);
alter table pkl_info modify star_player varchar(30);
DROP TABLE pkl_info;

INSERT INTO pkl_info values(1, 'Patna Pirates', 'Pardeep Narwal', 'Ram Mehar Singh', 'Patna', 3, 'Monu Goyat', 2014, 'Patliputra Sports Complex', 'Force Motors'),
(2, 'Bengaluru Bulls', 'Pawan Sehrawat', 'Randhir Singh', 'Bengaluru', 1, 'Bharat Hooda', 2014, 'Sree Kanteerava Stadium', 'Cycle Pure Agarbatti'),
(3, 'U Mumba', 'Fazel Atrachali', 'Gholamreza Mazandarani', 'Mumbai', 1, 'Surinder Singh', 2014, 'NSCI Dome', 'Indiabulls'),
(4, 'Jaipur Pink Panthers', 'Deepak Hooda', 'Sanjeev Baliyan', 'Jaipur', 2, 'Arjun Deshwal', 2014, 'Sawai Mansingh Stadium', 'JK Super Cement'),
(5, 'Tamil Thalaivas', 'Ajay Thakur', 'J. Udaya Kumar', 'Chennai', 0, 'Sagar Rathee', 2017, 'Jawaharlal Nehru Stadium', 'Levista Coffee'),
(6, 'Bengal Warriors', 'Maninder Singh', 'BC Ramesh', 'Kolkata', 1, 'Nabibakhsh', 2014, 'Netaji Indoor Stadium', 'SRMB Steel'),
(7, 'Dabang Delhi', 'Naveen Kumar', 'Krishan Kumar Hooda', 'Delhi', 1, 'Joginder Narwal', 2014, 'Thyagaraj Indoor Stadium', 'JK Tyre'),
(8, 'Nagpur Ninjas', 'Rajiv Deshpande', 'Sanjay Reddy', 'Nagpur', 0, 'Manoj Tiwari', 2023, 'Nagpur Indoor Stadium', 'Wipro'),
(9, 'Haryana Steelers', 'Jaideep Dahiya', 'Manpreet Singh', 'Haryana', 0, 'Meetu Sharma', 2017, 'Tau Devi Lal Stadium', 'JSW Group'),
(10, 'Varanasi Warriors', 'Ramesh Gupta', 'Yogesh Kumar', 'Varanasi', 0, 'Sudhir Verma', 2023, 'Varanasi Stadium', 'Sony'),
(11, 'Telugu Titans', 'Siddharth Desai', 'Jagdish Kumble', 'Hyderabad', 0, 'Rajnish Dalal', 2014, 'Gachibowli Indoor Stadium', 'Greenko'),
(12, 'Delhi Tigers', 'Aman Yadav', 'Praveen Kumar', 'Delhi', 0, 'Vishal Bhardwaj', 2023, 'Thyagaraj Indoor Stadium', 'Reliance Jio'),
(13, 'Mysuru Mavericks', 'Rohit Sharma', 'Anand Murthy', 'Mysuru', 0, 'Naveen Shetty', 2023, 'Mysuru Sports Complex', 'Tata Motors'),								
(14, 'Kochi Kings', 'Rohit Raj', 'Dileep Nair', 'Kochi', 0, 'Akshay Sharma', 2023, 'Kochi Indoor Stadium', 'Kerala Blasters'),								
(15, 'Ranchi Raiders', 'Pranay Sharma', 'Gaurav Singh', 'Ranchi', 0, 'Vishal Patnaik', 2023, 'Ranchi Sports Arena', 'Infosys'),								
(16, 'Bengal Strikers', 'Ankit Rana', 'Surjeet Singh', 'Kolkata', 0, 'Ravi Kumar', 2022, 'Netaji Indoor Stadium', 'Raymonds'),
(17, 'Punjab Warriors', 'Rahul Kumar', 'Manjit Singh', 'Chandigarh', 0, 'Sanjay Kumar', 2023, 'Punjab Indoor Stadium', 'Airtel'),
(18, 'Chandigarh Royals', 'Himanshu Yadav', 'Prakash Sharma', 'Chandigarh', 0, 'Vaibhav Chaturvedi', 2023, 'Punjab Indoor Stadium', 'Samsung'),		
(19, 'UP Yoddha', 'Nitesh Kumar', 'Jasveer Singh', 'Lucknow', 0, 'Sumit Sangwan', 2017, 'Babu Banarasi Das Indoor', 'GMR Group'),
(20, 'Goa Gladiators', 'Vishnu Menon', 'Sunil Dutt', 'Goa', 0, 'Neeraj Joshi', 2023, 'Goa Arena', 'Kingfisher');								

SELECt * from pkl_info;
ALTER table pkl_info add column owner_name varchar(30);

UPDATE pkl_info SET owner_name = 'Rajesh V Shah' WHERE team_name = 'Patna Pirates';
UPDATE pkl_info SET owner_name = 'Kosmik Global Media' WHERE team_name = 'Bengaluru Bulls';
UPDATE pkl_info SET owner_name = 'Unilazer Ventures' WHERE team_name = 'U Mumba';
UPDATE pkl_info SET owner_name = 'Abhishek Bachchan' WHERE team_name = 'Jaipur Pink Panthers';
UPDATE pkl_info SET owner_name = 'India Cements' WHERE team_name = 'Tamil Thalaivas';
UPDATE pkl_info SET owner_name = 'Future Group' WHERE team_name = 'Bengal Warriors';
UPDATE pkl_info SET owner_name = 'JK Tyre' WHERE team_name = 'Dabang Delhi';
UPDATE pkl_info SET owner_name = 'Wipro' WHERE team_name = 'Nagpur Ninjas';
UPDATE pkl_info SET owner_name = 'JSW Group' WHERE team_name = 'Haryana Steelers';
UPDATE pkl_info SET owner_name = 'Sony' WHERE team_name = 'Varanasi Warriors';
UPDATE pkl_info SET owner_name = 'Greenko' WHERE team_name = 'Telugu Titans';
UPDATE pkl_info SET owner_name = 'Reliance Jio' WHERE team_name = 'Delhi Tigers';
UPDATE pkl_info SET owner_name = 'Tata Motors' WHERE team_name = 'Mysuru Mavericks';
UPDATE pkl_info SET owner_name = 'Kerala Blasters' WHERE team_name = 'Kochi Kings';
UPDATE pkl_info SET owner_name = 'Infosys' WHERE team_name = 'Ranchi Raiders';
UPDATE pkl_info SET owner_name = 'Raymonds' WHERE team_name = 'Bengal Strikers';
UPDATE pkl_info SET owner_name = 'Airtel' WHERE team_name = 'Punjab Warriors';
UPDATE pkl_info SET owner_name = 'Samsung' WHERE team_name = 'Chandigarh Royals';
UPDATE pkl_info SET owner_name = 'GMR Group' WHERE team_name = 'UP Yoddha';
UPDATE pkl_info SET owner_name = 'Kingfisher' WHERE team_name = 'Goa Gladiators';

SELECT COUNT(*) AS total_teams FROM pkl_info;
SELECT AVG(titles_won) AS average_titles FROM pkl_info;
SELECT MAX(titles_won) AS max_titles FROM pkl_info;
SELECT MIN(titles_won) AS min_titles FROM pkl_info;
SELECT SUM(titles_won) AS total_titles_won FROM pkl_info;
SELECT home_city, COUNT(*) AS total_teams FROM pkl_info GROUP BY home_city;
SELECT home_city, SUM(titles_won) AS total_titles FROM pkl_info GROUP BY home_city;
SELECT owner_name, COUNT(*) AS total_teams_owned FROM pkl_info GROUP BY owner_name;
SELECT home_city, SUM(titles_won) AS total_titles FROM pkl_info GROUP BY home_city;
SELECT home_city, SUM(titles_won) AS total_titles FROM pkl_info GROUP BY home_city HAVING total_titles > 2;
SELECT sponsor, COUNT(*) AS sponsored_teams FROM pkl_info GROUP BY sponsor HAVING COUNT(*) > 1;
***************************************
CREATE TABLE cosmetics_info ( ID INT not null unique, product_Name VARCHAR(30) not null unique, brand VARCHAR(30) not null unique,
    product_type VARCHAR(30), price INT, rating DECIMAL(2,1), ingredients varchar(40) not null unique, 
    product_usage VARCHAR(30) not null unique, Availability VARCHAR(30));

desc cosmetics_info;
alter table cosmetics_info modify product_Name varchar(40);
INSERT INTO cosmetics_info (ID, product_Name, brand, product_type, price, rating, ingredients, product_usage, availability) VALUES
(1, 'Kumkumadi Oil', 'Kama Ayurveda', 'Face Serum', 1250, 4.7, 'Saffron, Turmeric, Almond Oil', 'Skin Glow', 'Online'),
(2, 'Mysore Sandal Soap', 'KSDL', 'Bath Soap', 70, 4.8, 'Sandalwood Oil', 'Daily Use', 'Stores & Online'),
(3, 'Biotique Bio Honey Gel', 'Biotique', 'Face Wash', 180, 4.6, 'Honey, Neem, Turmeric', 'Cleansing', 'Online'),
(4, 'Himalaya Neem Face Wash', 'Himalaya', 'Face Wash', 200, 4.5, 'Neem, Turmeric', 'Acne Control', 'Stores & Online'),
(5, 'Forest Essentials Soundarya Cream', 'Forest Essentials', 'Face Cream', 2500, 4.8, 'Gold Bhasma, Saffron', 'Anti-aging', 'Online'),
(6, 'Indulekha Hair Oil', 'Indulekha', 'Hair Oil', 432, 4.7, 'Bringha, Aloe Vera', 'Hair Growth', 'Stores & Online'),
(7, 'Ayur Herbal Rose Water', 'Ayur', 'Toner', 65, 4.3, 'Rose Extracts', 'Skin Refreshing', 'Stores & Online'),
(8, 'Mamaearth Ubtan Face Pack', 'Mamaearth', 'Face Pack', 499, 4.6, 'Turmeric, Saffron', 'Brightening', 'Online'),
(9, 'Lotus Herbals Safe Sun', 'Lotus', 'Sunscreen', 350, 4.4, 'Aloe Vera, Chamomile', 'Sun Protection', 'Stores & Online'),
(10, 'Nivea Soft Moisturizer', 'Nivea', 'Moisturizer', 299, 4.5, 'Jojoba Oil, Vitamin E', 'Hydration', 'Stores & Online'),
(11, 'Lacto Calamine Oil Control', 'Lacto Calamine', 'Face Lotion', 220, 4.2, 'Kaolin Clay, Zinc Oxide', 'Oil Control', 'Stores & Online'),
(12, 'VLCC Gold Facial Kit', 'VLCC', 'Facial Kit', 500, 4.5, 'Gold Dust, Turmeric', 'Facial Glow', 'Online'),
(13, 'Patanjali Aloe Vera Gel', 'Patanjali', 'Gel', 120, 4.3, 'Aloe Vera, Vitamin E', 'Skin & Hair Care', 'Stores & Online'),
(14, 'Lakme 9 to 5 Lipstick', 'Lakme', 'Lipstick', 500, 4.6, 'Shea Butter, Vitamin E', 'Lip Color', 'Stores & Online'),
(15, 'Maybelline Colossal Kajal', 'Maybelline', 'Eye Kajal', 200, 4.7, 'Aloe Vera, Vitamin C', 'Eye Definition', 'Stores & Online'),
(16, 'Elle 18 Nail Polish', 'Elle 18', 'Nail Polish', 75, 4.2, 'Vitamin E', 'Nail Color', 'Stores & Online'),
(17, 'Coloressence HD Foundation', 'Coloressence', 'Foundation', 450, 4.3, 'Aloe Vera, SPF', 'Base Makeup', 'Online'),
(18, 'Sugar Smudge Me Not Lipstick', 'Sugar Cosmetics', 'Lipstick', 599, 4.6, 'Jojoba Oil, Shea Butter', 'Matte Lips', 'Online'),
(19, 'Faces Canada Ultime Pro Eyeliner', 'Faces Canada', 'Eyeliner', 549, 4.5, 'Vitamin E, Castor Oil', 'Eye Makeup', 'Stores & Online'),
(20, 'Wow Onion Black Seed Oil Shampoo', 'Wow', 'Shampoo', 499, 4.6, 'Onion Oil, Black Seed Oil', 'Hair Strength', 'Online');
select * from cosmetics_info;

alter table cosmetics_info add Stock_Status varchar(30);
UPDATE cosmetics_info SET Stock_Status = 'In Stock' WHERE ID IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
UPDATE cosmetics_info SET Stock_Status = 'Out of Stock' WHERE ID IN (11, 12, 13, 14, 15, 16, 17, 18, 19, 20);
UPDATE cosmetics_info SET Stock_Status = 'Limited Stock' WHERE ID IN (21, 22, 23, 24, 25, 26, 27, 28, 29, 30);
UPDATE cosmetics_info SET Stock_Status = 'In Stock' WHERE ID = 1;
UPDATE cosmetics_info SET Stock_Status = 'Out of Stock' WHERE ID = 11;
UPDATE cosmetics_info SET Stock_Status = 'Limited Stock' WHERE ID in (4, 9);


SELECT COUNT(*) FROM cosmetics_info;
SELECT AVG(price) FROM cosmetics_info;
SELECT MIN(price) FROM cosmetics_info;
SELECT MAX(price) FROM cosmetics_info;
SELECT SUM(price) FROM cosmetics_info;

SELECT COUNT(DISTINCT brand) FROM cosmetics_info;
SELECT product_type, COUNT(*) FROM cosmetics_info GROUP BY product_type;
SELECT product_type, AVG(rating) FROM cosmetics_info GROUP BY product_type;
SELECT brand, SUM(price) FROM cosmetics_info GROUP BY brand;

SELECT availability, COUNT(*) FROM cosmetics_info GROUP BY availability;
SELECT product_type, COUNT(*) FROM cosmetics_info GROUP BY product_type HAVING COUNT(*) > 1;

SELECT product_type, MIN(price) FROM cosmetics_info GROUP BY product_type;
SELECT product_type, MAX(price) FROM cosmetics_info GROUP BY product_type;

SELECT availability, AVG(rating) FROM cosmetics_info GROUP BY availability;
SELECT brand, MAX(rating) FROM cosmetics_info GROUP BY brand;

SELECT product_usage, COUNT(*) FROM cosmetics_info GROUP BY product_usage;
SELECT stock_status, COUNT(*) FROM cosmetics_info GROUP BY stock_status;

SELECT brand, SUM(price) from cosmetics_info GROUP BY brand HAVING SUM(price) > 1000; 
SELECT product_type, AVG(price) FROM cosmetics_info GROUP BY product_type HAVING AVG(price) > 300; 
SELECT availability, COUNT(*) from cosmetics_info GROUP BY availability HAVING COUNT(*) > 5;
SELECT product_type, COUNT(*), AVG(price) FROM cosmetics_info GROUP BY product_type HAVING AVG(price) > 300;
SELECT brand, MAX(price) from cosmetics_info GROUP BY brand having MAX(price) > 500;
SELECT product_usage, COUNT(*), MIN(price) FROM cosmetics_info GROUP BY product_usage HAVING COUNT(*) > 1;
SELECT stock_status, avg(price), COUNT(*) FROM cosmetics_info group by stock_status HAVING COUNT(*) > 2;
SELECT brand, MAX(rating) from cosmetics_info GROUP BY brand HAVING MAX(rating) > 4.5;
SELECT product_type, AVG(rating) FROM cosmetics_info GROUP BY product_type HAVING AVG(rating);
SELECT product_type, AVG(rating) FROM cosmetics_info GROUP BY product_type HAVING AVG(rating) BETWEEN 4.5 and 4.7;
SELECT brand, COUNT(*) FROM cosmetics_info WHERE stock_status = 'In Stock' GROUP BY brand HAVING COUNT(*) > 2;


CREATE TABLE movies_info ( movie_id int not null unique, 
movie_name VARCHAR(40) not null unique,
lead_actor VARCHAR(50), lead_actress VARCHAR(50),
director VARCHAR(50) not null unique, 
release_Year INT not null , 
genre VARCHAR(30), IMDB_rating DECIMAL(2,1),
box_office_cr INT not null unique, 
production_house VARCHAR(50));

INSERT INTO movies_info (movie_id, movie_name, lead_actor, lead_actress, director, release_year, genre, IMDB_rating, box_office_cr, production_house) VALUES
(1,'KGF Chapter 1', 'Yash', 'Srinidhi Shetty', 'Prashanth Neel', 2018, 'Action', 8.2, 250, 'Hombale Films'),
(2,'Kantara', 'Rishab Shetty', 'Sapthami Gowda', 'Rishab Shetty', 2022, 'Thriller', 8.3, 400, 'Hombale Films'),
(3, 'Chowka', 'Prem Kumar', 'Priyamani', 'Tarun Sudhir', 2017, 'Drama', 8.1, 34, 'Tarun Talkies'),
(4, 'Mungaru Male', 'Ganesh', 'Pooja Gandhi', 'Yogaraj Bhat', 2006, 'Love', 8.1, 50, 'E.K. Entertainers'),
(5, 'Lucia', 'Sathish Ninasam', 'Sruthi Hariharan', 'Pawan Kumar', 2013, 'Psychological', 8.3, 15, 'Pawan Kumar Films'),
(6, 'Avane Srimannarayana', 'Rakshit Shetty', 'Shanvi Srivastava', 'Sachin Ravi', 2019, 'Adventure', 7.7, 90, 'Pushkar Films'),
(7, 'Googly', 'Yash', 'Kriti Kharbanda', 'Pawan Wadeyar', 2013, 'Love', 7.4, 40, 'Jayanna Films'),
(8, 'Bell Bottom', 'Rishab Shetty', 'Hariprriya', 'Jayatheertha', 2019, 'Comedy', 8.0, 30, 'Santhosh Films'),
(9, 'Tagaru', 'Shivarajkumar', 'Manvitha Harish', 'Duniya Soori', 2018, 'Action', 8.0, 70, 'K.P. Srikanth'),
(10, 'Super', 'Upendra', 'Nayantara', 'Upendra', 2010, 'Sci-Fi', 8.2, 55, 'Rockline Enter.'),
(11, 'James', 'Puneeth Rajkumar', 'Priya Anand', 'Chethan Kumar', 2022, 'Action', 8.1, 140, 'Kishore Prod.'),
(12, 'Raajakumara', 'Puneeth Rajkumar', 'Priya Anand', 'Santhosh Ananddram', 2017, 'Family', 8.3, 75, 'Hombale Films'),
(13, 'Roberrt', 'Darshan', 'Asha Bhat', 'Tharun Sudhir', 2021, 'Action', 7.0, 100, 'Umapathy Films'),
(14, 'RangiTaranga', 'Nirup Bhandari', 'Avantika Shetty', 'Anup Bhandari', 2015, 'Mystery', 8.3, 25, 'Shree Devi Enter.'),
(15, 'Bhajarangi', 'Shivarajkumar', 'Aindrita Ray', 'Harsha', 2013, 'Fantasy', 7.5, 60, 'Jayanna Films'),
(16, 'Naanu Avanalla...', 'Anu Prabhakar', 'Sanchari Vijay', 'B.S. Lingadevaru', 2015, 'Drama', 8.6, 10, 'Apthamitra Films'),
(17, 'Chamak', 'Ganesh', 'Rashmika Mandanna', 'Suni', 2017, 'Comedy', 7.6, 33, 'Crystal Park'),
(18, '777 Charlie', 'Rakshit Shetty', 'Sangeetha Sringeri', 'Kiranraj K.', 2022, 'Adventure', 9.0, 200, 'Paramvah Studios'),
(19, 'Kotigobba 2', 'Sudeep', 'Nithya Menen', 'K.S. Ravikumar', 2016, 'Action', 6.9, 85, 'Rockline Enter.'),
(20, 'Jogi', 'Shivarajkumar', 'Jennifer Kotwal', 'Prem', 2005, 'Action', 7.9, 45, 'Ramu Films'),
(21, 'Love Mocktail', 'Darling Krishna', 'Milana Nagaraj', 'Darling Krishna', 2020, 'Romance', 8.3, 35, 'Krishna Talkies');

SELECT * from movies_info;

ALTER TABLE movies_info ADD COLUMN language VARCHAR(20);
UPDATE movies_info SET language = 'Kannada';
ALTER TABLE movies_info ADD COLUMN movie_code VARCHAR(10);
UPDATE movies_info SET movie_code = "A00465" where movie_id=1;
UPDATE movies_info SET movie_code = "B00543" where movie_id=2;
UPDATE movies_info SET movie_code = "J78990" where movie_id=3;
UPDATE movies_info SET movie_code = "K45409" where movie_id=4;
UPDATE movies_info SET movie_code = "A30674" where movie_id=5;
UPDATE movies_info SET movie_code = "M00945" where movie_id=6;
UPDATE movies_info SET movie_code = "N80009" where movie_id=7;
UPDATE movies_info SET movie_code = "L00076" where movie_id=8;
UPDATE movies_info SET movie_code = "R00003" where movie_id=9;
UPDATE movies_info SET movie_code = "H999D3" where movie_id=10;
UPDATE movies_info SET movie_code = "O09944" where movie_id=11;
UPDATE movies_info SET movie_code = "0H0654" where movie_id=12;
UPDATE movies_info SET movie_code = "T09453" where movie_id=13;
UPDATE movies_info SET movie_code = "E00975" where movie_id=14;
UPDATE movies_info SET movie_code = "D01550" where movie_id=15;
UPDATE movies_info SET movie_code = "G78366" where movie_id=16;
UPDATE movies_info SET movie_code = "P76547" where movie_id=17;
UPDATE movies_info SET movie_code = "Q76541" where movie_id=18;
UPDATE movies_info SET movie_code = "Y98762" where movie_id=19;
UPDATE movies_info SET movie_code = "S76326" where movie_id=20;
UPDATE movies_info SET movie_code = "F37293" where movie_id=21;


SELECT * FROM movies_info;
SELECT COUNT(*) FROM movies_info;
SELECT AVG(IMDB_rating) FROM movies_info;
SELECT MIN(box_office_cr) FROM movies_info; 
SELECT MAX(box_office_cr) FROM movies_info;
SELECT SUM(box_office_cr) FROM movies_info;
SELECT COUNT(DISTINCT genre) FROM movies_info;
SELECT genre, COUNT(*) FROM movies_info GROUP BY genre;
SELECT genre, AVG(IMDB_rating) FROM movies_info GROUP BY genre;
SELECT production_house, SUM(box_office_cr) FROM movies_info GROUP BY production_house;
SELECT release_year, COUNT(*) FROM movies_info GROUP BY release_year;
SELECT genre, COUNT(*) FROM movies_info GROUP BY genre HAVING COUNT(*) > 1;

SELECT director, MIN(IMDB_rating) FROM movies_info GROUP BY director;
SELECT director, MAX(IMDB_rating) FROM movies_info GROUP BY director;
SELECT * FROM movies_info;
SELECT production_house, AVG(IMDB_rating) FROM movies_info GROUP BY production_house;
SELECT lead_actor, MAX(box_office_cr) FROM movies_info GROUP BY lead_actor;
SELECT genre, COUNT(*) FROM movies_info GROUP BY genre HAVING COUNT(*) > 3;
SELECT language, COUNT(*) FROM movies_info GROUP BY language;
SELECT release_year, COUNT(*) FROM movies_info GROUP BY release_year HAVING COUNT(*) > 2;
SELECT production_house, COUNT(*) FROM movies_info GROUP BY production_house HAVING COUNT(*) > 1;
SELECT genre, AVG(box_office_cr) FROM movies_info GROUP BY genre HAVING AVG(box_office_cr) > 50;
SELECT genre, COUNT(*), AVG(IMDB_rating) FROM movies_info GROUP BY genre HAVING AVG(IMDB_rating) > 8;
SELECT director, MAX(IMDB_rating) FROM movies_info GROUP BY director HAVING MAX(IMDB_rating) > 8.5;
SELECT lead_actor, COUNT(*), SUM(box_office_cr) FROM movies_info GROUP BY lead_actor HAVING COUNT(*) > 2;

/*******************************
01/04/25   **********/

CHECK:

CREATE TABLE employee_info(id int not null unique,
emp_name varchar(20) not null unique,
emp_dept varchar(20) not null, emp_sal bigint,
emp_age int, check (emp_age > 20));

Rename table old_table_name to new_table_name;

Rename table employee_info to emp_info;

select * from emp_info;

INSERT INTO emp_info values(1,'Akshar', 'HR', 50000, 26);

CREATE TABLE mentee_info(id int not null unique, 
mentee_name varchar(20) not null unique,
age int, college_name varchar(30) not null, 
branch_name varchar(20) not null, mentor_name varchar(20) not null,
CHECK (age>=20 and age<30));

ALTER TABLE mentee_info modify column college_name varchar(30);
desc mentee_info;
select * from mentee_info;
insert into mentee_info values(1, 'Anu', 19, 'GEC challakere', 'CSE', 'Swathi Sharma');
INSERT into mentee_info values(1, 'Anu', 20, 'GEC challakere', 'CSE', 'Swathi Sharma');
INSERT into mentee_info values(2, 'Bavya', 30, 'GEC Karavar', 'E&C', 'Aditi Rathod');
INSERT into mentee_info values(2, 'Bavya', 21, 'GEC Karavar', 'E&C', 'Aditi Rathod');
INSERT into mentee_info values(3, 'Chethan', 20, 'RV College', 'EEE', 'Shalaka Gupta');
INSERT into mentee_info values(4, 'Dinakar S', 22, 'Reva Univercity', 'AIML', 'Prasad T M');
INSERT into mentee_info values(5, 'Kiran', 34, 'SJMIT', 'AIML', 'Swaroop Singh');
INSERT into mentee_info values(5, 'Kiran', 22, 'SJMIT', 'AIML', 'Swaroop Singh');
INSERT into mentee_info values(6, 'Sharath Kumar', 23, 'BMSIT', 'AIML', 'Anuragh Batt');
INSERT into mentee_info values(7, 'abc', 26, null, 'AIML', 'Anuragh Batt');

/****************************/


SELECT * from pkl_info;
ALTER TABLE pkl_info MODIFY column ID int;
ALTER TABLE pkl_info MODIFY column ID int not null unique;

ALTER TABLE pkl_info MODIFY column team_name varchar(30);
ALTER TABLE pkl_info MODIFY column team_name varchar(30) not null unique;

ALTER TABLE pkl_info MODIFY column captain varchar(30);
ALTER TABLE pkl_info MODIFY column captain varchar(30) not null unique;

ALTER TABLE pkl_info MODIFY column coach varchar(30);
ALTER TABLE pkl_info MODIFY column coach varchar(30) not null unique;

ALTER TABLE pkl_info MODIFY column star_player varchar(30);
ALTER TABLE pkl_info MODIFY column star_player varchar(30) not null unique;

ALTER TABLE pkl_info MODIFY column sponsor varchar(30);
ALTER TABLE pkl_info MODIFY column sponsor varchar(30) not null unique;

ALTER TABLE pkl_info MODIFY column titles_won int not null;
ALTER TABLE pkl_info MODIFY column titles_won int unique;
ALTER TABLE pkl_info MODIFY column titles_won int;

ALTER TABLE pkl_info MODIFY column home_ground varchar(30) not null unique;
ALTER TABLE pkl_info MODIFY column home_ground varchar(30) not null;

ALTER TABLE pkl_info MODIFY column founded_year year;
ALTER TABLE pkl_info MODIFY column founded_year year not null;
ALTER TABLE pkl_info MODIFY column founded_year year not null  unique;

select * from movies_info;
ALTER TABLE movies_info MODIFY column movie_id int;
ALTER TABLE movies_info MODIFY column movie_id int not null unique;

ALTER TABLE movies_info MODIFY column movie_name VARCHAR(40);
ALTER TABLE movies_info MODIFY column movie_name VARCHAR(40) not null unique;

ALTER TABLE movies_info MODIFY column lead_actor VARCHAR(50);
ALTER TABLE movies_info MODIFY column lead_actor VARCHAR(50) not null;
ALTER TABLE movies_info MODIFY column lead_actor VARCHAR(50) not null unique;

ALTER TABLE movies_info MODIFY column lead_actress VARCHAR(50);
ALTER TABLE movies_info MODIFY column lead_actress VARCHAR(50) not null;
ALTER TABLE movies_info MODIFY column lead_actress VARCHAR(50) not null unique;

ALTER TABLE movies_info MODIFY column genre VARCHAR(50) ;
ALTER TABLE movies_info MODIFY column genre VARCHAR(50) not null unique;

ALTER TABLE movies_info MODIFY column director VARCHAR(50) ;
ALTER TABLE movies_info MODIFY column director VARCHAR(50) not null unique;

ALTER TABLE movies_info MODIFY column release_Year INT;
ALTER TABLE movies_info MODIFY column release_Year INT not null unique;
ALTER TABLE movies_info MODIFY column release_Year INT not null;

ALTER TABLE movies_info MODIFY column IMDB_rating DECIMAL(2,1) not null unique;
ALTER TABLE movies_info MODIFY column IMDB_rating DECIMAL(2,1) not null;
ALTER TABLE movies_info MODIFY column IMDB_rating DECIMAL(2,1);

ALTER TABLE movies_info MODIFY column box_office_cr INT;
ALTER TABLE movies_info MODIFY column box_office_cr INT not null unique;

ALTER TABLE movies_info MODIFY column production_house VARCHAR(50);
ALTER TABLE movies_info MODIFY column production_house VARCHAR(50) not null;

SELECT * from cosmetics_info;
ALTER table cosmetics_info MODIFY column id int;
ALTER table cosmetics_info MODIFY column id int not null unique;

ALTER table cosmetics_info MODIFY column product_Name VARCHAR(50);
ALTER table cosmetics_info MODIFY column product_Name VARCHAR(50) not null unique;

ALTER table cosmetics_info MODIFY column brand VARCHAR(30);
ALTER table cosmetics_info MODIFY column brand VARCHAR(30) not null unique;

ALTER table cosmetics_info MODIFY column product_type VARCHAR(30) not null;
ALTER table cosmetics_info MODIFY column product_type VARCHAR(30);

ALTER table cosmetics_info MODIFY column price INT;
ALTER table cosmetics_info MODIFY column price INT not null;

ALTER table cosmetics_info MODIFY column product_usage VARCHAR(30) ;
ALTER table cosmetics_info MODIFY column product_usage VARCHAR(30) not null unique;

ALTER table cosmetics_info MODIFY column rating DECIMAL(2,1) not null;
ALTER table cosmetics_info MODIFY column rating DECIMAL(2,1);

ALTER table cosmetics_info MODIFY column ingredients varchar(40);
ALTER table cosmetics_info MODIFY column ingredients varchar(40) not null unique;

ALTER table cosmetics_info MODIFY column Availability VARCHAR(30);
ALTER table cosmetics_info MODIFY column Availability VARCHAR(30) not null;

/* 2/4/25 */

CREATE TABLE cric_info(id int, player_name varchar(20), team_name varchar(20),
jersey_no int, no_of_matches int, total_runs int);

SELECT * FROM cric_info;

ALTER TABLE cric_info modify column team_name varchar(30) not null;
/*Syntax for adding constraint using constarint name
ALTER TABLE table_name ADD constraint constraint_name type_of_constraint
(column_name);*/

update cric_info set player_name = 'ViratKohli' where id = 3;

ALTER TABLE cric_info ADD CONSTRAINT player_name_uni UNIQUE(player_name);

ALTER TABLE cric_info ADD constraint team_name_uni unique(team_name);

ALTER TABLE cric_info DROP CONSTRAINT team_name_uni;


insert into cric_info values(5,'axar', 'india', 19, 50, 2000);

ALTER TABLE cric_info add constraint matches_chk check(no_of_matches > 100);

ALTER TABLE cric_info drop constraint matches_chk;

PRIMARY KEY:

CREATE TABLE food_info(id int primary key, food_item varchar(20), 
price decimal(4,2),
no_of_integrents int, chef_name varchar(20));

SELECT * FROM food_info;

INSERT INTO food_info values(1,'Rice', 50.00, 3,'sunil');
INSERT INTO food_info values(2,'noodles', 90.00, 4,'abc');

CREATE TABLE bank_info(id int, bank_name varchar(20), bank_branch varchar(20),
no_of_cust int, ifsc_code varchar(30), primary key(bank_name, bank_branch)); 

select * from bank_info;

insert into bank_info values(1,'sbi','btm', 500, 'sbibtm');
insert into bank_info values(2,'sbi','jaynagr', 800, 'sbijn');
insert into bank_info values(3,'hdfc','btm', 300, 'sbibt');

ENUM: Enumeration.

CREATE TABLE olympics_info(id int, game_name varchar(20), 
game_type enum('indoor', 'outdoor'),
country_name varchar(30), no_of_medals int, rank_position int, no_of_players int,
coach_name varchar(20), gender varchar(20), age int, sponsor varchar(20), weight int,
city varchar(20));

select * from olympics_info;
INSERT INTO olympics_info values(1,'javilthrow', 'outdoor',
'India', 2, 1, 1,'ABC', 'M', 30, 'PUMA', 60,'Delhi');

INSERT INTO olympics_info values(2,'Batminton', 1,
'India', 2, 1, 1,'ABC', 'M', 30, 'PUMA', 60,'Delhi');

/*Create table:
Furniture_info : 10 columns use any one column as enum
electronic_gadgets: 10 columns use any one column as enum
restaurant_info: 10 columns use any one column as enum
olympics_info: 10 columns use any one column as enum
For each table apply not null, unique, check constraint for 6 columns using alter.
Insert 15 data for each table.
ADD 2 COLUMN using alter.
update data for new columns.
*/

CREATE TABLE furniture_info(id int not null, name varchar(20), type enum('Storage','Seating'), 
material varchar(20), brand varchar(20), color varchar(20), price bigint, 
dimension varchar(20), weight int, warranty int);

ALTER TABLE furniture_info add CONSTRAINT id_unique unique(id);
ALTER TABLE furniture_info ADD CONSTRAINT CHK_price CHECK (price > 0);
ALTER TABLE furniture_info ADD CONSTRAINT CHK_weight CHECK (weight > 5);
ALTER TABLE furniture_info modify column brand varchar(20) not null;
ALTER TABLE furniture_info modify column name varchar(20) not null;
ALTER TABLE furniture_info ADD CONSTRAINT CHK_warranty CHECK (warranty >= 0);

desc furniture_info;
SELECT * from furniture_info;
INSERT INTO furniture_info VALUES(1, 'Chair', 'Seating', 'Wood', 'IKEA', 'Brown', 5000, '40x40x90', 7, 1),
(2, 'Table', 'Storage', 'Metal', 'Godrej', 'Black', 10000, '120x60x75', 20, 2),
(3, 'Sofa', 'Seating', 'Fabric', 'Pepperfry', 'Blue', 25000, '200x90x100', 35, 5),
(4, 'Bed', 1, 'Wood', 'Sleepwell', 'White', 30000, '210x180x50', 50, 7),
(5, 'Wardrobe', 1, 'Plywood', 'Hometown', 'Grey', 18000, '180x100x50', 40, 3),
(6, 'Desk', 1, 'Wood', 'Durian', 'Mahogany', 12000, '140x60x75', 15, 2),
(7, 'Recliner', 2, 'Leather', 'La-Z-Boy', 'Brown', 28000, '100x90x100', 25, 5),
(8, 'Bookshelf', 1, 'Wood', 'IKEA', 'White', 8000, '80x30x180', 18, 3),
(9, 'Coffee Table', 1, 'Glass', 'Hometown', 'Transparent', 7000, '90x50x45', 12, 2),
(10, 'TV Unit', 1, 'MDF', 'UrbanLadder', 'Walnut', 15000, '160x50x60', 20, 4),
(11, 'Dining Table', 1, 'Wood', 'Nilkamal', 'Cherry', 20000, '180x90x75', 30, 5),
(12, 'Shoe Rack', 1, 'Plastic', 'IKEA', 'Beige', 4000, '60x30x100', 8, 1),
(13, 'Cupboard', 1, 'Steel', 'Godrej', 'Grey', 25000, '200x100x50', 45, 7),
(14, 'Stool', 2, 'Wood', 'Pepperfry', 'Brown', 3000, '35x35x50', 6, 1),
(15, 'Nightstand', 1, 'MDF', 'Hometown', 'Black', 5000, '50x40x60', 10, 2),
(16, 'Ottoman', 2, 'Fabric', 'Durian', 'Green', 8000, '70x50x40', 6, 3),
(17, 'Chest Drawer', 1, 'Wood', 'IKEA', 'White', 12000, '100x50x90', 25, 4),
(18, 'Vanity Table', 1, 'Plywood', 'Hometown', 'Pink', 15000, '120x50x80', 22, 5),
(19, 'Bar Stool', 2, 'Metal', 'UrbanLadder', 'Red', 6000, '45x45x90', 8, 2),
(20, 'Side Table', 1, 'Plastic', 'IKEA', 'Red', 3000, '50x50x50', 6, 1);

alter table furniture_info add column stock int;
alter table furniture_info add column manufacturer varchar(20);

UPDATE furniture_info SET Stock = 20 WHERE ID = 1;
UPDATE furniture_info SET Manufacturer = 'XYZ Furnish' WHERE ID = 1;
UPDATE furniture_info SET Manufacturer = 'ABC Home' WHERE ID = 2;
UPDATE furniture_info SET Stock = 15 WHERE ID = 2;
UPDATE furniture_info SET Stock = 10 WHERE ID = 3;
UPDATE furniture_info SET Manufacturer = 'Comfort Luxe' WHERE ID = 3;
UPDATE furniture_info SET Stock = 8 WHERE ID = 4;
UPDATE furniture_info SET Manufacturer = 'CozyNest' WHERE ID = 4;
UPDATE furniture_info SET Stock = 12 WHERE ID = 5;
UPDATE furniture_info SET Manufacturer = 'Space Saver' WHERE ID = 5;
UPDATE furniture_info SET Stock = 18 WHERE ID = 6;
UPDATE furniture_info SET Manufacturer = 'Urban Craft' WHERE ID = 6;
UPDATE furniture_info SET Stock = 5 WHERE ID = 7;
UPDATE furniture_info SET Manufacturer = 'Comfort Plus' WHERE ID = 7;
UPDATE furniture_info SET Stock = 22 WHERE ID = 8;
UPDATE furniture_info SET Manufacturer = 'ReadEase' WHERE ID = 8;
UPDATE furniture_info SET Stock = 25 WHERE ID = 9;
UPDATE furniture_info SET Manufacturer = 'Trendy Living' WHERE ID = 9;
UPDATE furniture_info SET Stock = 14 WHERE ID = 10;
UPDATE furniture_info SET Manufacturer = 'Deco Space' WHERE ID = 10;
UPDATE furniture_info SET Stock = 10 WHERE ID = 11;
UPDATE furniture_info SET Manufacturer = 'Elite Homes' WHERE ID = 11;
UPDATE furniture_info SET Stock = 25 WHERE ID = 12;
UPDATE furniture_info SET Manufacturer = 'SmartOrganize' WHERE ID = 12;
UPDATE furniture_info SET Stock = 9 WHERE ID = 13;
UPDATE furniture_info SET Manufacturer = 'Simple Style' WHERE ID = 14;
UPDATE furniture_info SET Manufacturer = 'SpaceSaver' WHERE ID = 13;
UPDATE furniture_info SET Stock = 20 WHERE ID = 15;
UPDATE furniture_info SET Stock = 34 WHERE ID = 14;
UPDATE furniture_info SET Manufacturer = 'Urban Craft' WHERE ID = 15;
UPDATE furniture_info SET Stock = 15 WHERE ID = 16;
UPDATE furniture_info SET Manufacturer = 'Cozy Comfort' WHERE ID = 16;
UPDATE furniture_info SET Stock = 12 WHERE ID = 17;
UPDATE furniture_info SET Manufacturer = 'Deco Space' WHERE ID = 17;
UPDATE furniture_info SET Stock = 8 WHERE ID = 18;
UPDATE furniture_info SET Manufacturer = 'Elite Homes' WHERE ID = 18;
UPDATE furniture_info SET Stock = 18 WHERE ID = 19;
UPDATE furniture_info SET Manufacturer = 'Trendy Living' WHERE ID = 19;
UPDATE furniture_info SET Stock = 30 WHERE ID = 20;
UPDATE furniture_info SET Manufacturer = 'QuickHome' WHERE ID = 20;
SELECT * FROM furniture_info;

CREATE TABLE electronic_gadgets (ID INT PRIMARY KEY, Name VARCHAR(50),
    Category ENUM('Computing', 'Mobile', 'Entertainment', 'Wearable', 'Audio', 'Photography', 'Gaming', 'Accessories', 'Office', 'Networking', 'Storage'),
    Brand VARCHAR(50), Model VARCHAR(50), Screen_Size VARCHAR(20), Battery_Life VARCHAR(20), Processor VARCHAR(50), RAM VARCHAR(20), Storage VARCHAR(20));

ALTER TABLE electronic_gadgets ADD CONSTRAINT unique_model UNIQUE (Model);
ALTER TABLE electronic_gadgets ADD CONSTRAINT unique_processor UNIQUE (Processor);
ALTER TABLE electronic_gadgets DROP CONSTRAINT unique_processor;
ALTER TABLE electronic_gadgets MODIFY COLUMN Name VARCHAR(50) NOT NULL;
ALTER TABLE electronic_gadgets MODIFY COLUMN Category ENUM('Computing', 'Mobile', 'Entertainment', 'Wearable', 'Audio', 'Photography', 'Gaming', 'Accessories', 'Office', 'Networking', 'Storage') NOT NULL;
ALTER TABLE electronic_gadgets MODIFY COLUMN Brand VARCHAR(50) NOT NULL;
ALTER TABLE electronic_gadgets MODIFY COLUMN Model VARCHAR(50) NOT NULL;
ALTER TABLE electronic_gadgets MODIFY COLUMN Processor VARCHAR(50) NOT NULL;
ALTER TABLE electronic_gadgets MODIFY COLUMN RAM VARCHAR(20) NOT NULL;

desc electronic_gadgets;
INSERT INTO electronic_gadgets VALUES (1, 'Laptop', 'Computing', 'HP', 'Elite', '15.6 inch', '8 hours', 'i7', '16GB', '512GB'),
(2, 'Smartphone', 'Mobile', 'Samsung', 'S23', '6.7 inch', '24 hours', 'Exynos', '8GB', '256GB');
INSERT INTO electronic_gadgets VALUES (3, 'Tablet', 'Mobile', 'Apple', 'iPad Pro', '12.9 inch', '10 hours', 'M1', '16GB', '1TB'),
(4, 'Smart TV', 'Entertainment', 'Sony', 'Bravia X90J', '65 inch', 'N/A', 'Quad-core', '2GB', '16GB'),
(5, 'Smartwatch', 'Wearable', 'Garmin', 'Fenix 6', '1.4 inch', '14 days', 'Cortex-M', '512MB', '8GB'),
(6, 'Headphones', 'Audio', 'Bose', 'QuietComfort', 'N/A', '20 hours', 'N/A', 'N/A', 'N/A'),
(7, 'Camera', 'Photography', 'Canon', 'EOS R5', 'N/A', 'N/A', 'DIGIC X', 'N/A', '256GB'),
(8, 'Console', 'Gaming', 'Sony', 'PS5', 'N/A', 'N/A', 'Custom AMD', '16GB', '825GB'),
(9, 'Mouse', 'Accessories', 'Logitech', 'MX Master 3', 'N/A', '70 days', 'N/A', 'N/A', 'N/A'),
(10, 'Keyboard', 'Accessories', 'Corsair', 'K95', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(11, 'VR Headset', 'Entertainment', 'Meta', 'Quest 2', '5.5 inch', '3 hours', 'Snapdragon', '6GB', '128GB'),
(12, 'Drone', 'Photography', 'DJI', 'Mavic Air 2', 'N/A', '34 mins', 'Quad-core', 'N/A', '128GB'),
(13, 'Speaker', 'Audio', 'JBL', 'Charge 5', 'N/A', '20 hours', 'N/A', 'N/A', 'N/A'),
(14, 'Monitor', 'Computing', 'Dell', 'UltraSharp', '27 inch', 'N/A', 'N/A', 'N/A', 'N/A'),
(15, 'Printer', 'Office', 'HP', 'LaserJet', 'N/A', 'N/A', 'Quad-core', '512MB', 'N/A'),
(16, 'Router', 'Networking', 'Netgear', 'Nighthawk', 'N/A', 'N/A', 'Dual-core', 'N/A', 'N/A'),
(17, 'Hard Drive', 'Storage', 'Seagate', 'Backup Plus', 'N/A', 'N/A', 'N/A', 'N/A', '2TB'),
(18, 'Webcam', 'Accessories', 'Logitech', 'C920', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(19, 'Power Bank', 'Accessories', 'Anker', 'PowerCore', 'N/A', '20 hours', 'N/A', 'N/A', 'N/A'),
(20, 'E-Reader', 'Mobile', 'Kindle', 'Paperwhite', '6 inch', '10 weeks', 'N/A', 'N/A', '32GB');

SELECT * from electronic_gadgets;
ALTER TABLE electronic_gadgets ADD COLUMN Price INT;
ALTER TABLE electronic_gadgets ADD COLUMN Warranty VARCHAR(20);

UPDATE electronic_gadgets SET Price = 75000 WHERE ID = 1;
UPDATE electronic_gadgets SET Price = 60000 WHERE ID = 2;
UPDATE electronic_gadgets SET Price = 110000 WHERE ID = 3;
UPDATE electronic_gadgets SET Price = 90000 WHERE ID = 4;
UPDATE electronic_gadgets SET Price = 50000 WHERE ID = 5;
UPDATE electronic_gadgets SET Price = 30000 WHERE ID = 6;
UPDATE electronic_gadgets SET Price = 250000 WHERE ID = 7;
UPDATE electronic_gadgets SET Price = 50000 WHERE ID = 8;
UPDATE electronic_gadgets SET Price = 8000 WHERE ID = 9;
UPDATE electronic_gadgets SET Price = 15000 WHERE ID = 10;
UPDATE electronic_gadgets SET Price = 35000 WHERE ID = 11;
UPDATE electronic_gadgets SET Price = 100000 WHERE ID = 12;
UPDATE electronic_gadgets SET Price = 15000 WHERE ID = 13;
UPDATE electronic_gadgets SET Price = 30000 WHERE ID = 14;
UPDATE electronic_gadgets SET Price = 25000 WHERE ID = 15;
UPDATE electronic_gadgets SET Price = 12000 WHERE ID = 16;
UPDATE electronic_gadgets SET Price = 8000 WHERE ID = 17;
UPDATE electronic_gadgets SET Price = 6000 WHERE ID = 18;
UPDATE electronic_gadgets SET Price = 4000 WHERE ID = 19;
UPDATE electronic_gadgets SET Price = 12000 WHERE ID = 20;

UPDATE electronic_gadgets SET Warranty = '2 Years' WHERE ID = 1;
UPDATE electronic_gadgets SET Warranty = '1 Year' WHERE ID = 2;
UPDATE electronic_gadgets SET Warranty = '3 Years' WHERE ID = 3;
UPDATE electronic_gadgets SET Warranty = '5 Years' WHERE ID = 4;
UPDATE electronic_gadgets SET Warranty = '2 Years' WHERE ID = 5;
UPDATE electronic_gadgets SET Warranty = '1 Year' WHERE ID = 6;
UPDATE electronic_gadgets SET Warranty = '3 Years' WHERE ID = 7;
UPDATE electronic_gadgets SET Warranty = '2 Years' WHERE ID = 8;
UPDATE electronic_gadgets SET Warranty = '1 Year' WHERE ID = 9;
UPDATE electronic_gadgets SET Warranty = '2 Years' WHERE ID = 10;
UPDATE electronic_gadgets SET Warranty = '1 Year' WHERE ID = 11;
UPDATE electronic_gadgets SET Warranty = '2 Years' WHERE ID = 12;
UPDATE electronic_gadgets SET Warranty = '1 Year' WHERE ID = 13;
UPDATE electronic_gadgets SET Warranty = '3 Years' WHERE ID = 14;
UPDATE electronic_gadgets SET Warranty = '2 Years' WHERE ID = 15;
UPDATE electronic_gadgets SET Warranty = '2 Years' WHERE ID = 16;
UPDATE electronic_gadgets SET Warranty = '3 Years' WHERE ID = 17;
UPDATE electronic_gadgets SET Warranty = '1 Year' WHERE ID = 18;
UPDATE electronic_gadgets SET Warranty = '1 Year' WHERE ID = 19;
UPDATE electronic_gadgets SET Warranty = '2 Years' WHERE ID = 20;


CREATE TABLE restaurant_info (id INT, Name VARCHAR(50),
    type ENUM('South Indian', 'Coastal', 'Mangalorean', 'Continental', 'Seafood', 'Multi-Cuisine', 'Global Cuisine'),
    Location VARCHAR(100), Seating_Capacity INT, Ratings decimal(2,1),
    Opening_Hours TIME, Closing_Hours TIME, Menu_Type ENUM('Vegetarian', 'Non-Vegetarian', 'Veg/Non-Veg'), min_price int);

ALTER TABLE restaurant_info MODIFY Name VARCHAR(255) NOT NULL UNIQUE;
ALTER TABLE restaurant_info MODIFY type ENUM('South Indian', 'Coastal', 'Mangalorean', 'Continental', 'Seafood', 'Multi-Cuisine', 'Global Cuisine', 'Andhra', 'Karnataka') NOT NULL;
ALTER TABLE restaurant_info MODIFY Location VARCHAR(100) NOT NULL;
ALTER TABLE restaurant_info MODIFY Seating_Capacity INT NOT NULL CHECK (Seating_Capacity > 0);
ALTER TABLE restaurant_info MODIFY Ratings DECIMAL(2,1) NOT NULL CHECK (Ratings >= 0 AND Ratings <= 5);
ALTER TABLE restaurant_info MODIFY min_price int NOT NULL;

INSERT INTO restaurant_info VALUES (1,'Mavalli Tiffin Room (MTR)', 'South Indian', 'Bengaluru', 100, 4.5, '06:30:00', '23:00:00', 'Vegetarian', 100),
(2, 'The Konkan', 'Coastal', 'Bengaluru', 80, 4.6, '12:00:00', '23:00:00', 'Non-Vegetarian', 200),
(3, 'Anupam\'s Coast II Coast', 'Mangalorean', 'Bengaluru', 60, 4.4, '11:30:00', '23:00:00', 'Non-Vegetarian', 666),
(4, 'Malgudi Mylari Mane', 'South Indian', 'Nelamangala', 50, 4.3, '07:00:00', '22:00:00', 'Vegetarian', 111),
(5, 'Diesel Café', 'Continental', 'Mangaluru', 70, 4.5, '08:00:00', '23:00:00', 'Non-Vegetarian', 345),
(6, 'Janatha Deluxe', 'South Indian', 'Mangaluru', 100, 4.2, '07:00:00', '22:00:00', 'Vegetarian', 239),
(7, 'Giri Manjas', 'Seafood', 'Mangaluru', 40, 4.6, '11:00:00', '22:00:00', 'Non-Vegetarian', 279),
(8, 'The Little South', 'South Indian', 'Mysuru', 60, 4.4, '08:00:00', '22:00:00', 'Vegetarian', 200),
(9, 'Black Pepper', 'Multi-Cuisine', 'Mysuru', 80, 4.3, '12:00:00', '23:00:00', 'Veg/Non-Veg', 555),
(10, 'Mosaic', 'Global Cuisine', 'Mysuru', 90, 4.5, '00:00:00', '00:00:00', 'Veg/Non-Veg', 129),
(11, 'Maddur Tiffany’s', 'South Indian', 'Maddur', 50, 4.2, '05:30:00', '20:30:00', 'Vegetarian', 999),
(12, 'Shark Food Court', 'Multi-Cuisine', 'Kunigal', 120, 4.0, '06:00:00', '23:00:00', 'Veg/Non-Veg', 99),
(13, 'Empire Restaurant', 'Multi-Cuisine', 'Bengaluru', 150, 4.1, '12:00:00', '02:00:00', 'Veg/Non-Veg', 50),
(14, 'Vidyarthi Bhavan', 'South Indian', 'Bengaluru', 60, 4.5, '06:30:00', '11:30:00', 'Vegetarian', 509),
(15, 'Nagarjuna', 'Andhra', 'Bengaluru', 100, 4.3, '12:00:00', '15:30:00', 'Non-Vegetarian', 499),
(16, 'Koshy\'s', 'Continental', 'Bengaluru', 150, 4.2, '09:00:00', '23:00:00', 'Veg/Non-Veg', 455);

ALTER TABLE restaurant_info ADD COLUMN Owner VARCHAR(50);
ALTER TABLE restaurant_info ADD COLUMN Established_Year INT;

UPDATE restaurant_info SET Established_Year = 1924 WHERE Name = 'Mavalli Tiffin Room (MTR)';
UPDATE restaurant_info SET Owner = 'Hemamalini Maiya' WHERE Name = 'Mavalli Tiffin Room (MTR)';
UPDATE restaurant_info SET Owner = 'Private Ownership'  WHERE Name = 'The Konkan';
UPDATE restaurant_info SET Established_Year = 2018 WHERE Name = 'The Konkan';
UPDATE restaurant_info SET Established_Year = 1994 where id=3;
UPDATE restaurant_info SET Owner = 'Anupam Adiga' WHERE Name = 'Anupam\'s Coast II Coast';
UPDATE restaurant_info SET Established_Year = 2015 where id=4;
UPDATE restaurant_info SET Owner = 'Private Ownership' WHERE Name = 'Malgudi Mylari Mane';
UPDATE restaurant_info SET Established_Year = 2007 where id=5;
UPDATE restaurant_info SET Owner = 'Private Ownership' WHERE Name = 'Diesel Café';
UPDATE restaurant_info SET Established_Year = 1980 where id =6;
UPDATE restaurant_info SET Owner = 'Private Ownership' WHERE Name = 'Janatha Deluxe';
UPDATE restaurant_info SET Established_Year = 1995  where id =7;
UPDATE restaurant_info SET Owner = 'Private Ownership'WHERE Name = 'Giri Manjas';
UPDATE restaurant_info SET Established_Year = 2010  where id =8;
UPDATE restaurant_info SET Owner = 'Private Ownership'WHERE Name = 'The Little South';
UPDATE restaurant_info SET Established_Year = 2012  where id =9;
UPDATE restaurant_info SET Owner = 'Private Ownership'WHERE Name = 'Black Pepper';
UPDATE restaurant_info SET Established_Year = 2015 where id =10;
UPDATE restaurant_info SET Owner = 'Country Inn & Suites' WHERE Name = 'Mosaic';
UPDATE restaurant_info SET Established_Year = 1970 where id =11;
UPDATE restaurant_info SET Owner = 'Private Ownership'  WHERE Name = 'Maddur Tiffany’s';
UPDATE restaurant_info SET Established_Year = 2010 where id =12;
UPDATE restaurant_info SET Owner = 'Private Ownership' WHERE Name = 'Shark Food Court';
UPDATE restaurant_info SET  Established_Year = 1966 where id =13;
UPDATE restaurant_info SET Owner = 'Private Ownership' WHERE Name = 'Empire Restaurant';
UPDATE restaurant_info SET Established_Year = 1943 where id =14;
UPDATE restaurant_info SET Owner = 'Private Ownership'  WHERE Name = 'Vidyarthi Bhavan';
UPDATE restaurant_info SET  Established_Year = 1945 where id =15;
UPDATE restaurant_info SET Owner = 'Private Ownership' WHERE id =15;
UPDATE restaurant_info SET Established_Year = 1963 where id =16;
UPDATE restaurant_info SET Owner = 'Private Ownership' where id =16;

select * from restaurant_info;

CREATE TABLE OlympicEvents (id INT, EventName VARCHAR(50),
Sport ENUM('Athletics', 'Football', 'Swimming', 'Basketball', 'Gymnastics', 'Diving', 'Hockey', 'Shooting', 'Table Tennis', 'Taekwondo', 'Cycling', 'Tennis', 'Weightlifting'),
Year INT, HostCity VARCHAR(30), Country VARCHAR(30), GoldMedalist VARCHAR(30), SilverMedalist VARCHAR(30), BronzeMedalist VARCHAR(30), Participants INT);

ALTER TABLE OlympicEvents MODIFY EventName VARCHAR(50) NOT NULL;
ALTER TABLE OlympicEvents MODIFY Sport ENUM('Athletics', 'Football', 'Swimming', 'Basketball', 'Gymnastics', 'Diving', 'Hockey', 'Shooting', 'Table Tennis', 'Taekwondo', 'Cycling', 'Tennis', 'Weightlifting') NOT NULL;
ALTER TABLE OlympicEvents MODIFY Year INT NOT NULL CHECK (Year >= 1896);
ALTER TABLE OlympicEvents MODIFY HostCity VARCHAR(50) NOT NULL;
ALTER TABLE OlympicEvents MODIFY Country VARCHAR(50) NOT NULL;
ALTER TABLE OlympicEvents MODIFY GoldMedalist VARCHAR(50) NOT NULL;
ALTER TABLE OlympicEvents ADD CONSTRAINT unique_event UNIQUE (EventName);
ALTER TABLE OlympicEvents ADD CONSTRAINT unique_event UNIQUE (Year);

INSERT INTO OlympicEvents VALUES(1, '100m Sprint Men', 'Athletics', 2020, 'Tokyo', 'Japan', 'Marcell Jacobs', 'Fred Kerley', 'Andre De Grasse', 8),
(2, '100m Sprint Women', 'Athletics', 2020, 'Tokyo', 'Japan', 'Elaine Thompson-Herah', 'Shelly-Ann Fraser-Pryce', 'Shericka Jackson', 8),
(3, 'Men\'s Football Final', 'Football', 2016, 'Rio de Janeiro', 'Brazil', 'Brazil', 'Germany', 'Nigeria', 22),
(4, 'Women\'s Football Final', 'Football', 2012, 'London', 'UK', 'USA', 'Japan', 'Canada', 22),
(5, '200m Butterfly Men', 'Swimming', 2008, 'Beijing', 'China', 'Michael Phelps', 'Laszlo Cseh', 'Takeshi Matsuda', 8),
(6, '400m Freestyle Women', 'Swimming', 2016, 'Rio de Janeiro', 'Brazil', 'Katie Ledecky', 'Jazz Carlin', 'Leah Smith', 8),
(7, 'Men\'s Basketball Final', 'Basketball', 2012, 'London', 'UK', 'USA', 'Spain', 'Russia', 10),
(8, 'Women\'s Gymnastics All-Around', 'Gymnastics', 2016, 'Rio de Janeiro', 'Brazil', 'Simone Biles', 'Aly Raisman', 'Aliya Mustafina', 24),
(9, 'Men\'s 10m Platform Diving', 'Diving', 2020, 'Tokyo', 'Japan', 'Cao Yuan', 'Yang Jian', 'Tom Daley', 12),
(10, 'Women\'s 4x100m Relay', 'Athletics', 2016, 'Rio de Janeiro', 'Brazil', 'USA', 'Jamaica', 'Great Britain', 8),
(11, 'Men\'s Marathon', 'Athletics', 2020, 'Sapporo', 'Japan', 'Eliud Kipchoge', 'Abdi Nageeye', 'Bashir Abdi', 50),
(12, 'Men\'s Pole Vault', 'Athletics', 2020, 'Tokyo', 'Japan', 'Armand Duplantis', 'Christopher Nilsen', 'Thiago Braz', 12),
(13, 'Women\'s Hockey Final', 'Hockey', 2020, 'Tokyo', 'Japan', 'Netherlands', 'Argentina', 'Great Britain', 22),
(14, 'Men\'s 50km Walk', 'Athletics', 2016, 'Rio de Janeiro', 'Brazil', 'Matej Tóth', 'Jared Tallent', 'Evan Dunfee', 40),
(15, 'Women\'s 10m Air Rifle', 'Shooting', 2020, 'Tokyo', 'Japan', 'Yang Qian', 'Anastasiia Galashina', 'Nina Christen', 8);

ALTER TABLE OlympicEvents ADD COLUMN RecordsSet VARCHAR(50);
ALTER TABLE OlympicEvents ADD COLUMN VenueName VARCHAR(50);

UPDATE OlympicEvents SET RecordsSet = 'Olympic Record' WHERE id = 1;
UPDATE OlympicEvents SET VenueName = 'Olympic Stadium' WHERE id = 1;

UPDATE OlympicEvents SET RecordsSet = 'Olympic Record' WHERE id = 2;
UPDATE OlympicEvents SET VenueName = 'Tokyo International Forum' WHERE id = 2;

UPDATE OlympicEvents SET RecordsSet = 'Olympic Record' WHERE id = 3;
UPDATE OlympicEvents SET VenueName = 'Olympic Stadium' WHERE id = 3;

UPDATE OlympicEvents SET RecordsSet = 'Olympic Record' WHERE id = 4;
UPDATE OlympicEvents SET VenueName = 'Carioca Arena' WHERE id = 4;

UPDATE OlympicEvents SET RecordsSet = 'None' WHERE id = 5;
UPDATE OlympicEvents SET VenueName = 'Maracanã Stadium' WHERE id = 5;

UPDATE OlympicEvents SET RecordsSet = 'None' WHERE id = 6;
UPDATE OlympicEvents SET VenueName = 'Wembley Stadium' WHERE id = 6;

UPDATE OlympicEvents SET RecordsSet = 'World Record' WHERE id = 7;
UPDATE OlympicEvents SET VenueName = 'Water Cube' WHERE id = 7;

UPDATE OlympicEvents SET RecordsSet = 'Olympic Record' WHERE id = 8;
UPDATE OlympicEvents SET VenueName = 'Olympic Aquatics St.' WHERE id = 8;

UPDATE OlympicEvents SET RecordsSet = 'None' WHERE id = 9;
UPDATE OlympicEvents SET VenueName = 'O2 Arena' WHERE id = 9;

UPDATE OlympicEvents SET RecordsSet = 'None' WHERE id = 10;
UPDATE OlympicEvents SET VenueName = 'Rio Olympic Arena' WHERE id = 10;

UPDATE OlympicEvents SET RecordsSet = 'None' WHERE id = 11;
UPDATE OlympicEvents SET VenueName = 'Tokyo Aquatics Centre' WHERE id = 11;

UPDATE OlympicEvents SET RecordsSet = 'None' WHERE id = 12;
UPDATE OlympicEvents SET VenueName = 'Sapporo City' WHERE id = 12;

UPDATE OlympicEvents SET RecordsSet = 'None' WHERE id = 13;
UPDATE OlympicEvents SET VenueName = 'Oi Hockey Stadium' WHERE id = 13;

UPDATE OlympicEvents SET RecordsSet = 'None' WHERE id = 14;
UPDATE OlympicEvents SET VenueName = 'Pontal Walk Course' WHERE id = 14;

UPDATE OlympicEvents SET RecordsSet = 'Olympic Record' WHERE id = 15;
UPDATE OlympicEvents SET VenueName = 'Asaka Shooting Range' WHERE id = 15;
select * FROM OlympicEvents;


CREATE TABLE stadium_info(id int,st_id int, st_name varchar(20),
st_loc varchar(30), capacity int, no_of_stands int);

select * from stadium_info;
ALTER TABLE stadium_info add constraint
st_name_uni UNIQUE(st_name);

alter table stadium_info add constraint
cap_uni unique(capacity),
add constraint cap_chk check(capacity > 10000);

ALTER TABLE stadium_info add constraint 
st_id_pk primary key(st_id);

insert into stadium_info values(1,501, 'Chinnaswamy', 
'Bengaluru', 70000, 12);
insert into stadium_info values(2,502, 'wankhede', 
'Mumbai', 70000, 10);

ALTER TABLE stadium_info drop constraint cap_uni;

Foreign key: 

CREATE TABLE library_info(lib_id int primary key,
lib_loc varchar(20), no_of_books int,
vendor varchar(20));

CREATE TABLE book_info(book_id int primary key,
no_of_pages int, author_name varchar(20),
publisher varchar(20), lib_id int,
price int, foreign key(lib_id) references 
library_info(lib_id));

SELECT * from library_info;
select * from book_info;

insert into book_info values
(201, 500,'Abhishek','manojbooks', 101, 800);

insert into book_info values
(202, 700,'chethan','tarunbooks', 101, 900);

TASK:
CREATE 5 TABLES with 10 columns.
using alter apply not null, unique and check constraint for any 3 columns.
tab1 - pk
tab2 - pk, fk(tab1)
tab3 - pk, fk(tab1,tab2)
tab4 - pk,fk(tab1,tab2, tab3)
tab5 - pk, fk(tab1,tab2,tab3,tab4)
insert 20 data for each table.
using alter rename column names for 4 columns.
fetch the data using and, or, in, between,
not in, not between , like, Group by, having,
aggregate functions.

CREATE TABLE Library_info (Library_ID INT PRIMARY KEY, Library_Name VARCHAR(30),
Location VARCHAR(30), Established_Year INT, Total_Books INT, Librarian_Name VARCHAR(30),
Contact_Number VARCHAR(15), Email VARCHAR(30), Open_Hours VARCHAR(30),
Membership_Fee DECIMAL(10,2));

ALTER TABLE Library_info RENAME COLUMN Library_Name TO Name;
ALTER TABLE Library_info RENAME COLUMN Contact_Number TO Phone;
SELECT * FROM Library_info;

INSERT INTO Library_info VALUES
(1, 'Bangalore Central Library', 'MG Road, Bangalore', 1950, 75000, 'Ramesh Kumar', '9876543210', 'bangalorelib@gmail.com', '9 AM - 8 PM', 100.00),
(2, 'JP Nagar Public Library', 'JP Nagar, Bangalore', 1995, 45000, 'Priya Sharma', '9988776655', 'jpnagarlib@gmail.com', '10 AM - 7 PM', 50.00),
(3, 'Mysore City Library', 'Krishnaraja Boulevard, Mysore', 1965, 60000, 'Lakshmi Devi', '9845123456', 'mysorelib@gmail.com', '9 AM - 6 PM', 75.00),
(4, 'Hubli District Library', 'Station Road, Hubli', 1980, 42000, 'Harish Patil', '9900112255', 'hublilib@gmail.com', '10 AM - 5 PM', 60.00),
(5, 'Belgaum Town Library', 'RC Nagar, Belgaum', 1972, 37000, 'Nandini Rao', '9123456789', 'belgaumlib@gmail.com', '8 AM - 6 PM', 70.00),
(6, 'Davangere Knowledge Center', 'PB Road, Davangere', 1990, 39000, 'Vikram Reddy', '9090909090', 'davangerelib@gmail.com', '9 AM - 7 PM', 55.00),
(7, 'Udupi Municipal Library', 'Car Street, Udupi', 1985, 35000, 'Revathi Shetty', '9345678910', 'udupilibrary@gmail.com', '10 AM - 6 PM', 45.00),
(8, 'Mangalore Public Library', 'Hampankatta, Mangalore', 1992, 48000, 'Anil Desai', '9785463210', 'mangalib@gmail.com', '9 AM - 8 PM', 65.00),
(9, 'Shimoga Central Library', 'Durgigudi, Shimoga', 1988, 40000, 'Sneha Naik', '9845098450', 'shimlib@gmail.com', '9 AM - 6 PM', 60.00),
(10, 'Tumkur District Library', 'SIT Main Road, Tumkur', 2000, 36000, 'Raghavendra H', '9876509876', 'tumlib@gmail.com', '10 AM - 5 PM', 50.00),
(11, 'Hassan Town Library', 'BM Road, Hassan', 1997, 31000, 'Suma Acharya', '9966778899', 'hassanlib@gmail.com', '9 AM - 5 PM', 40.00),
(12, 'Chikmagalur Library', 'IG Road, Chikmagalur', 1982, 28000, 'Kiran Gowda', '9845600123', 'chikmaglib@gmail.com', '10 AM - 6 PM', 45.00),
(13, 'Gulbarga Knowledge Center', 'Main Bazaar, Gulbarga', 1993, 33000, 'Meghana B', '9812345678', 'gulblib@gmail.com', '9 AM - 7 PM', 55.00),
(14, 'Bijapur Heritage Library', 'Gol Gumbaz Road, Bijapur', 1986, 29000, 'Naveen Patil', '9740012345', 'bijlib@gmail.com', '8 AM - 5 PM', 50.00),
(15, 'Raichur Central Library', 'RTC Colony, Raichur', 1998, 27000, 'Vishal Rao', '9632587410', 'raichurlib@gmail.com', '10 AM - 6 PM', 48.00),
(16, 'Bellary City Library', 'Station Road, Bellary', 1991, 35000, 'Shobha M', '9321784560', 'bellarylib@gmail.com', '9 AM - 5 PM', 50.00),
(17, 'Kolar Library', 'KGF Road, Kolar', 2001, 31000, 'Jayashree N', '9988775544', 'kolarlib@gmail.com', '10 AM - 6 PM', 52.00),
(18, 'Karwar Coastal Library', 'Tagore Road, Karwar', 1983, 22000, 'Sameer Joshi', '9876540001', 'karwarlib@gmail.com', '8 AM - 6 PM', 42.00),
(19, 'Mandya Central Library', 'Ashoka Road, Mandya', 1996, 26000, 'Savitha C', '9800765432', 'mandyalib@gmail.com', '9 AM - 5 PM', 46.00),
(20, 'Chitradurga District Library', 'Fort Road, Chitradurga', 1994, 30000, 'Manoj Hegde', '9876501234', 'chitralib@gmail.com', '10 AM - 5 PM', 50.00);


CREATE TABLE Books (Book_ID INT PRIMARY KEY, Library_ID INT, Title VARCHAR(30), Author VARCHAR(30),
Genre VARCHAR(30), Published_Year INT, ISBN VARCHAR(20), Available_Copies INT,
Total_Copies INT, Price DECIMAL(10,2), FOREIGN KEY (Library_ID) REFERENCES Library_info(Library_ID));

ALTER TABLE Books MODIFY ISBN VARCHAR(30) NOT NULL;
ALTER TABLE Books ADD CONSTRAINT check_Price CHECK (Price >= 0);
ALTER TABLE Books modify COLUMN Title VARCHAR(50) unique;

INSERT INTO Books VALUES
(101, 1, 'Wings of Fire', 'A.P.J. Abdul Kalam', 'Autobiography', 1999, '9788173711466', 5, 20, 299.00),
(102, 1, 'The White Tiger', 'Aravind Adiga', 'Fiction', 2008, '9788172237455', 8, 15, 399.00),
(103, 2, 'India After Gandhi', 'Ramachandra Guha', 'History', 2007, '9780330505543', 10, 25, 499.00),
(104, 3, 'The Discovery of India', 'Jawaharlal Nehru', 'History', 1946, '9780143031031', 12, 30, 350.00),
(105, 3, 'The Guide', 'R.K. Narayan', 'Fiction', 1958, '9788185986073', 7, 20, 299.00),
(106, 4, 'Bhagavad Gita', 'Vyasa', 'Philosophy', -200, '9780199538126', 15, 50, 199.00),
(107, 5, 'Malgudi Days', 'R.K. Narayan', 'Short Stories', 1943, '9780143335412', 9, 20, 250.00),
(108, 6, 'Playing It My Way', 'Sachin Tendulkar', 'Autobiography', 2014, '9781473605206', 6, 15, 349.00),
(109, 7, 'Train to Pakistan', 'Khushwant Singh', 'Historical Fiction', 1956, '9780143065883', 7, 18, 275.00),
(110, 8, 'The Palace of Illusions', 'Chitra Banerjee', 'Mythology', 2008, '9780143104377', 8, 20, 325.00),
(111, 9, 'Samskara', 'U.R. Ananthamurthy', 'Philosophical Fiction', 1965, '9780195692406', 6, 15, 199.00),
(112, 10, 'Ghachar Ghochar', 'Vivek Shanbhag', 'Novella', 2015, '9780143424468', 10, 25, 150.00),
(113, 11, 'The Immortals of Meluha', 'Amish Tripathi', 'Mythological Fiction', 2010, '9789381626344', 14, 30, 299.00),
(114, 12, 'The Secret of the Nagas', 'Amish Tripathi', 'Mythological Fiction', 2011, '9789381626375', 10, 25, 299.00),
(115, 13, 'The Oath of the Vayuputras', 'Amish Tripathi', 'Mythological Fiction', 2013, '9789382618348', 9, 20, 299.00),
(116, 14, 'Why I am an Atheist', 'Bhagat Singh', 'Political', 1931, '9789383723904', 8, 15, 120.00),
(117, 15, 'Kane and Abel', 'Jeffrey Archer', 'Drama', 1979, '9781447226010', 5, 10, 349.00),
(118, 16, '1984', 'George Orwell', 'Dystopian', 1949, '9780451524935', 6, 12, 180.00),
(119, 17, 'Animal Farm', 'George Orwell', 'Political Satire', 1945, '9780451526342', 8, 18, 160.00),
(120, 18, 'Totto-Chan', 'Tetsuko Kuroyanagi', 'Biography', 1981, '9780143034605', 7, 15, 200.00);

ALTER TABLE Books RENAME COLUMN Published_Year TO Year_Published;
ALTER TABLE Books RENAME COLUMN Price TO Book_Price;

CREATE TABLE Members (Member_ID INT PRIMARY KEY, Library_ID INT, Book_ID INT,
Name VARCHAR(30), Age INT, Address VARCHAR(30), Contact_Number VARCHAR(15),
Email VARCHAR(30), Membership_Type VARCHAR(50), Join_Date DATE,
FOREIGN KEY (Library_ID) REFERENCES Library_info(Library_ID),
FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID));

ALTER TABLE Members MODIFY Age INT CHECK (Age >= 5);
ALTER TABLE Members ADD CONSTRAINT Unique_Member_Email UNIQUE (Email);
ALTER TABLE Members MODIFY COLUMN Email VARCHAR(30) not null;

INSERT INTO Members VALUES
(201, 1, 101, 'Rajesh Nair', 29, 'Koramangala, Bangalore', '9876543211', 'rajesh.nair@gmail.com', 'Premium', '2022-05-15'),
(202, 2, 103, 'Ananya Reddy', 24, 'Indiranagar, Bangalore', '9823456789', 'ananya.reddy@gmail.com', 'Standard', '2023-01-20'),
(203, 1, 102, 'Vikram Singh', 35, 'Whitefield, Bangalore', '9900112233', 'vikram.singh@gmail.com', 'Basic', '2021-10-05'),
(204, 3, 104, 'Sushma Rao', 31, 'VV Mohalla, Mysore', '9988774455', 'sushma.rao@gmail.com', 'Premium', '2022-09-12'),
(205, 4, 106, 'Ravi Desai', 28, 'Gokul Road, Hubli', '9812456723', 'ravi.desai@gmail.com', 'Standard', '2022-03-08'),
(206, 5, 107, 'Nayana Joshi', 26, 'Shivaji Nagar, Belgaum', '9873412560', 'nayana.j@gmail.com', 'Premium', '2023-06-15'),
(207, 6, 108, 'Manoj Hegde', 30, 'Vinoba Nagar, Davangere', '9934567890', 'manoj.hegde@gmail.com', 'Basic', '2022-01-25'),
(208, 7, 109, 'Megha Shenoy', 27, 'Kadiyali, Udupi', '9812398456', 'megha.s@gmail.com', 'Standard', '2023-02-20'),
(209, 8, 110, 'Yogesh Shetty', 34, 'Bejai, Mangalore', '9922456789', 'yogesh.s@gmail.com', 'Premium', '2021-12-01'),
(210, 9, 111, 'Sharanya H', 25, 'Vinobanagar, Shimoga', '9812467810', 'sharanya.h@gmail.com', 'Basic', '2023-03-18'),
(211, 10, 112, 'Ramesh Gowda', 38, 'Tumkur Main Road', '9909988776', 'ramesh.gowda@gmail.com', 'Premium', '2022-04-10'),
(212, 11, 113, 'Divya A', 22, 'Salagame Road, Hassan', '9898321654', 'divya.a@gmail.com', 'Standard', '2023-05-01'),
(213, 12, 114, 'Ajay R', 33, 'IG Road, Chikmagalur', '9911234567', 'ajay.r@gmail.com', 'Basic', '2023-08-10'),
(214, 13, 115, 'Sneha D', 29, 'Gulbarga Main Street', '9876590088', 'sneha.d@gmail.com', 'Premium', '2021-11-15'),
(215, 14, 116, 'Satish K', 40, 'Bijapur Fort Area', '9834567120', 'satish.k@gmail.com', 'Standard', '2023-06-28'),
(216, 15, 117, 'Neha Jain', 23, 'RTC Colony, Raichur', '9800123456', 'neha.jain@gmail.com', 'Basic', '2022-07-14'),
(217, 16, 118, 'Karthik R', 36, 'Ballari Station Road', '9812332211', 'karthik.r@gmail.com', 'Premium', '2023-02-05'),
(218, 17, 119, 'Pooja Shetty', 27, 'Kolar KGF Road', '9977654321', 'pooja.s@gmail.com', 'Standard', '2022-12-20'),
(219, 18, 120, 'Rahul Bhat', 32, 'Karwar Beach Road', '9856700033', 'rahul.bhat@gmail.com', 'Basic', '2023-03-09'),
(220, 19, 115, 'Lavanya P', 28, 'Mandya Ashoka Road', '9880123412', 'lavanya.p@gmail.com', 'Standard', '2023-07-03');

SELECT * FROM Members;
ALTER TABLE Members RENAME COLUMN Membership_Type TO Plan_Type;
ALTER TABLE Members RENAME COLUMN Contact_Number TO Phone;

CREATE TABLE Transactions ( Transaction_ID INT PRIMARY KEY, Library_ID INT,
Book_ID INT, Member_ID INT, Issue_Date DATE, Due_Date DATE,
Return_Date DATE, Fine_Amount DECIMAL(10,2), Status VARCHAR(50),
Payment_Mode VARCHAR(50), 
FOREIGN KEY (Library_ID) REFERENCES Library_info(Library_ID),
FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID),
FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID));

ALTER TABLE Transactions MODIFY Status VARCHAR(30) DEFAULT 'Pending';
ALTER TABLE Transactions ADD CONSTRAINT chk_Fine CHECK (Fine_Amount >= 0);
ALTER TABLE Transactions MODIFY COLUMN Status VARCHAR(50) not null;

INSERT INTO Transactions VALUES
(301, 1, 101, 201, '2024-03-10', '2024-04-10', '2024-04-05', 0.00, 'Returned', 'Online'),
(302, 2, 103, 202, '2024-02-15', '2024-03-15', NULL, 50.00, 'Overdue', 'Cash'),
(303, 1, 102, 203, '2024-01-20', '2024-02-20', '2024-02-18', 0.00, 'Returned', 'UPI'),
(304, 3, 104, 204, '2024-03-05', '2024-04-05', '2024-04-03', 0.00, 'Returned', 'Online'),
(305, 4, 106, 205, '2024-02-01', '2024-03-01', NULL, 30.00, 'Overdue', 'Cash'),
(306, 5, 107, 206, '2024-03-15', '2024-04-15', NULL, 0.00, 'Issued', 'UPI'),
(307, 6, 108, 207, '2024-01-10', '2024-02-10', '2024-02-09', 0.00, 'Returned', 'Online'),
(308, 7, 109, 208, '2024-02-18', '2024-03-18', NULL, 25.00, 'Overdue', 'Cash'),
(309, 8, 110, 209, '2024-03-22', '2024-04-22', NULL, 0.00, 'Issued', 'UPI'),
(310, 9, 111, 210, '2024-02-05', '2024-03-05', '2024-03-03', 0.00, 'Returned', 'Online'),
(311, 10, 112, 211, '2024-01-15', '2024-02-15', NULL, 10.00, 'Overdue', 'Cash'),
(312, 11, 113, 212, '2024-03-01', '2024-04-01', NULL, 0.00, 'Issued', 'UPI'),
(313, 12, 114, 213, '2024-02-12', '2024-03-12', '2024-03-10', 0.00, 'Returned', 'Online'),
(314, 13, 115, 214, '2024-01-25', '2024-02-25', NULL, 20.00, 'Overdue', 'Cash'),
(315, 14, 116, 215, '2024-03-05', '2024-04-05', NULL, 0.00, 'Issued', 'UPI'),
(316, 15, 117, 216, '2024-02-10', '2024-03-10', '2024-03-09', 0.00, 'Returned', 'Online'),
(317, 16, 118, 217, '2024-01-18', '2024-02-18', '2024-02-16', 0.00, 'Returned', 'Cash'),
(318, 17, 119, 218, '2024-02-20', '2024-03-20', NULL, 15.00, 'Overdue', 'UPI'),
(319, 18, 120, 219, '2024-03-12', '2024-04-12', NULL, 0.00, 'Issued', 'Online'),
(320, 19, 115, 220, '2024-02-28', '2024-03-28', '2024-03-27', 0.00, 'Returned', 'Cash');

ALTER TABLE Transactions RENAME COLUMN Fine_Amount TO Penalty;
ALTER TABLE Transactions RENAME COLUMN Status TO Return_Status;

CREATE TABLE Staff ( Staff_ID INT PRIMARY KEY, Library_ID INT,
Book_ID INT, Member_ID INT, Transaction_ID INT,
Name VARCHAR(50), Role VARCHAR(30),
Salary DECIMAL(10,2), Contact_Number VARCHAR(15),
Email VARCHAR(30),
FOREIGN KEY (Library_ID) REFERENCES Library_info(Library_ID),
FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID),
FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
FOREIGN KEY (Transaction_ID) REFERENCES Transactions(Transaction_ID));

ALTER TABLE Staff MODIFY Salary DECIMAL(12,2);
ALTER TABLE Staff ADD CONSTRAINT Unique_Staff_Email UNIQUE (Email);
ALTER TABLE Staff ADD CONSTRAINT check_salary check(Salary>10000);

INSERT INTO Staff VALUES
(401, 1, 101, 201, 301, 'Suresh Bhat', 'Librarian', 45000.00, '9876500000', 'suresh.bhat@gmail.com'),
(402, 2, 103, 202, 302, 'Deepa Kamath', 'Assistant Librarian', 35000.00, '9898711111', 'deepa.kamath67@gmail.com'),
(403, 1, 102, 203, 303, 'Arjun Shetty', 'Clerk', 25000.00, '9776650000', 'arjun.sr009@gmail.com'),
(404, 3, 104, 204, 304, 'Meena Rao', 'Librarian', 46000.00, '9876567890', 'meena.rao@gmail.com'),
(405, 4, 106, 205, 305, 'Raghav Patil', 'Clerk', 24000.00, '9854671230', 'raghav.p@gmail.com'),
(406, 5, 107, 206, 306, 'Nivedita Desai', 'Library Assistant', 32000.00, '9911223344', 'nivedita.desai@gmail.com'),
(407, 6, 108, 207, 307, 'Jayant Hegde', 'Librarian', 47000.00, '9900112233', 'jayant.hegde@gmail.com'),
(408, 7, 109, 208, 308, 'Pavitra Shetty', 'Library Staff', 28000.00, '9800345621', 'pavitra.s@gmail.com'),
(409, 8, 110, 209, 309, 'Ganesh Nayak', 'Clerk', 26000.00, '9789543210', 'ganesh.nayak@gmail.com'),
(410, 9, 111, 210, 310, 'Chaitra G', 'Librarian', 48000.00, '9876001122', 'chaitra.g@gmail.com'),
(411, 10, 112, 211, 311, 'Vinay Kumar', 'Assistant Librarian', 33000.00, '9865432100', 'vinay.kumar@gmail.com'),
(412, 11, 113, 212, 312, 'Ashwini R', 'Librarian', 49000.00, '9844001122', 'ashwini.r@gmail.com'),
(413, 12, 114, 213, 313, 'Harish M', 'Library Clerk', 27000.00, '9871122334', 'harish.m@gmail.com'),
(414, 13, 115, 214, 314, 'Bhavana K', 'Clerk', 25000.00, '9800112233', 'bhavana.k@gmail.com'),
(415, 14, 116, 215, 315, 'Praveen Jain', 'Librarian', 46000.00, '9900887766', 'praveen.jain@gmail.com'),
(416, 15, 117, 216, 316, 'Smitha Rao', 'Assistant Librarian', 34000.00, '9823456789', 'smitha.rao@gmail.com'),
(417, 16, 118, 217, 317, 'Dinesh Gowda', 'Library Clerk', 28000.00, '9911002200', 'dinesh.gowda@gmail.com'),
(418, 17, 119, 218, 318, 'Ritika Shetty', 'Librarian', 50000.00, '9800456123', 'ritika.shetty@gmail.com'),
(419, 18, 120, 219, 319, 'Ravi Kumar', 'Assistant', 30000.00, '9778899000', 'ravi.kumar@gmail.com'),
(420, 19, 115, 220, 320, 'Leela Deshpande', 'Librarian', 47000.00, '9887766554', 'leela.deshpande@gmail.com');

ALTER TABLE Staff RENAME COLUMN Salary TO Monthly_Salary;
ALTER TABLE Staff RENAME COLUMN Role TO Position;

SELECT * FROM Library_info WHERE Established_Year > 1980 AND Total_Books > 50000;
SELECT * FROM Library_info WHERE Location LIKE '%Bangalore%' OR Membership_Fee < 100;
SELECT * FROM Library_info WHERE Library_ID IN (1, 3, 5);
SELECT * FROM Library_info WHERE Established_Year BETWEEN 1980 AND 2000;
SELECT * FROM Library_info WHERE Library_ID NOT IN (2, 4, 6);
SELECT * FROM Library_info WHERE Established_Year NOT BETWEEN 1950 AND 1970;
SELECT * FROM Library_info WHERE Email LIKE '%gmail.com%';
SELECT Library_ID, COUNT(*) FROM Library_info GROUP BY Open_Hours;
SELECT Open_Hours, COUNT(*) FROM Library_info GROUP BY Open_Hours HAVING COUNT(*) > 1;
SELECT AVG(Membership_Fee), MAX(Total_Books), MIN(Established_Year) FROM Library_info;

SELECT * FROM Books WHERE Available_Copies > 5 AND Genre = 'Fiction';
SELECT * FROM Books WHERE Author = 'Aravind Adiga' OR Price < 300;
SELECT * FROM Books WHERE Book_ID IN (101, 105, 110);
SELECT * FROM Books WHERE Year_Published BETWEEN 2000 AND 2020;
SELECT * FROM Books WHERE Genre NOT IN ('History', 'Autobiography');
SELECT * FROM Books WHERE Year_Published NOT BETWEEN 1990 AND 2000;
SELECT * FROM Books WHERE Title LIKE '%India%';
SELECT Genre, COUNT(*) FROM Books GROUP BY Genre;
SELECT Genre, COUNT(*) FROM Books GROUP BY Genre HAVING COUNT(*) > 1;
SELECT SUM(Available_Copies), AVG(Price) FROM Books;

SELECT * FROM Members WHERE Age > 25 AND plan_Type = 'Premium';
SELECT * FROM Members WHERE Name LIKE 'A%' OR Age < 30;
SELECT * FROM Members WHERE Member_ID IN (201, 205, 210);
SELECT * FROM Members WHERE Age BETWEEN 20 AND 30;
SELECT * FROM Members WHERE Library_ID NOT IN (1, 3, 5);
SELECT * FROM Members WHERE Age NOT BETWEEN 25 AND 35;
SELECT * FROM Members WHERE Email LIKE '%gmail.com';
SELECT plan_Type, COUNT(*) FROM Members GROUP BY Plan_Type;
SELECT Plan_Type, COUNT(*) FROM Members GROUP BY Plan_Type HAVING COUNT(*) > 2;
SELECT MAX(Age), MIN(Age), COUNT(*) FROM Members;

SELECT * FROM Transactions WHERE Penalty > 0 AND Return_Status = 'Overdue';
SELECT * FROM Transactions WHERE Payment_Mode = 'UPI' OR Return_Status = 'Returned';
SELECT * FROM Transactions WHERE Transaction_ID IN (301, 305, 309);
SELECT * FROM Transactions WHERE Issue_Date BETWEEN '2024-01-01' AND '2024-03-31';
SELECT * FROM Transactions WHERE Member_ID NOT IN (201, 202);
SELECT * FROM Transactions WHERE Penalty NOT BETWEEN 10 AND 50;
SELECT * FROM Transactions WHERE Return_Status LIKE 'Return%';
SELECT Payment_Mode, COUNT(*) FROM Transactions GROUP BY Payment_Mode;
SELECT Return_Status, COUNT(*) FROM Transactions GROUP BY Return_Status HAVING COUNT(*) > 1;
SELECT AVG(Penalty), MAX(Penalty), MIN(Penalty) FROM Transactions;


SELECT * FROM Staff WHERE Salary > 30000 AND Position = 'Librarian';
SELECT * FROM Staff WHERE Name LIKE 'S%' OR ROLe = 'Clerk';
SELECT * FROM Staff WHERE Staff_ID IN (401, 405, 410);
SELECT * FROM Staff WHERE Salary BETWEEN 25000 AND 40000;
SELECT * FROM Staff WHERE Library_ID NOT IN (1, 2, 3);
SELECT * FROM Staff WHERE Salary NOT BETWEEN 35000 AND 50000;
SELECT * FROM Staff WHERE Email LIKE '%gmail.com';
SELECT Role, COUNT(*) FROM Staff GROUP BY Role;
SELECT Role, COUNT(*) FROM Staff GROUP BY Role HAVING COUNT(*) > 2;
SELECT AVG(Salary), MAX(Salary), MIN(Salary) FROM Staff;

*****************************

bank_info(bank_id, bank_name, bank_loc, ifsc_code, no_of_cust)
(cust_id, cust_name, acc_no, bank_id,balance)
(loan_id, loan_name, bank_id, cust_id, loan_amount)
(insr_id, insr_type, policy_no, bank_id,cust_id,loan_id)

SELECT * from bank_info;
drop table bank_info;
CREATE TABLE bank_info (
    bank_id INT,
    bank_name VARCHAR(50),
    bank_loc VARCHAR(50),
    ifsc_code VARCHAR(20),
    no_of_cust INT
);

CREATE TABLE cust_info (
    cust_id INT,
    cust_name VARCHAR(50),
    acc_no VARCHAR(20),
    bank_id INT,
    balance DECIMAL(10, 2)
);

CREATE TABLE loan_info (
    loan_id INT,
    loan_name VARCHAR(50),
    bank_id INT,
    cust_id INT,
    loan_amount DECIMAL(10, 2)
);

CREATE TABLE insurance_info (
    insr_id INT,
    insr_type VARCHAR(50),
    policy_no VARCHAR(30),
    bank_id INT,
    cust_id INT,
    loan_id INT
);


ALTER TABLE bank_info ADD CONSTRAINT pk_bank PRIMARY KEY (bank_id);
ALTER TABLE cust_info ADD CONSTRAINT pk_cust PRIMARY KEY (cust_id);
ALTER TABLE loan_info ADD CONSTRAINT pk_loan PRIMARY KEY (loan_id);
ALTER TABLE insurance_info ADD CONSTRAINT pk_insr PRIMARY KEY (insr_id);

ALTER TABLE cust_info ADD CONSTRAINT fk_cust_bank FOREIGN KEY (bank_id) REFERENCES bank_info(bank_id);

ALTER TABLE loan_info 
    ADD CONSTRAINT fk_loan_bank FOREIGN KEY (bank_id) REFERENCES bank_info(bank_id),
    ADD CONSTRAINT fk_loan_cust FOREIGN KEY (cust_id) REFERENCES cust_info(cust_id);

ALTER TABLE insurance_info 
    ADD CONSTRAINT fk_insr_bank FOREIGN KEY (bank_id) REFERENCES bank_info(bank_id),
    ADD CONSTRAINT fk_insr_cust FOREIGN KEY (cust_id) REFERENCES cust_info(cust_id),
    ADD CONSTRAINT fk_insr_loan FOREIGN KEY (loan_id) REFERENCES loan_info(loan_id);

INSERT INTO bank_info VALUES
(1, 'Axis Bank', 'Bangalore', 'AXIS001', 5000),
(2, 'HDFC Bank', 'Mysore', 'HDFC002', 7000),
(3, 'ICICI Bank', 'Mangalore', 'ICICI003', 6000),
(4, 'SBI', 'Hubli', 'SBI004', 8000),
(5, 'PNB', 'Belgaum', 'PNB005', 3000),
(6, 'Yes Bank', 'Davangere', 'YES006', 4500),
(7, 'Kotak Bank', 'Udupi', 'KOTAK007', 2000),
(8, 'BOI', 'Shimoga', 'BOI008', 2200),
(9, 'UCO Bank', 'Tumkur', 'UCO009', 1800),
(10, 'DBS', 'Hassan', 'DBS010', 1600),
(11, 'IndusInd', 'Bidar', 'IND011', 1900),
(12, 'Federal Bank', 'Raichur', 'FED012', 2500),
(13, 'Canara Bank', 'Gulbarga', 'CAN013', 2800),
(14, 'IDFC', 'Kolar', 'IDFC014', 1300),
(15, 'Union Bank', 'Chikmagalur', 'UBI015', 1000);
SELECT * FROM bank_info;

INSERT INTO cust_info VALUES
(101, 'Ravi Kumar', 'AX1001', 1, 15000),
(102, 'Neha Sharma', 'HD2002', 2, 25000),
(103, 'Amit Jain', 'IC3003', 3, 18000),
(104, 'Sneha Reddy', 'SB4004', 4, 12000),
(105, 'Manoj Verma', 'PN5005', 5, 17000),
(106, 'Divya Mehta', 'YS6006', 6, 22000),
(107, 'Anil Kapoor', 'XX7007', 7, 10000),
(108, 'Ritika Sinha', 'XX8008', 8, 9000),
(109, 'Kapil Das', 'XX9009', 9, 11000),
(110, 'Tanvi Joshi', 'XX1010', 10, 10500),
(111, 'Arjun Roy', 'XX1111', 11, 9500),
(112, 'Mansi Gupta', 'XX1212', 12, 8500),
(113, 'Rohit Nair', 'XX1313', 13, 12500),
(114, 'Priya Iyer', 'XX1414', 14, 10200),
(115, 'Nikhil Rao', 'XX1515', 15, 11500);
SELECT * from cust_info;

INSERT INTO loan_info VALUES
(201, 'Home Loan', 1, 101, 500000),
(202, 'Car Loan', 2, 102, 300000),
(203, 'Education Loan', 3, 103, 400000),
(204, 'Business Loan', 4, 104, 700000),
(205, 'Personal Loan', 5, 105, 250000),
(206, 'Gold Loan', 6, 106, 150000),
(207, 'Vehicle Loan', 7, 107, 130000),
(208, 'Agri Loan', 8, 108, 110000),
(209, 'Travel Loan', 9, 109, 90000),
(210, 'Startup Loan', 10, 110, 100000),
(211, 'Marriage Loan', 11, 111, 95000),
(212, 'Medical Loan', 12, 112, 85000),
(213, 'Festival Loan', 13, 113, 60000),
(214, 'Senior Citizen Loan', 14, 114, 70000),
(215, 'Home Renovation Loan', 15, 115, 120000);

SELECT * FROM loan_info;

INSERT INTO insurance_info VALUES
(301, 'Life Insurance', 'POL1001', 1, 101, 201),
(302, 'Vehicle Insurance', 'POL2002', 2, 102, 202),
(303, 'Health Insurance', 'POL3003', 3, 103, 203),
(304, 'Travel Insurance', 'POL4004', 4, 104, 204),
(305, 'Home Insurance', 'POL5005', 5, 105, 205),
(306, 'Term Insurance', 'POL6006', 6, 106, 206),
(307, 'Loan Protection', 'POL7007', 7, 107, 207),
(308, 'Property Insurance', 'POL8008', 8, 108, 208),
(309, 'Education Insurance', 'POL9009', 9, 109, 209),
(310, 'Credit Insurance', 'POL1010', 10, 110, 210),
(311, 'Crop Insurance', 'POL1111', 11, 111, 211),
(312, 'Fire Insurance', 'POL1212', 12, 112, 212),
(313, 'Pet Insurance', 'POL1313', 13, 113, 213),
(314, 'Marine Insurance', 'POL1414', 14, 114, 214),
(315, 'Burglary Insurance', 'POL1515', 15, 115, 215);

SELECT * FROM insurance_info;

