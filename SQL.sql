CREATE DATABASE mar_3;
CREATE DATABASE feb_17;
CREATE DATABASE airlines;

CREATE TABLE airlines_details(id int,
airline_name varchar(30), src varchar(20),
dest varchar(30), no_of_passengers int,
price bigint, food_available boolean);

CREATE TABLE feb_17_details(user_id int,
contact_email varchar(100),mobile_number varchar(15),
profile_name varchar(50),bank_account varchar(20),
transaction_code varchar(30));

CREATE TABLE airlines_ticket_details(id int,
seat_no int,passenger_name varchar(30),
age int,src varchar(10),dest varchar(10));

CREATE TABLE mar_3_details(pro_id int,
pro_title varchar(30),pro_aim varchar(60),
start_date date,due_date date,
pro_implementation boolean);

USE database_name;
USE mar_3;
USE feb_17;
USE airlines;

/*DESC: Describe
/*TASK:1-CREATE 2 tables with 6 columns.*/

DESC airlines_details;
DESC feb_17_details;
DESC airlines_ticket_details;
DESC mar_3_details;

/*DDL:1) CREATE,2) ALTER*/
DESC airlines_ticket_details;
SELECT * FROM table_name;

/*SELECT : To fetch the data.
* : All columns in a table.
From: clause: From where the data is fetched.
table_name;*/
select * from airlines_details;
select * from airlines_ticket_details;
select * from feb_17_details;
select * from mar_3_details;

/*ALTER: 1) Add new column to existing table.
2) Drop column from existing table.
3) Rename the existing column name.
4) change the datatype of existing columns.
/*Syntax for adding new column
ALTER table table_name ADD COLUMN column_name datatype;*/
ALTER TABLE airlines_ticket_details ADD COLUMN ticket_price bigint;
ALTER TABLE airlines_ticket_details 
ADD COLUMN arrival_time timestamp,
ADD COLUMN departure_time timestamp;

/*2) DROP:Syntax for droping column from existing table
ALTER TABLE table_name DROP COLUMN column_name;*/
ALTER TABLE airlines_ticket_details DROP COLUMN age;

/*3) RENAME column name:Syntax for renaming column name
ALTER TABLE table_name RENAME COLUMN existing_column TO new_column_name;*/
ALTER TABLE airlines_ticket_details RENAME COLUMN
dest to destination;

/*4) Change the datatype:Syntax for changing the datatype
ALTER TABLE table_name MODIFY COLUMN column_name datatype;*/
desc airlines_ticket_details;
ALTER TABLE airlines_ticket_details MODIFY column
arrival_time varchar(30);

/*ALTER TABLE table_name ADD COLUMN column_name datatype;
ALTER TABLE table_name DROP COLUMN column_name;
ALTER TABLE table_name RENAME COLUMN existing_column TO new_column_name;
ALTER TABLE table_name MODIFY COLUMN column_name datatype;*/

/*3)DROP: 1) Database,2) Table*/
/*DROP table table_name;*/
drop table airlines_ticket_details;
CREATE DATABASE house_rent;
CREATE TABLE house_rent_details(id int, house_type varchar(8),
rent_price bigint, owner_name varchar(20), location varchar(20),
sq_ft decimal(6,2), parking_available boolean, contact_no bigint);

/*TASK:2-CREATE 5 TABLES WITH 5 COLUMNS.
1) By using alter add 2 columns,2) drop 1 column,
3) Rename 3 columns,4) change datatype for 3 columns.*/

/*TASK:3-CREATE 3 TABLES (hospital_info, country_info, state_info, scam_info) 
for each table 6 columns. INSERT 15 data for each table. */

SELECT * FROM hospital_info where state = 'Maharashtra' and 
city = 'Mumbai' and hospital_id = 5;

/*1.OR:
COND1   COND2
TRUE    FALSE  TRUE
FALSE   TRUE   TRUE
TRUE    TRUE   TRUE
FALSE   FALSE  FALSE*/

SELECT * FROM hospital_info;
SELECT * FROM scam_info where state = 'Del' or year = 2013;
SELECT * FROM state_info;
SELECT hospital_id,hospital_name from hospital_info;

/*2.WHERE: To filter the data based on column condition*/
SELECT * FROM hospital_info where state = 'Tamil Nadu';
SELECT hospital_id,hospital_name from hospital_info where state = 'Karnataka';
SELECT * FROM scam_info;
SELECT * from scam_info where year = 2013 AND state = 'Multiple';

/*3.AND / OR AND:
COND1   COND2  
TRUE    FALSE    FALSE
FALSE   TRUE     FALSE
FALSE   FALSE    FALSE
TRUE    TRUE     TRUE*/

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

/*4.IN:*/
SELECT * FROM scam_info where year in(2008,2010000,2012000,2013000,2020888);

/*1-1000*/
SELECT * FROM scam_info where scam_id in(5,6,7,8);
SELECT * FROM scam_info where scam_id not in(5,6,7,8);

/*5.NOT IN:24/03/2025
BETWEEN:*/
SELECT * FROM scam_info;

/*1-1000*/
SELECT * FROM scam_info where scam_id not between 5 and 8;

/*6.UPDATE: SYNTAX FOR update the data
UPDATE table_name set column_name = data;*/

UPDATE scam_info set state = 'Karnataka' where scam_id = 2;
update scam_info set scam_id = 9 where scam_id = 6;
select * from scam_info where state = 'Maharashtra'
and scam_id = 9;
UPDATE scam_info set year = 2024 
where state = 'Maharashtra'
and scam_id = 9 and year = 2018;

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

/*7.INSTR: INSTRING:'BANGALORE' 
select instr(string, character);*/
SELECT INSTR('Bangalore','n');
SELECT INSTR('Bangalore','a');
select name,instr(name,'k') from cricket_info;

/*8.substr:Bangalore
select substr(String, start position, no of characters);*/
select substr('Karnataka', 1,5);
SELECT country,SUBSTR(country,2,8) from cricket_info;

/*9.Length:*/
select * from cricket_info;
SELECT team,LENGTH(team) from cricket_info;

/*LTRIM: LEFT REMOVE
RTRIM: RIGHT REMOVE*/
SELECT team,LTRIM(team) from cricket_info;
SELECT UPPER(name) from cricket_info;
SELECT lower(name) from cricket_info;

/*concat:*/
SELECT CONCAT(name,team,country,matches,runs,wickets) from cricket_info;

/*Aggregate Functions:Alias: 
1) count:*/
select count(*) as no_of_team from cricket_info;
select count(team) from cricket_info;
select * from cricket_info;
/*2) sum:*/
select sum(catches) as total_catches from cricket_info;
/*3) max:*/
SELECT MAX(highest_score) as high_score from cricket_info;
/*min:*/
SELECT min(runs) as min_runs from cricket_info;
/*avg:*/
SELECT avg(runs) as avg_runs from cricket_info;
/*Group By:*/
SELECT count(player_name) as no_of_players, country from football_info Group by country;
select count(goal) as no_of_goals, club from football_info
group by cLuB;
SELECT max(matches) as no_of_matches, country from football_info
group by country;
SELECT min(yellow_card) as min_cards, position from football_info
group by position;
select avg(matches) as avg_matches, country from football_info
group by country;
/*Having clause:*/
SELECT max(matches) as no_of_matches, country from football_info
group by country having no_of_matches > 500;

/*DISTINCT:SELECT DISTINCT(position) from football_info;
ORDER:SELECT DISTINCT FROM WHERE GROUP BY HAVING;*/
CREATE TABLE hotel_info(
id int,
hotel_name varchar(30) not null unique,
hotel_location varchar(30) not null,
head_cook_name varchar(30) not null unique,
special_food varchar(30) not null unique,
cook_age int(30) not null check (cook_age > 30));

select * from hotel_info;

INSERT INTO hotel_info (id,hotel_name,hotel_location,head_cook_name,special_food,cook_age)
values(1,'Shreevidya cafe','Madduru','Shankar','Dosa',31),
      (2,'Biriyani paradise','Mandya','Umesh','Biriyani',40),
	  (3, ' mpmos baba','Bengaluru','sanketh','momos',46);

RENAME hotel_info to hotel_data;

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

/*TASK:1-CREATE 2 tables with 6 columns.*/

CREATE DATABASE mar_3;
CREATE DATABASE feb_17;
CREATE DATABASE airlines_info;
USE mar_3;

CREATE TABLE feb_17_details (user_id INT, contact_email VARCHAR(100), 
mobile_number VARCHAR(15), profile_name VARCHAR(50), 
bank_account VARCHAR(20), transaction_code VARCHAR(30));

CREATE TABLE airlines_ticket_details (id INT, seat_no INT, 
passenger_name VARCHAR(30),age INT,src VARCHAR(10),dest VARCHAR(10));

CREATE TABLE mar_3_details (pro_id INT,pro_title VARCHAR(30), 
pro_aim VARCHAR(60), start_date DATE,due_date DATE, 
pro_implementation BOOLEAN);

DESC feb_17_details;
DESC airlines_ticket_details;
DESC mar_3_details;

