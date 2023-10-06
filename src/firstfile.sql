CREATE TABLE  people (
                         id serial primary key ,first_name varchar,last_name varchar,age numeric ,gender varchar ,address varchar, phone_number varchar , email varchar unique, occupation varchar, nationality varchar, education varchar, languages varchar, isMarried boolean, hasChildren boolean, height numeric, weight numeric );
INSERT INTO people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, isMarried, hasChildren, height, weight)
VALUES
    (1, 'Helga', 'Uccello', 38, 'Female', '56125 2nd Lane', '395-729-3187', 'huccello0@prnewswire.com', 'Clinical Specialist', 'American Indian and Alaska Native (AIAN)', 'Monash University', 'Portuguese', false, false, 38, 51),
    (2, 'Carleen', 'Licciardo', 52, 'Female', '5 Stuart Circle', '706-818-2258', 'clicciardo1@dmoz.org', 'Chief Design Engineer', 'Iroquois', 'Daiichi College of Pharmaceutical Sciences', 'Tsonga', false, true, 52, 60),
    (3, 'Elli', 'Tolcher', 22, 'Agender', '532 Bonner Center', '210-723-4605', 'etolcher2@indiatimes.com', 'Sales Representative', 'Paiute', 'Asia University', 'Hiri Motu', true, true, 22, 33),
    (4, 'Neda', 'Lifton', 73, 'Female', '48858 Vidon Hill', '921-552-4600', 'nlifton3@ucsd.edu', 'Assistant Media Planner', 'Tlingit-Haida', 'Khana-e-Noor Institute of Higher Education', 'Tsonga', false, true, 73, 71),
    (5, 'Lisle', 'Culkin', 29, 'Male', '867 Roxbury Parkway', '735-558-8464', 'lculkin4@shutterfly.com', 'Editor', 'Black or African American', 'Universite Paul Sabatier (Toulouse III)', 'Swedish', false, false, 29, 25),
    (6, 'Ida', 'McCrisken', 53, 'Female', '3 Del Sol Point', '531-613-7533', 'imccrisken5@bloglines.com', 'Structural Engineer', 'Costa Rican', 'Facultes Universitaires Catholiques de Mons', 'Swati', false, false, 53, 23),
    (7, 'Sherman', 'Ellaman', 18, 'Male', '1 Mandrake Point', '887-850-1716', 'sellaman6@china.com.cn', 'Web Developer III', 'Spaniard', 'Donghua University, Shanghai', 'Oriya', true, true, 180, 83),
    (8, 'Aubrie', 'Ubsdell', 12, 'Female', '35929 Bellgrove Circle', '257-318-3050', 'aubsdell7@salon.com', 'Programmer Analyst III', 'Menominee', 'Aksum University', 'Tsonga', false, false, 12, 1),
    (9, 'Eleonora', 'McMenamin', 12, 'Female', '4 Anniversary Place', '713-205-6601', 'emcmenamin8@mac.com', 'Dental Hygienist', 'Tlingit-Haida', 'University of Guyana', 'Latvian', true, true, 12, 81),
    (10, 'Haydon', 'Menichi', 63, 'Male', '45558 Moose Street', '574-192-1625', 'hmenichi9@cdc.gov', 'Software Engineer III', 'Laotian', 'Shaheed Zulifkar Ali Bhutto Institute of Science and Technology', 'Chinese', true, false, 63, 10),
    (11, 'Sella', 'Revett', 29, 'Female', '75 Nova Hill', '575-253-9714', 'srevetta@oakley.com', 'Health Coach IV', 'Guamanian', 'University of Guelph', 'Tsonga', true, false, 29, 69),
    (12, 'Marylynne', 'Mauchline', 74, 'Genderqueer', '2 Donald Place', '685-118-7840', 'mmauchlineb@opensource.org', 'Financial Advisor', 'Pakistani', 'Islamic Azad University, Shirvan', 'Malayalam', false, true, 74, 96),
    (13, 'Woodman', 'Attow', 40, 'Male', '7 Homewood Avenue', '411-823-0651', 'wattowc@nbc.com', 'Financial Analyst', 'Fijian', 'Beijing Institute of Technology', 'Pashto', false, false, 40, 85),
    (14, 'Becka', 'Lucian', 42, 'Female', '115 Crowley Pass', '608-625-4824', 'bluciand@nhs.uk', 'Senior Financial Analyst', 'Puget Sound Salish', 'California State University, Stanislaus', 'French', true, true, 42, 32),
    (15, 'Aurelia', 'Jaggs', 66, 'Female', '51 High Crossing Avenue', '595-623-8712', 'ajaggse@imageshack.us', 'Accounting Assistant IV', 'Paiute', 'Universidad Distral "Francisco Jose de Caldas"', 'Bosnian', false, true, 66, 18),
    (16, 'Jacky', 'Seckington', 31, 'Male', '659 Mcbride Plaza', '402-896-4848', 'jseckingtonf@yolasite.com', 'Senior Financial Analyst', 'Cambodian', 'Tezukayama Gakuin University', 'Macedonian', false, true, 31, 15);


