-- Poshem Technologies MYSQL Assignment 1

-- Question 01:
-- Create a Database Schema named Mavenmovies - if you get an error, take a note of the error message you got then rename the new schema Mavenmovies_practice

-- Answer 01: 
-- CREATE SCHEMA mavenmovies; This will result in an error because we previously created this schema.
-- Error message: Apply changes to the object: The selected name conflicts with  existing schema 'mavenmovies'. 
-- Consequently, we are renaming our schema from 'mavenmovies' to 'mavenmovies_practice'.
-- For more reference, see Error1.png and Error2.png in the same folder.

-- CREATE SCHEMA mavenmovies_practice; 

-- Now, we will comment out every command to avoid similar errors in the future after running each statement once a time. 




-- Question 02:

-- Create a 4 different tables called  actor , city, country , customer 
-- Hint - Make a judgement call on what columns could be NULL or NOT NULL and what Data Types to use - MySQL Data Types (w3schools.com)

-- Actor table should have the following columns - Actor_Id, first_name, last_name ,gender 
-- City Table should have the following columns - city_id, city_name, state 
-- Country Table should have the following columns - country_id, country_name , capital 
-- Customer Table should have the following tables - customer_id, first_name, middle_name, last_name, email ,  active.

-- Answer 02: 

-- Selecting the schema where we want to create our table

use mavenmovies_practice;

# DDL: creating actor table
-- CREATE TABLE actor (
--     actor_ID INT NOT NULL,
--     first_name CHARACTER(25) NOT NULL,
--     last_name CHARACTER(25) NOT NULL,
--     gender CHARACTER(25) NULL,
--     PRIMARY KEY (actor_ID)
-- );

# DDL: creating city table
-- CREATE TABLE city (
--     City_ID INT NOT NULL,
--     city_name CHARACTER(25) NOT NULL,
--     State CHARACTER(25) NOT NULL,
--     PRIMARY KEY (City_ID)
-- );

-- DDL: creating country table
-- CREATE TABLE country (
--     Country_ID INT NOT NULL,
--     Country_name CHARACTER(25) NOT NULL,
--     Capital CHARACTER(25) NOT NULL,
--     PRIMARY KEY (Country_ID)
-- );

-- DDL: creating customer table

-- CREATE TABLE customer (
--     customer_id INT NOT NULL,
--     first_name CHARACTER(25) NOT NULL,
--     middle_name CHARACTER(25) NOT NULL,
--     last_name CHARACTER(25) NOT NULL,
--     email VARCHAR(25) NOT NULL,
--     active CHARACTER(25) NULL,
--     PRIMARY KEY (customer_id)
-- );





-- Question 03:

-- 3 new ACTORS got hired and their information is as follows:
-- Actor 1-  First name - Wale, Last Name - Foluke , Gender - Female( hint- give them an ID ).
-- Actor 2- First name - Christy , Last Name - Amaha, Gender- Female .
-- Actor 3- First name - Richard,  Last Name , Alexander, Gender Female 
-- Ensure their information goes into the appropriate table in the newly created SCHEMA/Database - Hint- INSERT   

-- Answer 03: 

-- INSERT INTO mavenmovies_practice.actor (actor_ID, first_name, last_name, gender)

-- VALUES
-- (1, 'Wale', 'Foluke', 'Female'),
-- (2, 'Christy', 'Amaha', 'Female'),
-- (3, 'Richard', 'Alexander', 'Female');

-- SELECT 
--     *
-- FROM
--     mavenmovies_practice.actor;





-- Question 04:
-- In the Mavenmovies_practice SCHEMA, show us a list of all Actors whose last name is AMAHA - ( fix all issues and save your script)

-- Answer 04: 
-- SELECT 
--     *
-- FROM
--     mavenmovies_practice.actor
-- WHERE
--     last_name = 'Amaha';





-- Question 05:
-- In the country Name , insert the following Country Information( hint, give them all an ID) 
-- Country name - Nigeria, Capital Lagos 
-- Country name - USA  , capital Washington DC
-- Country name - Pakistan, capital Islamabad 
-- Country name -  Australia , capital Canberra
-- Country name - Scotland , capital Lagos 

-- Answer 05: 

-- INSERT INTO mavenmovies_practice.country(Country_ID, Country_name, Capital)
-- VALUES
-- (1, 'Nigeria', 'Lagos'),
-- (2, 'USA', 'Washington DC'),
-- (3, 'Pakistan', 'Islamabad'),
-- (4, 'Australia', 'Canberra'),
-- (5, 'Scotland', 'Lagos');

-- SELECT 
--     *
-- FROM
--     mavenmovies_practice.country;





-- Question 06:
-- Show us all countries whose capital is LAGOS .

-- Answer 06: 

-- SELECT 
--     *
-- FROM
--     mavenmovies_practice.country
-- WHERE
--     Capital = 'Lagos';





-- Question 07:

-- Write a script to change the capital of Nigeria from Lagos to Abuja ( hint use a DML and be as specific as possible so you do not make mistakes) 

-- Answer 07:

UPDATE mavenmovies_practice.country -- From where to change
SET 
    Capital = 'Abuja' -- Value to be changed
WHERE
    Country_name = 'Nigeria' and Country_ID = 1; -- The reason behind using 'Country_ID' is to uniquely identify the row we want to change.

SELECT 
    *
FROM
    mavenmovies_practice.country;





-- Question 08:

-- SHOW US the first and last name of all actors whose last name happens to be FOLUKE

-- Answer 08:

-- We can perform this operation by using a simple 'where' clause or a 'like' clause.

-- By using a simple 'where' clause:
SELECT 
    first_name, last_name
FROM
    mavenmovies_practice.actor
WHERE
    last_name = 'Foluke';

-- By using a 'like' clause (For fun):
SELECT 
    first_name, last_name
FROM
    mavenmovies_practice.actor
WHERE
    last_name LIKE 'Foluke%';





-- Question 09:

-- Richard observed an error that his gender was accidentally entered as Female instead of male.
-- write a script to UPDATE this info( we did not cover this yet but research this on W3 schools ) 

-- Answer 09:

UPDATE mavenmovies_practice.actor -- From where to change
SET 
    gender = 'Male' -- Value to be changed
WHERE
    first_name = 'Richard' and actor_ID = 3; -- The reason behind using 'actor_ID' is to uniquely identify the row we want to change.

SELECT 
    *
FROM
    mavenmovies_practice.actor;
    
    
    
    
    
-- Question 10:

-- Research DDL ( Data Definition Language) and give a 1 line summary of 3 DDL commands in MYSQL 

-- Answer 10:

-- DDL (Data Definition Language) commands in MySQL are used to define, modify, and manage database structures. Here are three DDL commands in MySQL:

-- 1. CREATE TABLE: Used to create a new table in the database with specified columns and constraints.
-- 2. ALTER TABLE: Allows modification of an existing table by adding, deleting, or modifying columns and constraints.
-- 3. DROP TABLE: Deletes a table from the database along with all its data and structure.

-- For more information, please visit ChatGPT.

-- Thankyou for your time.