/*TASK:2
CREATE 5 TABLES WITH 5 COLUMNS.
1) By using alter add 2 columns.
2) drop 1 column.
3) Rename 3 columns.
4) change datatype for 3 columns.*/

CREATE DATABASE box;
CREATE TABLE box (boxid int,
label varchar(50),size int,
material varchar(50),weight decimal(10,2)
);

CREATE DATABASE shelf;
CREATE TABLE shelf (shelfid int,
location varchar(100),capacity int,
color varchar(50),section varchar(50)
);

CREATE DATABASE bucket;
CREATE TABLE bucket (bucketid int,
type varchar(50),volume decimal(10,2),
usge varchar(50),brand varchar(50)
);

CREATE DATABASE notebook;
CREATE TABLE notebook (noteid int primary key,
pages int,covertype varchar(50),
size varchar(50),brand varchar(50)
);

CREATE DATABASE lamp;
CREATE TABLE lamp (lampid int primary key,
power int,color varchar(50),
type varchar(50),brand varchar(50)
);

ALTER TABLE Box ADD (type VARCHAR(50), Price DECIMAL(10,2));
ALTER TABLE Shelf ADD (Height INT, Material VARCHAR(50));
ALTER TABLE Bucket ADD (Depth DECIMAL(10,2), Price DECIMAL(10,2));
ALTER TABLE Notebook ADD (Binding VARCHAR(50), PaperQuality VARCHAR(50));
ALTER TABLE Lamp ADD (Brightness INT, Warranty VARCHAR(50));


ALTER TABLE Box RENAME COLUMN Label TO BoxLabel;
ALTER TABLE Box RENAME COLUMN Size TO BoxSize;
ALTER TABLE Box RENAME COLUMN Material TO BoxMaterial;

ALTER TABLE Shelf RENAME COLUMN Location TO ShelfLocation;
ALTER TABLE Shelf RENAME COLUMN Capacity TO ShelfCapacity;
ALTER TABLE Shelf RENAME COLUMN Color TO ShelfColor;

ALTER TABLE Bucket RENAME COLUMN Type TO BucketType;
ALTER TABLE Bucket RENAME COLUMN Volume TO BucketVolume;
ALTER TABLE Bucket RENAME COLUMN Brand TO BucketBrand;

ALTER TABLE Notebook RENAME COLUMN Pages TO TotalPages;
ALTER TABLE Notebook RENAME COLUMN CoverType TO CoverMaterial;
ALTER TABLE Notebook RENAME COLUMN Size TO NotebookSize;

ALTER TABLE Lamp RENAME COLUMN Power TO LampPower;
ALTER TABLE Lamp RENAME COLUMN Color TO LampColor;
ALTER TABLE Lamp RENAME COLUMN Type TO LampType;

ALTER TABLE BOX MODIFY COLUMN BOXSIZE BIGINT;  
ALTER TABLE BOX MODIFY COLUMN PRICE FLOAT;  
ALTER TABLE BOX MODIFY COLUMN COLOR TEXT;  

ALTER TABLE SHELF MODIFY COLUMN SHELFCAPACITY BIGINT;  
ALTER TABLE SHELF MODIFY COLUMN HEIGHT FLOAT;  
ALTER TABLE SHELF MODIFY COLUMN MATERIAL TEXT;  

ALTER TABLE BUCKET MODIFY COLUMN BUCKETVOLUME FLOAT;  
ALTER TABLE BUCKET MODIFY COLUMN DEPTH FLOAT;  
ALTER TABLE BUCKET MODIFY COLUMN PRICE FLOAT;  

ALTER TABLE NOTEBOOK MODIFY COLUMN TOTALPAGES BIGINT;  
ALTER TABLE NOTEBOOK MODIFY COLUMN BINDING TEXT;  
ALTER TABLE NOTEBOOK MODIFY COLUMN PAPERQUALITY TEXT;  

ALTER TABLE LAMP MODIFY COLUMN LAMPPOWER FLOAT;  
ALTER TABLE LAMP MODIFY COLUMN BRIGHTNESS FLOAT;  
ALTER TABLE LAMP MODIFY COLUMN WARRANTY TEXT;  

DESC box;
DESC bucket;
DESC lamp;
DESC notebook;
DESC shelf;

/*TASK:3 
CREATE 3 TABLES (hospital_info, country_info, state_info, scam_info) 
for each table 6 columns. 
INSERT 15 data for each table. */

CREATE DATABASE hospital;
CREATE TABLE hospital_info (id INT ,name VARCHAR(100),  
city VARCHAR(50),state VARCHAR(50),country VARCHAR(50),beds INT);

CREATE DATABASE country;
CREATE TABLE country_info (country_id INT,country_name VARCHAR(50),  
largest_state VARCHAR(50),smallest_state VARCHAR(50),total_area BIGINT,  
coastline_length FLOAT,avg_temperature FLOAT);

CREATE DATABASE state;
CREATE TABLE state_info (state_name VARCHAR(50),capital VARCHAR(50),  
official_language VARCHAR(50),num_of_districts INT,  
biggest_district VARCHAR(50),smallest_district VARCHAR(50),  
num_of_cities INT);

CREATE DATABASE scam;
CREATE TABLE scam_records (scam_name VARCHAR(100),  
location VARCHAR(50),incident_year INT,  
total_loss FLOAT,victims_count INT,severity_level VARCHAR(50));

INSERT INTO hospital_info (id, name, city, state, country, beds) VALUES
(1, 'NIMHANS', 'Bengaluru', 'Karnataka', 'India', 950),
(2, 'Jayadeva Hospital', 'Bengaluru', 'Karnataka', 'India', 1200),
(3, 'KIMS Hubli', 'Hubballi', 'Karnataka', 'India', 750),
(4, 'Manipal Hospital', 'Bengaluru', 'Karnataka', 'India', 1000),
(5, 'St. John’s Medical', 'Bengaluru', 'Karnataka', 'India', 1350),
(6, 'Vikram Hospital', 'Mysuru', 'Karnataka', 'India', 500),
(7, 'Apollo Hospital', 'Bengaluru', 'Karnataka', 'India', 800),
(8, 'Fortis Hospital', 'Bengaluru', 'Karnataka', 'India', 900),
(9, 'M S Ramaiah Hospital', 'Bengaluru', 'Karnataka', 'India', 1100),
(10, 'SDM Medical College', 'Dharwad', 'Karnataka', 'India', 700),
(11, 'ESIC Hospital', 'Gulbarga', 'Karnataka', 'India', 600),
(12, 'Shimoga Institute of Medical Sciences', 'Shivamogga', 'Karnataka', 'India', 500),
(13, 'Father Muller Hospital', 'Mangaluru', 'Karnataka', 'India', 750),
(14, 'Sakra World Hospital', 'Bengaluru', 'Karnataka', 'India', 850),
(15, 'District Hospital', 'Belagavi', 'Karnataka', 'India', 400);

INSERT INTO country_info (country_id, country_name, largest_state, smallest_state, total_area, coastline_length, avg_temperature) VALUES
(1, 'India', 'Rajasthan', 'Goa', 3287000, 7516, 24.0),
(2, 'USA', 'Alaska', 'Rhode Island', 9834000, 19924, 13.0),
(3, 'Canada', 'Quebec', 'Prince Edward Island', 9985000, 24342, -5.0),
(4, 'Australia', 'Western Australia', 'Australian Capital Territory', 7692000, 25760, 21.5),
(5, 'Brazil', 'Amazonas', 'Sergipe', 8516000, 7491, 25.0),
(6, 'China', 'Xinjiang', 'Macau', 9597000, 14500, 11.0),
(7, 'Russia', 'Sakha', 'Ingushetia', 17098200, 37653, -5.1),
(8, 'Germany', 'Bavaria', 'Bremen', 357000, 2389, 10.0),
(9, 'France', 'Nouvelle-Aquitaine', 'Corsica', 551695, 3430, 11.7),
(10, 'UK', 'England', 'Isle of Wight', 243610, 12429, 9.5),
(11, 'Japan', 'Hokkaido', 'Kagawa', 377975, 29751, 12.3),
(12, 'Mexico', 'Chihuahua', 'Tlaxcala', 1964375, 9330, 22.0),
(13, 'Argentina', 'Buenos Aires', 'Tierra del Fuego', 2780400, 4989, 14.2),
(14, 'South Africa', 'Northern Cape', 'Gauteng', 1221037, 2798, 17.5),
(15, 'Indonesia', 'Papua', 'Banten', 1904569, 54716, 26.5);