UPDATE people set address = 'Гражданская 119' WHERE id = 4;
UPDATE people set occupation = 'programmer', email = 'email@gmail.com' WHERE id = 4;
DELETE FROM people WHERE id = 1;
SELECT id FROM people;
SELECT * from people where nationality = 'Chinese';
SELECT * FROM people WHERE occupation = 'Engineer' AND age BETWEEN 25 AND 35;
SELECT * FROM people where isMarried = true and hasChildren = true;
SELECT * from people where height < 170;
SELECT * from people where gender = 'male' and weight < 75;
SELECT * FROM people WHERE age = (SELECT AVG(age) FROM people);
SELECT occupation, COUNT(*) as count FROM people GROUP BY occupation;
SELECT * FROM people ORDER BY age ASC LIMIT 1;
SELECT * FROM people WHERE email LIKE '%gmail.com%';
SELECT * from people order by height asc;
SELECT COUNT(*) FROM people WHERE address LIKE '%Albanian%';
select * from (SELECT * FROM people WHERE phone_number LIKE '555%' AND email LIKE '%.com') "p*";
SELECT * from people where occupation = null;
SELECT * from people where isMarried = false;
SELECT * from people where education like 'master';
SELECT * from people where height between 160 and 170;
SELECT * from people where languages like 'chinese' and 'english';
SELECT * from people where  isMarried = false and hasChildren = true;
SELECT * from people where weight < 80 or isMarried = true;
SELECT * from people order by age asc, height desc;
SELECT DISTINCT first_name FROM people;
SELECT * FROM people WHERE nationality IN ('USA', 'Canada');
SELECT first_name, last_name, address FROM people WHERE address LIKE '%199';
SELECT first_name, gender, phone_number FROM people WHERE CAST(phone_number AS VARCHAR) LIKE '%50' OR CAST(phone_number AS VARCHAR) LIKE '%60' OR CAST(phone_number AS VARCHAR) LIKE '%70';
UPDATE people set occupation = 'developer' where isMarried = false;
UPDATE people set occupation = 'teacher', email = 'new@gmail.com' where id = 1;
UPDATE people set weight = weight + 5 where hasChildren = true;
DELETE from people where occupation = 'teacher';
DELETE from people where age > 20;
DELETE FROM people WHERE address IS NULL OR address = '';
SELECT * from people order by height desc limit 3;
SELECT * from people where isMarried = true order by weight desc;
SELECT AVG(age) AS average_age FROM people WHERE isMarried = true;
SELECT SUM(weight) AS total_weight FROM people WHERE occupation = 'developer';
SELECT * from people where email not like 'gmail.com';
SELECT * from people where age = 40 and occupation = 'developer';
SELECT distinct nationality from people;

