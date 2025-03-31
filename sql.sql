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


CREATE TABLE movies_info ( movie_id int not null unique, movie_name VARCHAR(40) not null unique,
    lead_actor VARCHAR(50), lead_actress VARCHAR(50),
    director VARCHAR(50) not null unique, release_Year INT not null , genre VARCHAR(30), IMDB_rating DECIMAL(2,1),
    box_office_cr INT not null unique, production_house VARCHAR(50));

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
UPDATE movies_info SET movie_code = "MV001" where movie_id=1;
UPDATE movies_info SET movie_code = "MV002" where movie_id=2;
UPDATE movies_info SET movie_code = "MV003" where movie_id=3;
UPDATE movies_info SET movie_code = "MV004" where movie_id=4;
UPDATE movies_info SET movie_code = "MV005" where movie_id=5;
UPDATE movies_info SET movie_code = "MV006" where movie_id=6;
UPDATE movies_info SET movie_code = "MV007" where movie_id=7;
UPDATE movies_info SET movie_code = "MV008" where movie_id=8;
UPDATE movies_info SET movie_code = "MV009" where movie_id=9;
UPDATE movies_info SET movie_code = "MV0010" where movie_id=10;
UPDATE movies_info SET movie_code = "MV0011" where movie_id=11;
UPDATE movies_info SET movie_code = "MV0012" where movie_id=12;
UPDATE movies_info SET movie_code = "MV0013" where movie_id=13;
UPDATE movies_info SET movie_code = "MV0014" where movie_id=14;
UPDATE movies_info SET movie_code = "MV0015" where movie_id=15;
UPDATE movies_info SET movie_code = "MV0016" where movie_id=16;
UPDATE movies_info SET movie_code = "MV0017" where movie_id=17;
UPDATE movies_info SET movie_code = "MV0018" where movie_id=18;
UPDATE movies_info SET movie_code = "MV0019" where movie_id=19;
UPDATE movies_info SET movie_code = "MV0020" where movie_id=20;
UPDATE movies_info SET movie_code = "MV0021" where movie_id=21;

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