INSERT INTO state_info (state_name, capital, official_language, num_of_districts, biggest_district, smallest_district, num_of_cities) VALUES
('Karnataka', 'Bengaluru', 'Kannada', 31, 'Belagavi', 'Kodagu', 320),
('Tamil Nadu', 'Chennai', 'Tamil', 38, 'Viluppuram', 'Chennai', 526),
('Maharashtra', 'Mumbai', 'Marathi', 36, 'Ahmadnagar', 'Mumbai City', 720),
('Kerala', 'Thiruvananthapuram', 'Malayalam', 14, 'Palakkad', 'Alappuzha', 160),
('Andhra Pradesh', 'Amaravati', 'Telugu', 26, 'Anantapur', 'Srikakulam', 350),
('Telangana', 'Hyderabad', 'Telugu', 33, 'Bhadradri Kothagudem', 'Hyderabad', 500),
('Gujarat', 'Gandhinagar', 'Gujarati', 33, 'Kutch', 'Dang', 450),
('Madhya Pradesh', 'Bhopal', 'Hindi', 52, 'Chhindwara', 'Niwas', 600),
('Rajasthan', 'Jaipur', 'Hindi', 33, 'Jaisalmer', 'Dholpur', 488),
('Odisha', 'Bhubaneswar', 'Odia', 30, 'Mayurbhanj', 'Jagatsinghpur', 380),
('Punjab', 'Chandigarh', 'Punjabi', 23, 'Ludhiana', 'Fazilka', 340),
('Haryana', 'Chandigarh', 'Hindi', 22, 'Bhiwani', 'Panchkula', 290),
('Chhattisgarh', 'Raipur', 'Hindi', 33, 'Bastar', 'Dhamtari', 270),
('Uttar Pradesh', 'Lucknow', 'Hindi', 75, 'Lakhimpur Kheri', 'Hapur', 870),
('West Bengal', 'Kolkata', 'Bengali', 23, 'South 24 Parganas', 'Kolkata', 360);

INSERT INTO scam_records (scam_name, location, incident_year, total_loss, victims_count, severity_level) VALUES
('Ponzi Scheme', 'Bengaluru', 2015, 2500, 1200, 'High'),
('Online Loan Fraud', 'Mangaluru', 2019, 600, 800, 'Medium'),
('Fake Job Scam', 'Hubballi', 2021, 800, 900, 'Medium'),
('Cryptocurrency Scam', 'Bengaluru', 2022, 5000, 1500, 'High'),
('KYC Fraud', 'Mysuru', 2020, 400, 600, 'Low'),
('Insurance Fraud', 'Shivamogga', 2017, 700, 500, 'Medium'),
('Phishing Attack', 'Udupi', 2018, 350, 700, 'Low'),
('Lottery Scam', 'Belagavi', 2020, 450, 1000, 'Medium'),
('Investment Fraud', 'Dharwad', 2016, 2300, 1100, 'High'),
('Identity Theft', 'Kalaburagi', 2015, 300, 400, 'Low'),
('Credit Card Fraud', 'Tumakuru', 2021, 900, 650, 'Medium'),
('Charity Scam', 'Raichur', 2019, 550, 750, 'Medium'),
('Bank Loan Scam', 'Kolar', 2018, 1400, 1200, 'High'),
('Real Estate Scam', 'Bengaluru', 2016, 3200, 1400, 'High'),
('Health Insurance Fraud', 'Vijayapura', 2023, 700, 500, 'Low');

SELECT * from hospital_info;
SELECT * from country_info;
SELECT * from state_info;
SELECT * from scam_info;

SELECT * FROM hospital_info WHERE city IN ('Bengaluru', 'Mysuru');
SELECT * FROM hospital_info WHERE state NOT IN ('Karnataka');
SELECT * FROM hospital_info WHERE city = 'Bengaluru' AND beds > 800;
SELECT * FROM hospital_info WHERE beds = 500 OR beds = 1000;
SELECT * FROM hospital_info WHERE beds BETWEEN 700 AND 1200;
SELECT * FROM hospital_info WHERE beds NOT BETWEEN 500 AND 1000;

SELECT * FROM country_info WHERE country_name IN ('India', 'USA');
SELECT * FROM country_info WHERE country_name NOT IN ('China', 'Russia');
SELECT * FROM country_info WHERE avg_temperature > 10 AND coastline_length > 5000;
SELECT * FROM country_info WHERE total_area > 5000000 OR avg_temperature < 0;
SELECT * FROM country_info WHERE total_area BETWEEN 1000000 AND 10000000;
SELECT * FROM country_info WHERE avg_temperature NOT BETWEEN 10 AND 25;

SELECT * FROM state_info WHERE state_name IN ('Karnataka', 'Tamil Nadu');
SELECT * FROM state_info WHERE state_name NOT IN ('Maharashtra', 'Gujarat');
SELECT * FROM state_info WHERE num_of_districts > 30 AND num_of_cities > 300;
SELECT * FROM state_info WHERE biggest_district = 'Belagavi' OR biggest_district = 'Ahmadnagar';
SELECT * FROM state_info WHERE num_of_districts BETWEEN 20 AND 40;
SELECT * FROM state_info WHERE num_of_cities NOT BETWEEN 200 AND 500;

SELECT * FROM scam_records WHERE location IN ('Bengaluru', 'Mangaluru');
SELECT * FROM scam_records WHERE location NOT IN ('Mysuru', 'Hubballi');
SELECT * FROM scam_records WHERE incident_year > 2015 AND victims_count > 1000;
SELECT * FROM scam_records WHERE total_loss > 2000 OR severity_level = 'High';
SELECT * FROM scam_records WHERE incident_year BETWEEN 2018 AND 2022;
SELECT * FROM scam_records WHERE total_loss NOT BETWEEN 500 AND 2000;

UPDATE country_info set country_name='Bangla' where country_id = 3;

CREATE DATABASE Cricket;
CREATE TABLE Cricket_info (PlayerID INT,PlayerName VARCHAR(50),Age INT,
Team VARCHAR(50),MatchesPlayed INT,Runs INT,Wickets INT,
Average FLOAT,StrikeRate FLOAT,Country VARCHAR(50));

CREATE DATABASE FootBall;
CREATE TABLE FootBall_info (PlayerID INT,PlayerName VARCHAR(50),
Age INT,Team VARCHAR(50),MatchesPlayed INT,
Goals INT,Assists INT,YellowCards INT,
RedCards INT,Country VARCHAR(50));

INSERT INTO Cricket_info VALUES
(1, 'Virat Kohli', 35, 'RCB', 250, 12000, 4, 58.1, 92.5, 'India'),
(2, 'Joe Root', 34, 'Yorkshire', 180, 9500, 3, 50.3, 81.2, 'England'),
(3, 'Steve Smith', 35, 'Sydney Sixers', 200, 10200, 1, 52.4, 85.7, 'Australia'),
(4, 'Kane Williamson', 34, 'Sunrisers', 190, 9800, 2, 53.1, 82.4, 'New Zealand'),
(5, 'David Warner', 37, 'Delhi Capitals', 210, 10800, 0, 45.6, 87.3, 'Australia'),
(6, 'Babar Azam', 30, 'Karachi Kings', 160, 8200, 2, 48.2, 90.1, 'Pakistan'),
(7, 'Ben Stokes', 33, 'Rajasthan Royals', 170, 7300, 120, 42.5, 78.6, 'England'),
(8, 'Rohit Sharma', 36, 'Mumbai Indians', 230, 11500, 2, 47.9, 88.3, 'India'),
(9, 'Marnus Labuschagne', 31, 'Brisbane Heat', 140, 6800, 1, 46.3, 79.5, 'Australia'),
(10, 'Goutham Gambir', 27, 'Gujarat Titans', 110, 5000, 0, 49.8, 91.7, 'India'),
(11, 'Anil Kumble', 33, 'RCB', 110, 5000, 0, 49.8, 91.7, 'India'),
(12, 'Mahendr sign Doni', 29, 'Gujarat Titans', 110, 5000, 0, 49.8, 91.7, 'India'),
(13, 'Devadatt Padikal', 28, 'sydney Sixers', 110, 5000, 0, 49.8, 91.7, 'India'),
(14, 'Bhuvaneshwar Kumar', 31, 'Gujarat Titans', 110, 5000, 0, 49.8, 91.7, 'India'),
(15, 'Hardik Pandya', 26, 'Gujarat Titans', 110, 5000, 0, 49.8, 91.7, 'India');

INSERT INTO FootBall_info VALUES
(1, 'Lionel Messi', 37, 'Inter Miami', 900, 800, 320, 80, 5, 'Argentina'),
(2, 'Cristiano Ronaldo', 40, 'Al-Nassr', 1100, 850, 200, 90, 7, 'Portugal'),
(3, 'Neymar', 34, 'Al-Hilal', 750, 400, 250, 70, 9, 'Brazil'),
(4, 'Kevin De Bruyne', 35, 'Man City', 650, 150, 400, 30, 1, 'Belgium'),
(5, 'Sergio Ramos', 39, 'Sevilla', 900, 100, 50, 200, 20, 'Spain'),
(6, 'Robert Lewandowski', 36, 'Barcelona', 850, 700, 150, 40, 3, 'Poland'),
(7, 'Kylian Mbappe', 27, 'PSG', 400, 250, 120, 20, 1, 'France'),
(8, 'Erling Haaland', 25, 'Man City', 300, 250, 50, 10, 0, 'Norway'),
(9, 'Luka Modric', 39, 'Real Madrid', 900, 100, 300, 40, 2, 'Croatia'),
(10, 'Mohamed Salah', 33, 'Liverpool', 600, 350, 120, 25, 1, 'Egypt'),
(11, 'Virgil van Dijk', 34, 'Liverpool', 500, 50, 30, 60, 5, 'Netherlands'),
(12, 'Harry Kane', 31, 'Bayern Munich', 550, 400, 90, 30, 1, 'England'),
(13, 'Bruno Fernandes', 30, 'Man United', 450, 150, 200, 20, 0, 'Portugal'),
(14, 'Antoine Griezmann', 34, 'Atletico Madrid', 700, 300, 180, 40, 2, 'France'),
(15, 'Son Heung-min', 32, 'Tottenham', 500, 250, 120, 20, 0, 'South Korea');

