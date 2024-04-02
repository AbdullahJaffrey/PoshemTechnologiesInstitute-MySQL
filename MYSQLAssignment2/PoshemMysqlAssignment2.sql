-- Poshem Technologies MYSQL Assignment 2

-- Question 01:

-- Delete the Advisor whose last name is Smartypants - Hint use the advisor table and a WHERE CLAUSE (validate result with a SELECT QUERY AFTER COMPLETION).

-- Answer 01: 

use mavenmovies;

DELETE FROM advisor 
WHERE
    advisor_id = 2
    AND last_name = 'Smartypants';
SELECT 
    *
FROM
    advisor;





-- Question 02:

-- Find all advisors whose first name end in Y ( Hint use Advisor table, WHERE CLAUSE and a wildcard)

-- Answer 02: 

SELECT 
    *
FROM
    advisor
WHERE
    first_name LIKE '%y';





-- Question 03:

-- Change the name of the Actors table to Actors_info - HINT USE DDL 

-- Answer 03: 

-- ALTER TABLE actor RENAME TO actors_info;
-- SELECT 
--     *
-- FROM
--     actors_info

-- We want our table name to be 'actor' again from actors_info.

-- ALTER TABLE actors_info RENAME TO actor;
-- SELECT 
--     *
-- FROM
--     actor





-- Question 04:

-- Find all films that has behind the scene special feature- Hint use Films table 

-- Answer 04: 

SELECT 
    *
FROM
    film
WHERE
    special_features LIKE '%Behind%';





-- Question 05:

-- Show us all customers whose email has S somewhere in their email and their first_name ends with ‘een’

-- Answer 05: 


select * from customer
 where email like '%S%' and first_name like '%een';





-- Question 06:

--  Show us all films that have the word Astounding somewhere in their description and replacement_cost is greater than 9.99. HINT - USE 2 filtering conditions 


-- Answer 06: 

use mavenmovies;

SELECT 
    *
FROM
    film
WHERE
    description LIKE '%Astounding%'
        AND replacement_cost > 9.99;





-- Question 07:

-- Research 2 differences between GROUP BY AND ORDER BY ( one sentence each).

-- Answer 07: 

-- GROUP BY:

-- Definition:
-- It is used to group rows that have the same values into summary rows.

-- Syntax:
-- GROUP BY column_name(s)

-- ORDER BY:

-- Definition:
-- Sorts the result set based on specified columns or expressions

-- Syntax:
-- ORDER BY column_name(s)

-- Note:
-- "s" is used in parentheses to denote that the keyword "column_name" can be singular or plural. GROUP BY and ORDER BY are both part of Data Query Language (DQL).





-- Question 08:

-- Research when you use WHERE CLAUSE vs HAVING ( One sentence each)

-- Answer 08: 

-- WHERE:

-- Definition:
-- The WHERE clause is used to filter rows based on specific conditions. The WHERE clause is part of Data Manipulation Language (DML)

-- Syntax:
-- SELECT * FROM employees
-- WHERE department = 'Sales';

-- HAVING:

-- Definition:
-- The HAVING clause is used to filter groups after the grouping process has occurred. The HAVING clause is part of Data Query Language (DQL).

-- Syntax:
-- SELECT department, COUNT(*) AS employee_count
-- FROM employees
-- GROUP BY department
-- HAVING COUNT(*) > 10;





-- Question 09:

-- Research the difference between truncate and delete in SQL (one sentence)

-- Answer 09: 

-- TRUNCATE:

-- Definition:
-- TRUNCATE is like a nuclear bomb for a table. It's a DDL operation, so it quickly wipes out all the rows from a table, leaving the table structure intact. It's like pressing the big red button labeled "Delete All".

-- Syntax:
-- TRUNCATE TABLE employees;

-- DELETE:

-- Definition:
-- DELETE is more surgical; it's a DML operation. It lets you target specific rows based on conditions, and each row is removed individually, which means it's slower and can be logged. It's like meticulously removing specific pieces from a puzzle, one at a time.

-- Syntax:
-- DELETE FROM employees WHERE department = 'HR';

-- For more information, please visit ChatGPT.

-- Thankyou for your time.