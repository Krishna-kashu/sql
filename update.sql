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