ALTER TABLE Cricket_info ADD (Catches INT, Stumpings INT);
ALTER TABLE FootBall_info ADD (CleanSheets INT, Tackles INT);
ALTER TABLE Cricket_info RENAME COLUMN Runs TO TotalRuns;
ALTER TABLE Cricket_info RENAME COLUMN Wickets TO TotalWickets;
ALTER TABLE FootBall_info RENAME COLUMN Goals TO TotalGoals;
ALTER TABLE FootBall_info RENAME COLUMN Assists TO TotalAssists;

UPDATE Cricket_info SET TotalRuns = TotalRuns + 100 WHERE Age > 30 AND MatchesPlayed > 150;
UPDATE FootBall_info SET TotalGoals = TotalGoals + 10 WHERE Country = 'Argentina' OR Country = 'Portugal';
UPDATE Cricket_info SET StrikeRate = 95 WHERE PlayerID IN (1, 2, 3);
UPDATE FootBall_info SET YellowCards = 0 WHERE PlayerID NOT IN (1, 2, 3);
UPDATE Cricket_info SET Average = 55 WHERE PlayerName LIKE 'B%';

DELETE FROM Cricket_info WHERE PlayerID IN (8, 9, 10);
DELETE FROM FootBall_info WHERE PlayerID IN (4, 5);

SELECT * FROM Cricket_info WHERE Country = 'India';
SELECT * FROM FootBall_info WHERE Age > 35 AND TotalGoals > 500;
SELECT * FROM Cricket_info WHERE Team = 'RCB' OR Team = 'Delhi Capitals';
SELECT * FROM FootBall_info WHERE PlayerID IN (1, 2, 3);
SELECT * FROM Cricket_info WHERE PlayerID NOT IN (1, 2, 3);
SELECT * FROM FootBall_info WHERE Age BETWEEN 30 AND 40;
SELECT * FROM Cricket_info WHERE MatchesPlayed NOT BETWEEN 100 AND 200;

SELECT INSTR('Gujarat Titans','n');
SELECT INSTR('Belgium','e');

select substr('Rohit Sharma', 1,5);
select substr('Sevilla', 1,3);

SELECT Team,SUBSTR(Team,1,4) from cricket_info;
SELECT UPPER(Playername) from cricket_info;
SELECT lower(Playername) from cricket_info;
SELECT CONCAT(team,country,TotalRuns,Totalwickets) from cricket_info;

select count(country) from football_info;
select sum(RedCards) as total_catches from football_info;
SELECT MAX(YellowCards) as high_score from football_info;
SELECT min(Age) as min_runs from football_info;
SELECT avg(MatchesPlayed) as avg_runs from football_info;
SELECT * from football_info;

SELECT max(Age) as no_of_Age,Team from football_info Group by Team Having no_of_Age<40; 
SELECT DISTINCT(Team) from football_info;
SELECT min(RedCards) as no_of_RedCards,Country from football_info Group by Country Having no_of_RedCards>5;
SELECT max(Matchesplayed) as no_of_Matchesplayed, country from football_info
group by country having no_of_Matchesplayed > 500;

/*Task4:1) CREATE 2 TABLES(bmtc_details, tourist_info) with 10 columns.
2) Insert 20 data for each table.
3) Perform Aggregate Functions.
4) Perform Group by and having.*/
CREATE DATABASE bmtc;
CREATE DATABASE tourist;

 CREATE TABLE bmtc_details (bus_id INT,route_number INT,driver_name VARCHAR(50),
bus_type VARCHAR(30),seat_capacity INT,current_location VARCHAR(50),
last_service_date DATE,maintenance_status BOOLEAN,
ticket_price DECIMAL(10, 2),route_length INT);

CREATE TABLE tourist_info (tourist_id INT,name VARCHAR(100),age INT,
gender VARCHAR(10),nationality VARCHAR(50),contact_number VARCHAR(15),
email VARCHAR(100),visited_locations VARCHAR(200),travel_date DATE,total_spent DECIMAL(10, 2));

INSERT INTO bmtc_details VALUES
(1, 101, 'John Doe', 'AC', 50, 'Koramangala', '2024-01-15', TRUE, 40.50, 20),
(2, 102, 'Jane Smith', 'Non-AC', 40, 'MG Road', '2024-02-10', TRUE, 30.00, 15),
(3, 103, 'Paul Johnson', 'AC', 60, 'BTM Layout', '2024-03-01', FALSE, 45.00, 25),
(4, 104, 'Emily Davis', 'Non-AC', 30, 'Whitefield', '2024-01-30', TRUE, 25.00, 18),
(5, 105, 'Michael Brown', 'AC', 50, 'Electronic City', '2024-02-05', TRUE, 35.50, 22),
(6, 106, 'Linda Wilson', 'Non-AC', 45, 'Indiranagar', '2024-03-10', FALSE, 28.00, 17),
(7, 107, 'David Lee', 'AC', 55, 'Marathahalli', '2024-01-20', TRUE, 38.50, 19),
(8, 108, 'Sarah White', 'Non-AC', 35, 'Kalyan Nagar', '2024-02-25', TRUE, 32.00, 16),
(9, 109, 'James Clark', 'AC', 60, 'Banashankari', '2024-01-05', TRUE, 42.00, 30),
(10, 110, 'Barbara Lewis', 'Non-AC', 40, 'Jayanagar', '2024-03-15', FALSE, 27.50, 14),
(11, 111, 'George Walker', 'AC', 50, 'Vidyapeeta', '2024-02-11', TRUE, 37.00, 21),
(12, 112, 'Amanda Scott', 'Non-AC', 45, 'Ulsoor', '2024-01-25', TRUE, 29.50, 20),
(13, 113, 'Joshua Hall', 'AC', 60, 'Rajajinagar', '2024-03-02', FALSE, 43.00, 28),
(14, 114, 'Megan Adams', 'Non-AC', 35, 'Frazer Town', '2024-02-08', TRUE, 26.00, 16),
(15, 115, 'Daniel Taylor', 'AC', 50, 'Hosur Road', '2024-01-10', TRUE, 39.00, 24),
(16, 116, 'Rachel King', 'Non-AC', 40, 'Kumaraswamy Layout', '2024-02-15', TRUE, 31.00, 22),
(17, 117, 'Samuel Martinez', 'AC', 55, 'Peenya', '2024-03-12', FALSE, 40.00, 27),
(18, 118, 'Olivia Robinson', 'Non-AC', 45, 'Bommanahalli', '2024-01-08', TRUE, 33.00, 18),
(19, 119, 'Matthew Clark', 'AC', 60, 'Hennur', '2024-02-01', TRUE, 41.00, 23),
(20, 120, 'Sophia Lewis', 'Non-AC', 40, 'Bellandur', '2024-03-05', FALSE, 29.00, 20);

INSERT INTO tourist_info VALUES
(1, 'Alice Brown', 30, 'Female', 'USA', '1234567890', 'alice@example.com', 'Bangalore, Mysore', '2024-01-10', 500.00),
(2, 'Bob Smith', 40, 'Male', 'UK', '0987654321', 'bob@example.com', 'Chennai, Coimbatore', '2024-02-15', 450.00),
(3, 'Charlie Johnson', 25, 'Male', 'Canada', '1122334455', 'charlie@example.com', 'Delhi, Agra', '2024-03-05', 600.00),
(4, 'Diana Davis', 35, 'Female', 'India', '2233445566', 'diana@example.com', 'Mumbai, Goa', '2024-01-20', 550.00),
(5, 'Eve Wilson', 28, 'Female', 'Australia', '3344556677', 'eve@example.com', 'Kolkata, Darjeeling', '2024-02-01', 400.00),
(6, 'Frank Moore', 45, 'Male', 'USA', '4455667788', 'frank@example.com', 'Bangalore, Hyderabad', '2024-03-10', 700.00),
(7, 'Grace Taylor', 32, 'Female', 'UK', '5566778899', 'grace@example.com', 'Chennai, Pondicherry', '2024-01-25', 350.00),
(8, 'Hannah Lewis', 38, 'Female', 'Canada', '6677889900', 'hannah@example.com', 'Jaipur, Udaipur', '2024-02-05', 650.00),
(9, 'Isaac Clark', 50, 'Male', 'Australia', '7788990011', 'isaac@example.com', 'Delhi, Rishikesh', '2024-03-01', 800.00),
(10, 'Jack Adams', 27, 'Male', 'India', '8899001122', 'jack@example.com', 'Bangalore, Coorg', '2024-01-30', 420.00),
(11, 'Kelly Martin', 29, 'Female', 'USA', '9900112233', 'kelly@example.com', 'Mysore, Bangalore', '2024-02-20', 530.00),
(12, 'Liam Robinson', 33, 'Male', 'UK', '1011121314', 'liam@example.com', 'Agra, Varanasi', '2024-03-12', 600.00),
(13, 'Megan Scott', 26, 'Female', 'Canada', '1122334455', 'megan@example.com', 'Mumbai, Pune', '2024-01-15', 490.00),
(14, 'Nathan Harris', 42, 'Male', 'Australia', '2233445566', 'nathan@example.com', 'Chennai, Kerala', '2024-02-25', 750.00),
(15, 'Olivia Walker', 39, 'Female', 'India', '3344556677', 'olivia@example.com', 'Goa, Mumbai', '2024-03-15', 680.00),
(16, 'Paul Mitchell', 31, 'Male', 'USA', '4455667788', 'paul@example.com', 'Delhi, Amritsar', '2024-01-10', 500.00),
(17, 'Quincy Harris', 34, 'Male', 'UK', '5566778899', 'quincy@example.com', 'Kolkata, Siliguri', '2024-02-18', 450.00),
(18, 'Rachel Young', 30, 'Female', 'Canada', '6677889900', 'rachel@example.com', 'Bangalore, Mysore', '2024-03-01', 550.00),
(19, 'Steve Thomas', 37, 'Male', 'Australia', '7788990011', 'steve@example.com', 'Chennai, Hyderabad', '2024-02-10', 700.00),
(20, 'Tina Roberts', 43, 'Female', 'India', '8899001122', 'tina@example.com', 'Coimbatore, Ooty', '2024-01-18', 480.00);

SELECT 
    AVG(ticket_price) AS avg_ticket_price,
    SUM(seat_capacity) AS total_seat_capacity,
    COUNT(bus_id) AS total_buses
FROM bmtc_details;

SELECT 
    AVG(total_spent) AS avg_spent,
    SUM(total_spent) AS total_revenue,
    COUNT(tourist_id) AS total_tourists
FROM tourist_info;

SELECT bus_type, AVG(ticket_price) AS avg_ticket_price
FROM bmtc_details
GROUP BY bus_type
HAVING AVG(ticket_price) > 35;

SELECT nationality, SUM(total_spent) AS total_spent
FROM tourist_info
GROUP BY nationality
HAVING SUM(total_spent) > 500;

CREATE DATABASE pkl;
CREATE TABLE pkl_info (id INT,name VARCHAR(50) NOT NULL UNIQUE,
age INT NOT NULL,country VARCHAR(50) NOT NULL,
matches_played INT NOT NULL,total_runs INT,
wickets INT,strike_rate DECIMAL(5,2),
average DECIMAL(5,2),team VARCHAR(50));

CREATE DATABASE movies;
CREATE TABLE movies_info (id INT PRIMARY KEY,
title VARCHAR(100) NOT NULL UNIQUE,director VARCHAR(50) NOT NULL,
release_year INT NOT NULL,genre VARCHAR(50) NOT NULL,
rating DECIMAL(3,1),box_office DECIMAL(10,2),
duration INT,language VARCHAR(50),country VARCHAR(50)
);

CREATE DATABASE cosmetics;
CREATE TABLE cosmetics_info (id INT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL UNIQUE,brand VARCHAR(50) NOT NULL,
price DECIMAL(10,2) NOT NULL,category VARCHAR(50) NOT NULL,
stock INT,expiry_date DATE,discount DECIMAL(5,2),
rating DECIMAL(3,1),origin_country VARCHAR(50));

INSERT INTO pkl_info VALUES
(1, 'Ben Stokes', 31, 'England', 95, 4600, 85, 135.4, 44.5, 'Rangers'),
(2, 'David Miller', 34, 'South Africa', 105, 5200, 60, 128.9, 45.7, 'Strikers'),
(3, 'KL Rahul', 30, 'India', 120, 5700, 40, 129.3, 47.2, 'Titans'),
(4, 'Mitchell Starc', 33, 'Australia', 80, 2400, 195, 110.4, 35.6, 'Royals'),
(5, 'Rashid Khan', 27, 'Afghanistan', 90, 2800, 230, 119.5, 38.1, 'Chargers'),
(6, 'Virat Kohli', 34, 'India', 150, 8500, 10, 136.7, 50.2, 'Titans'),
(7, 'Steve Smith', 35, 'Australia', 140, 7800, 25, 129.8, 48.6, 'Royals'),
(8, 'Jos Buttler', 32, 'England', 110, 6000, 15, 138.2, 46.8, 'Rangers'),
(9, 'Kieron Pollard', 36, 'West Indies', 120, 5000, 150, 145.0, 40.5, 'Chargers'),
(10, 'Babar Azam', 30, 'Pakistan', 115, 6300, 8, 128.6, 49.7, 'Strikers'),
(11, 'Shubman Gill', 24, 'India', 85, 4200, 5, 134.5, 44.1, 'Titans'),
(12, 'Pat Cummins', 31, 'Australia', 95, 1500, 190, 118.2, 33.4, 'Royals'),
(13, 'Moeen Ali', 36, 'England', 102, 3200, 130, 126.9, 39.6, 'Rangers'),
(14, 'Jasprit Bumrah', 30, 'India', 98, 1000, 210, 112.5, 31.7, 'Chargers'),
(15, 'Andre Russell', 35, 'West Indies', 110, 3800, 165, 144.8, 42.3, 'Strikers'),
(16, 'Trent Boult', 34, 'New Zealand', 93, 900, 185, 115.7, 34.5, 'Chargers'),
(17, 'Faf du Plessis', 39, 'South Africa', 130, 6400, 3, 130.6, 46.8, 'Strikers'),
(18, 'Shane Watson', 42, 'Australia', 145, 7300, 120, 132.9, 41.5, 'Royals'),
(19, 'Hardik Pandya', 30, 'India', 100, 4500, 90, 135.5, 44.0, 'Titans'),
(20, 'Chris Gayle', 45, 'West Indies', 140, 10000, 35, 147.6, 50.3, 'Chargers');

INSERT INTO movies_info VALUES
(1, 'Inception', 'Christopher Nolan', 2010, 'Sci-Fi', 8.8, 829.89, 148, 'English', 'USA'),
(2, 'Interstellar', 'Christopher Nolan', 2014, 'Sci-Fi', 8.6, 677.47, 169, 'English', 'USA'),
(3, 'The Dark Knight', 'Christopher Nolan', 2008, 'Action', 9.0, 1004.56, 152, 'English', 'USA'),
(4, 'Parasite', 'Bong Joon-ho', 2019, 'Thriller', 8.6, 263.12, 132, 'Korean', 'South Korea'),
(5, 'Titanic', 'James Cameron', 1997, 'Romance', 7.9, 2187.46, 195, 'English', 'USA'),
(6, 'The Godfather', 'Francis Ford Coppola', 1972, 'Crime', 9.2, 245.06, 175, 'English', 'USA'),
(7, 'The Shawshank Redemption', 'Frank Darabont', 1994, 'Drama', 9.3, 58.5, 142, 'English', 'USA'),
(8, 'Joker', 'Todd Phillips', 2019, 'Drama', 8.4, 1074.42, 122, 'English', 'USA'),
(9, 'Avatar', 'James Cameron', 2009, 'Sci-Fi', 7.9, 2923.74, 162, 'English', 'USA'),
(10, 'Gladiator', 'Ridley Scott', 2000, 'Action', 8.5, 460.58, 155, 'English', 'USA'),
(11, 'The Avengers', 'Joss Whedon', 2012, 'Superhero', 8.0, 1518.81, 143, 'English', 'USA'),
(12, 'The Matrix', 'Lana Wachowski', 1999, 'Sci-Fi', 8.7, 466.32, 136, 'English', 'USA'),
(13, 'Pulp Fiction', 'Quentin Tarantino', 1994, 'Crime', 8.9, 214.2, 154, 'English', 'USA'),
(14, 'Fight Club', 'David Fincher', 1999, 'Drama', 8.8, 101.21, 139, 'English', 'USA'),
(15, 'Forrest Gump', 'Robert Zemeckis', 1994, 'Drama', 8.8, 678.22, 142, 'English', 'USA'),
(16, 'The Lion King', 'Roger Allers', 1994, 'Animation', 8.5, 968.48, 88, 'English', 'USA'),
(17, 'Django Unchained', 'Quentin Tarantino', 2012, 'Western', 8.4, 426.07, 165, 'English', 'USA'),
(18, 'Avengers: Endgame', 'Anthony Russo', 2019, 'Superhero', 8.4, 2797.50, 181, 'English', 'USA'),
(19, 'The Departed', 'Martin Scorsese', 2006, 'Crime', 8.5, 291.48, 151, 'English', 'USA'),
(20, 'Whiplash', 'Damien Chazelle', 2014, 'Drama', 8.5, 49.56, 107, 'English', 'USA');

INSERT INTO cosmetics_info VALUES
(1, 'Lipstick', 'Maybelline', 10.99, 'Makeup', 200, '2026-08-10', 15.00, 4.5, 'USA'),
(2, 'Foundation', 'L\'Oreal', 18.99, 'Makeup', 150, '2025-06-15', 20.00, 4.3, 'France'),
(3, 'Shampoo', 'Pantene', 7.49, 'Haircare', 300, '2025-09-20', 10.00, 4.1, 'USA'),
(4, 'Moisturizer', 'Neutrogena', 12.99, 'Skincare', 250, '2024-12-01', 5.00, 4.6, 'USA'),
(5, 'Nail Polish', 'Revlon', 4.99, 'Makeup', 180, '2025-02-28', 8.00, 4.4, 'USA'),
(6, 'Perfume', 'Chanel', 85.00, 'Fragrance', 50, '2026-03-12', 25.00, 4.9, 'France'),
(7, 'Body Lotion', 'Vaseline', 6.50, 'Skincare', 220, '2024-10-15', 12.00, 4.2, 'UK'),
(8, 'Face Wash', 'Clean & Clear', 8.50, 'Skincare', 180, '2025-01-25', 5.00, 4.3, 'USA'),
(9, 'Eye Shadow', 'Urban Decay', 24.99, 'Makeup', 100, '2025-05-05', 10.00, 4.7, 'USA'),
(10, 'Hair Oil', 'Dove', 9.99, 'Haircare', 190, '2025-07-18', 15.00, 4.4, 'USA'),
(11, 'BB Cream', 'Clinique', 22.99, 'Makeup', 120, '2024-09-10', 12.00, 4.5, 'USA'),
(12, 'Face Mask', 'The Body Shop', 15.00, 'Skincare', 130, '2026-02-20', 10.00, 4.8, 'UK'),
(13, 'Sunscreen', 'Neutrogena', 11.99, 'Skincare', 210, '2025-08-10', 5.00, 4.6, 'USA'),
(14, 'Shaving Cream', 'Gillette', 5.99, 'Shaving', 150, '2025-11-11', 7.00, 4.2, 'USA'),
(15, 'Deodorant', 'Secret', 3.99, 'Fragrance', 250, '2025-03-15', 10.00, 4.3, 'USA'),
(16, 'Hair Conditioner', 'Herbal Essences', 8.99, 'Haircare', 190, '2024-12-20', 8.00, 4.4, 'USA'),
(17, 'Lip Balm', 'Burt\'s Bees', 3.50, 'Makeup', 350, '2026-05-30', 10.00, 4.6, 'USA'),
(18, 'Anti-Aging Cream', 'Olay', 29.99, 'Skincare', 80, '2025-01-15', 15.00, 4.7, 'USA'),
(19, 'Hand Cream', 'Neutrogena', 7.99, 'Skincare', 160, '2025-04-12', 8.00, 4.5, 'USA'),
(20, 'Eye Cream', 'Clinique', 30.00, 'Skincare', 90, '2025-06-05', 12.00, 4.8, 'USA');

ALTER TABLE pkl_info ADD COLUMN ranking INT;
UPDATE pkl_info SET ranking = FLOOR(RAND() * 100 + 1);

ALTER TABLE movies_info ADD COLUMN awards_won INT;
UPDATE movies_info SET awards_won = FLOOR(RAND() * 10 + 1);

SELECT COUNT(*) AS total_players, AVG(total_runs) AS avg_runs FROM pkl_info;
SELECT COUNT(*) AS total_movies, AVG(rating) AS avg_rating FROM movies_info;
SELECT COUNT(*) AS total_products, AVG(price) AS avg_price FROM cosmetics_info;

SELECT country, COUNT(*) AS player_count FROM pkl_info GROUP BY country HAVING COUNT(*) > 5;
SELECT genre, AVG(rating) AS avg_rating FROM movies_info GROUP BY genre HAVING AVG(rating) > 7.0;
SELECT category, AVG(price) AS avg_price FROM cosmetics_info GROUP BY category HAVING AVG(price) > 20;

ALTER TABLE pkl_info ADD COLUMN years_in_cricket INT;
UPDATE pkl_info SET years_in_cricket = FLOOR(RAND() * 15 + 1);

ALTER TABLE movies_info ADD COLUMN box_office_rank INT;
UPDATE movies_info SET box_office_rank = FLOOR(RAND() * 100 + 1);

ALTER TABLE cosmetics_info ADD COLUMN supplier_name VARCHAR(50);
UPDATE cosmetics_info SET supplier_name = CASE 
    WHEN id % 2 = 0 THEN 'Supplier A'
    ELSE 'Supplier B'
END;

SELECT COUNT(*) AS total_players, AVG(total_runs) AS avg_runs, MAX(total_runs) AS highest_runs, MIN(total_runs) AS lowest_runs FROM pkl_info;
SELECT COUNT(*) AS total_movies, AVG(rating) AS avg_rating, MAX(rating) AS highest_rating, MIN(rating) AS lowest_rating FROM movies_info;
SELECT COUNT(*) AS total_products, AVG(price) AS avg_price, MAX(price) AS highest_price, MIN(price) AS lowest_price FROM cosmetics_info;
SELECT country, COUNT(*) AS player_count FROM pkl_info GROUP BY country HAVING COUNT(*) > 2;
SELECT genre, AVG(rating) AS avg_rating FROM movies_info GROUP BY genre HAVING AVG(rating) > 8.0;
SELECT category, AVG(price) AS avg_price FROM cosmetics_info GROUP BY category HAVING AVG(price) > 10;

SELECT name, total_runs FROM pkl_info ORDER BY total_runs DESC LIMIT 5;
SELECT title, box_office FROM movies_info ORDER BY box_office DESC LIMIT 5;
SELECT product_name, price FROM cosmetics_info ORDER BY price DESC LIMIT 5;

SELECT p.name AS player_name, m.title AS movie_title 
FROM pkl_info p
JOIN movies_info m ON p.country = m.country
WHERE m.rating > 8.0;

UPDATE pkl_info 
SET ranking = CASE 
    WHEN matches_played > 150 THEN 1 
    WHEN matches_played BETWEEN 100 AND 150 THEN 2
    ELSE 3 
END;

UPDATE movies_info 
SET rating = CASE
    WHEN genre = 'Action' THEN rating + 0.2
    WHEN genre = 'Drama' THEN rating + 0.1
    ELSE rating
END;

UPDATE cosmetics_info 
SET stock = CASE
    WHEN discount > 10 THEN stock + 50
    ELSE stock
END;

SELECT name, total_runs FROM pkl_info 
WHERE matches_played > 100 AND total_runs = (SELECT MAX(total_runs) FROM pkl_info WHERE matches_played > 100);
SELECT title, rating FROM movies_info
WHERE genre = 'Drama' AND rating = (SELECT MAX(rating) FROM movies_info WHERE genre = 'Drama');
SELECT product_name, price FROM cosmetics_info
WHERE category = 'Makeup' AND price = (SELECT MAX(price) FROM cosmetics_info WHERE category = 'Makeup');

DELETE FROM pkl_info WHERE matches_played < 50;
CREATE INDEX idx_country ON pkl_info(country);
CREATE INDEX idx_genre ON movies_info(genre);
CREATE INDEX idx_category ON cosmetics_info(category);

DESCRIBE pkl_info;
DESCRIBE movies_info;
DESCRIBE cosmetics_info;

/*Task:6
Create following tables:
1. furniture_info : 10 columns use any one column as enum.
2. electronic_gadgets : 10 columns use any one column as enum.
3. restaurant_info : 10 columns use any one column as enum.
4. olympics_info : 10 columns use any one column as enum.

For each table apply NOT NULL, UNIQUE, check CONSTRAINT for 6 columns using ALTER.
Insert 15 data for each table.
ADD 2 COLUMNS using ALTER.
UPDATE data for new columns.*/

CREATE DATABASE furniture;
CREATE TABLE furniture_info(id INT,name VARCHAR(50),
fire_resistance BOOLEAN,primary_use VARCHAR(50),texture VARCHAR(50),
eco_friendly BOOLEAN,adjustable BOOLEAN,category ENUM('Chair', 'Table','Storage', 'Bed', 'Stool'),
water_resistant BOOLEAN,portability VARCHAR(50));

ALTER TABLE furniture_info MODIFY id INT NOT NULL;
ALTER TABLE furniture_info MODIFY name VARCHAR(50) NOT NULL;
ALTER TABLE furniture_info MODIFY primary_use VARCHAR(50) NOT NULL;
ALTER TABLE furniture_info MODIFY texture VARCHAR(50) NOT NULL;
ALTER TABLE furniture_info MODIFY category ENUM('Chair', 'Table', 'Sofa', 'Desk', 'Shelf', 'Storage', 'Bed', 'Stool') NOT NULL;
ALTER TABLE furniture_info MODIFY portability VARCHAR(50) NOT NULL;
ALTER TABLE furniture_info ADD CONSTRAINT id_uni UNIQUE(id);
ALTER TABLE furniture_info ADD CONSTRAINT name_uni UNIQUE(name);
ALTER TABLE furniture_info ADD CONSTRAINT primary_use_uni UNIQUE(primary_use);
ALTER TABLE furniture_info ADD CONSTRAINT texture_uni UNIQUE(texture);
ALTER TABLE furniture_info ADD CONSTRAINT category_uni UNIQUE(category);
ALTER TABLE furniture_info ADD CONSTRAINT portability_uni UNIQUE(portability);
ALTER TABLE furniture_info ADD CONSTRAINT check_category CHECK (category IN ('Chair', 'Table', 'Sofa', 'Desk', 'Shelf', 'Storage', 'Bed', 'Stool'));
ALTER TABLE furniture_info ADD CONSTRAINT check_fire_resistance CHECK (fire_resistance IN (TRUE, FALSE));
ALTER TABLE furniture_info ADD CONSTRAINT check_eco_friendly CHECK (eco_friendly IN (TRUE, FALSE));
ALTER TABLE furniture_info ADD CONSTRAINT check_adjustable CHECK (adjustable IN (TRUE, FALSE));
ALTER TABLE furniture_info ADD CONSTRAINT check_water_resistant CHECK (water_resistant IN (TRUE, FALSE));
ALTER TABLE furniture_info ADD CONSTRAINT check_portability CHECK (portability IN ('Portable', 'Not Portable'));

INSERT INTO furniture_info VALUES
(1, 'Office Chair', TRUE, 'Work', 'Smooth', TRUE, TRUE, 'Chair', FALSE, 'Portable'),
(2, 'Dining Table', FALSE, 'Dining', 'Polished', FALSE, FALSE, 'Table', TRUE, 'Not Portable'),
(3, 'Sofa Set', FALSE, 'Seating', 'Soft', TRUE, FALSE, 'Storage', FALSE, 'Not Portable'),
(4, 'Standing Desk', FALSE, 'Work', 'Matte', TRUE, TRUE, 'Table', FALSE, 'Portable'),
(5, 'Bookshelf', FALSE, 'Storage', 'Textured', FALSE, FALSE, 'Storage', FALSE, 'Not Portable'),
(6, 'Recliner Chair', FALSE, 'Relaxation', 'Leather Feel', FALSE, TRUE, 'Chair', FALSE, 'Portable'),
(7, 'Coffee Table', FALSE, 'Living Room', 'Glossy', FALSE, FALSE, 'Table', TRUE, 'Not Portable'),
(8, 'Storage Cabinet', TRUE, 'Storage', 'Wood Grain', TRUE, FALSE, 'Storage', FALSE, 'Not Portable'),
(9, 'Bunk Bed', FALSE, 'Sleeping', 'Painted', FALSE, FALSE, 'Bed', FALSE, 'Not Portable'),
(10, 'Bar Stool', FALSE, 'Seating', 'Metallic', FALSE, TRUE, 'Stool', TRUE, 'Portable'),
(11, 'Rocking Chair', FALSE, 'Relaxation', 'Wooden', TRUE, FALSE, 'Chair', FALSE, 'Portable'),
(12, 'Folding Table', FALSE, 'Multipurpose', 'Laminate', TRUE, TRUE, 'Table', TRUE, 'Portable'),
(13, 'L-Shaped Sofa', FALSE, 'Seating', 'Velvet', FALSE, FALSE, 'Storage', FALSE, 'Not Portable'),
(14, 'Gaming Desk', FALSE, 'Gaming', 'Smooth', FALSE, TRUE, 'Table', FALSE, 'Portable'),
(15, 'Corner Shelf', FALSE, 'Storage', 'Plastic', TRUE, FALSE, 'Storage', FALSE, 'Portable');

ALTER TABLE furniture_info ADD COLUMN brand VARCHAR(50);
ALTER TABLE furniture_info ADD COLUMN warranty INT;

UPDATE furniture_info SET brand = 'IKEA', warranty = 5 WHERE id IN (1, 2, 3, 4, 5);
UPDATE furniture_info SET brand = 'Wayfair', warranty = 3 WHERE id IN (6, 7, 8, 9, 10);
UPDATE furniture_info SET brand = 'Ashley', warranty = 7 WHERE id IN (11, 12, 13, 14, 15);

SELECT * FROM furniture_info;

CREATE DATABASE Electronic_Gadgets
CREATE TABLE Electronic_Gadgets_info (id INT,name VARCHAR(50),brand VARCHAR(50),
category ENUM('Laptop', 'Mobile', 'Tablet', 'Smartwatch', 'TV'),
power_source VARCHAR(50),weight FLOAT,battery_life INT,
connectivity VARCHAR(50),eco_friendly BOOLEAN,warranty INT);

ALTER TABLE Electronic_Gadgets MODIFY id INT NOT NULL;
ALTER TABLE Electronic_Gadgets MODIFY name VARCHAR(50) NOT NULL;
ALTER TABLE Electronic_Gadgets MODIFY category ENUM('Laptop', 'Mobile', 'Tablet', 'Smartwatch', 'TV') NOT NULL;
ALTER TABLE Electronic_Gadgets MODIFY brand VARCHAR(50) NOT NULL;
ALTER TABLE Electronic_Gadgets MODIFY power_source VARCHAR(50) NOT NULL;
ALTER TABLE Electronic_Gadgets MODIFY warranty INT NOT NULL;
ALTER TABLE Electronic_Gadgets ADD CONSTRAINT unique_id UNIQUE (id);
ALTER TABLE Electronic_Gadgets ADD CONSTRAINT unique_name UNIQUE (name);
ALTER TABLE Electronic_Gadgets ADD CONSTRAINT unique_brand UNIQUE (brand);
ALTER TABLE Electronic_Gadgets ADD CONSTRAINT unique_connectivity UNIQUE (connectivity);
ALTER TABLE Electronic_Gadgets ADD CONSTRAINT unique_power_source UNIQUE (power_source);
ALTER TABLE Electronic_Gadgets ADD CONSTRAINT unique_category UNIQUE (category);
ALTER TABLE Electronic_Gadgets ADD CONSTRAINT check_weight CHECK (weight > 0);
ALTER TABLE Electronic_Gadgets ADD CONSTRAINT check_battery_life CHECK (battery_life >= 0);
ALTER TABLE Electronic_Gadgets ADD CONSTRAINT check_warranty CHECK (warranty >= 0);
ALTER TABLE Electronic_Gadgets ADD CONSTRAINT check_category CHECK (category IN ('Laptop', 'Mobile', 'Tablet', 'Smartwatch', 'TV'));
ALTER TABLE Electronic_Gadgets ADD CONSTRAINT check_power_source CHECK (power_source IN ('Battery', 'Electric', 'Solar'));
ALTER TABLE Electronic_Gadgets ADD CONSTRAINT check_eco_friendly CHECK (eco_friendly IN (TRUE, FALSE));
INSERT INTO Electronic_Gadgets VALUES
(1, 'MacBook Pro', 'Apple', 'Laptop', 'Battery', 1.4, 10, 'WiFi, Bluetooth', TRUE, 3, 2022, 1299.99),
(2, 'Galaxy S22', 'Samsung', 'Mobile', 'Battery', 0.2, 24, '5G, WiFi, Bluetooth', TRUE, 2, 2022, 999.99),
(3, 'iPad Air', 'Apple', 'Tablet', 'Battery', 0.5, 12, 'WiFi, Bluetooth', TRUE, 2, 2022, 799.99),
(4, 'Apple Watch', 'Apple', 'Smartwatch', 'Battery', 0.1, 18, 'Bluetooth, WiFi', TRUE, 1, 2022, 399.99),
(5, 'OLED TV', 'LG', 'TV', 'Electric', 10.0, NULL, 'WiFi, HDMI', TRUE, 5, 2022, 1499.99),
(6, 'ThinkPad X1', 'Lenovo', 'Laptop', 'Battery', 1.3, 12, 'WiFi, Bluetooth', TRUE, 3, 2021, 1199.99),
(7, 'Pixel 6', 'Google', 'Mobile', 'Battery', 0.2, 24, '5G, WiFi, Bluetooth', TRUE, 2, 2021, 899.99),
(8, 'Galaxy Tab S7', 'Samsung', 'Tablet', 'Battery', 0.6, 15, 'WiFi, Bluetooth', TRUE, 2, 2021, 749.99),
(9, 'Fitbit Versa', 'Fitbit', 'Smartwatch', 'Battery', 0.1, 5, 'Bluetooth', TRUE, 1, 2021, 199.99),
(10, 'QLED TV', 'Samsung', 'TV', 'Electric', 12.0, NULL, 'WiFi, HDMI', TRUE, 5, 2021, 1399.99),
(11, 'Surface Laptop', 'Microsoft', 'Laptop', 'Battery', 1.5, 13, 'WiFi, Bluetooth', TRUE, 3, 2020, 999.99),
(12, 'iPhone 12', 'Apple', 'Mobile', 'Battery', 0.2, 22, '5G, WiFi, Bluetooth', TRUE, 2, 2020, 799.99),
(13, 'iPad Mini', 'Apple', 'Tablet', 'Battery', 0.4, 10, 'WiFi, Bluetooth', TRUE, 2, 2020, 599.99),
(14, 'Garmin Fenix', 'Garmin', 'Smartwatch', 'Battery', 0.1, 14, 'Bluetooth, GPS', TRUE, 1, 2020, 499.99),
(15, 'LED TV', 'Sony', 'TV', 'Electric', 8.0, NULL, 'WiFi, HDMI', TRUE, 5, 2020, 999.99);

ALTER TABLE Electronic_Gadgets ADD COLUMN release_year INT;
ALTER TABLE Electronic_Gadgets ADD COLUMN price DECIMAL(10,2);

UPDATE Electronic_Gadgets SET release_year = 2022, price = 999.99 WHERE id IN (1, 2, 3, 4, 5);
UPDATE Electronic_Gadgets SET release_year = 2021, price = 799.99 WHERE id IN (6, 7, 8, 9, 10);
UPDATE Electronic_Gadgets SET release_year = 2020, price = 499.99 WHERE id IN (11, 12, 13, 14, 15);

SELECT * FROM Electronic_Gadgets;

CREATE DATABASE Restaurant;
USE Restaurant;

CREATE TABLE restaurant_info (
    id INT,
    name VARCHAR(50),
    location VARCHAR(100),
    cuisine ENUM('Italian', 'Chinese', 'Indian', 'Mexican', 'French'),
    seating_capacity INT,
    rating FLOAT,
    delivery_available BOOLEAN,
    contact_number VARCHAR(15),
    opening_year INT,
    average_price DECIMAL(10,2)
);

ALTER TABLE restaurant_info MODIFY id INT NOT NULL;
ALTER TABLE restaurant_info MODIFY name VARCHAR(50) NOT NULL;
ALTER TABLE restaurant_info MODIFY location VARCHAR(100) NOT NULL;
ALTER TABLE restaurant_info MODIFY cuisine ENUM('Italian', 'Chinese', 'Indian', 'Mexican', 'French') NOT NULL;
ALTER TABLE restaurant_info MODIFY seating_capacity INT NOT NULL;
ALTER TABLE restaurant_info ADD CONSTRAINT unique_id UNIQUE (id);
ALTER TABLE restaurant_info ADD CONSTRAINT unique_name UNIQUE (name);
ALTER TABLE restaurant_info ADD CONSTRAINT unique_contact UNIQUE (contact_number);
ALTER TABLE restaurant_info ADD CONSTRAINT check_rating CHECK (rating >= 0 AND rating <= 5);
ALTER TABLE restaurant_info ADD CONSTRAINT check_seating CHECK (seating_capacity > 0);
ALTER TABLE restaurant_info ADD CONSTRAINT check_price CHECK (average_price > 0);

ALTER TABLE restaurant_info ADD COLUMN owner VARCHAR(50);
ALTER TABLE restaurant_info ADD COLUMN reviews INT;
UPDATE restaurant_info SET owner = 'John Doe', reviews = 100 WHERE id = 1;

INSERT INTO restaurant_info VALUES 
(1, 'Pasta Palace', 'New York', 'Italian', 100, 4.5, TRUE, '1234567890', 2015, 25.99, 'John Doe', 100),
(2, 'Dragon Express', 'San Francisco', 'Chinese', 80, 4.2, TRUE, '9876543210', 2018, 20.99, 'Alice Lee', 120),
(3, 'Curry Delight', 'Mumbai', 'Indian', 120, 4.7, TRUE, '5678901234', 2010, 15.99, 'Raj Patel', 200),
(4, 'Taco Fiesta', 'Los Angeles', 'Mexican', 90, 4.3, FALSE, '6789012345', 2017, 18.99, 'Carlos Gomez', 150),
(5, 'Le Gourmet', 'Paris', 'French', 50, 4.8, TRUE, '3456789012', 2020, 45.99, 'Pierre Laurent', 250),
(6, 'Sushi Heaven', 'Tokyo', 'Japanese', 70, 4.9, TRUE, '1112223334', 2016, 30.99, 'Hiroshi Tanaka', 180),
(7, 'BBQ House', 'Texas', 'American', 150, 4.6, TRUE, '4445556667', 2014, 22.99, 'Jake Johnson', 220),
(8, 'Cafe Paris', 'Paris', 'French', 40, 4.2, TRUE, '7778889990', 2019, 35.99, 'Marie Dupont', 140),
(9, 'Peking Duck', 'Beijing', 'Chinese', 110, 4.7, FALSE, '6667778889', 2013, 29.99, 'Wei Zhang', 210),
(10, 'Spice Hub', 'Dubai', 'Indian', 130, 4.8, TRUE, '9990001112', 2021, 19.99, 'Ahmed Khan', 300),
(11, 'Tandoori Nights', 'London', 'Indian', 85, 4.4, TRUE, '3334445556', 2009, 17.99, 'Vikram Mehta', 90),
(12, 'Gourmet Grills', 'Berlin', 'German', 95, 4.5, FALSE, '2223334445', 2022, 27.99, 'Hans Muller', 75),
(13, 'Havana Bites', 'Havana', 'Cuban', 60, 4.3, TRUE, '5556667778', 2011, 20.49, 'Miguel Sanchez', 130),
(14, 'Tuscany Treats', 'Rome', 'Italian', 105, 4.9, TRUE, '8889990001', 2015, 39.99, 'Luca Romano', 200),
(15, 'Grill & Chill', 'Sydney', 'Australian', 125, 4.6, FALSE, '1112223335', 2017, 23.99, 'Emma Watson', 160);

SELECT * FROM restaurant_info;

CREATE DATABASE Olympics;
USE Olympics;

CREATE TABLE olympics_info (
    id INT,
    event_name VARCHAR(50),
    sport ENUM('Athletics', 'Swimming', 'Gymnastics', 'Cycling', 'Wrestling'),
    host_city VARCHAR(50),
    year INT,
    number_of_countries INT,
    total_athletes INT,
    gold_medals INT,
    silver_medals INT,
    bronze_medals INT
);

ALTER TABLE olympics_info MODIFY id INT NOT NULL;
ALTER TABLE olympics_info MODIFY event_name VARCHAR(50) NOT NULL;
ALTER TABLE olympics_info MODIFY sport ENUM('Athletics', 'Swimming', 'Gymnastics', 'Cycling', 'Wrestling') NOT NULL;
ALTER TABLE olympics_info MODIFY host_city VARCHAR(50) NOT NULL;
ALTER TABLE olympics_info MODIFY year INT NOT NULL;
ALTER TABLE olympics_info ADD CONSTRAINT unique_id UNIQUE (id);
ALTER TABLE olympics_info ADD CONSTRAINT unique_event UNIQUE (event_name);
ALTER TABLE olympics_info ADD CONSTRAINT check_countries CHECK (number_of_countries > 0);
ALTER TABLE olympics_info ADD CONSTRAINT check_athletes CHECK (total_athletes > 0);
ALTER TABLE olympics_info ADD CONSTRAINT check_medals CHECK (gold_medals >= 0 AND silver_medals >= 0 AND bronze_medals >= 0);

ALTER TABLE olympics_info ADD COLUMN world_record_holder VARCHAR(50);
ALTER TABLE olympics_info ADD COLUMN prize_money DECIMAL(10,2);
UPDATE olympics_info SET world_record_holder = 'Usain Bolt', prize_money = 500000 WHERE id = 1;

INSERT INTO olympics_info VALUES 
(1, '100m Sprint', 'Athletics', 'Tokyo', 2021, 205, 56, 1, 1, 1, 'Usain Bolt', 500000),
(2, '200m Freestyle', 'Swimming', 'Beijing', 2008, 198, 32, 1, 1, 1, 'Michael Phelps', 450000),
(3, 'Gymnastics All-Around', 'Gymnastics', 'London', 2012, 160, 24, 1, 1, 1, 'Simone Biles', 400000),
(4, 'Tour de France', 'Cycling', 'Paris', 2020, 150, 40, 1, 1, 1, 'Tadej Pogačar', 480000),
(5, 'Freestyle Wrestling', 'Wrestling', 'Rio', 2016, 140, 30, 1, 1, 1, 'Jordan Burroughs', 300000),
(6, '400m Hurdles', 'Athletics', 'Athens', 2004, 120, 20, 1, 1, 1, 'Kerron Clement', 320000),
(7, '1500m Freestyle', 'Swimming', 'Sydney', 2000, 110, 18, 1, 1, 1, 'Ian Thorpe', 270000),
(8, 'Pole Vault', 'Athletics', 'Barcelona', 1992, 140, 22, 1, 1, 1, 'Sergey Bubka', 260000),
(9, '10m Platform Diving', 'Swimming', 'Seoul', 1988, 115, 16, 1, 1, 1, 'Greg Louganis', 250000),
(10, 'Triathlon', 'Cycling', 'London', 2012, 180, 45, 1, 1, 1, 'Alistair Brownlee', 290000);

SELECT * FROM olympics_info;














