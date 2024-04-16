-- CREATE DATABASE Bank_Info;

USE Bank_Info;

-- CREATE TABLE Customer_Info (
--     CustomerId INT NOT NULL,
--     FirstName CHARACTER(25) NOT NULL,
--     MiddleName CHARACTER(25) NOT NULL,
--     LastName CHARACTER(25) NOT NULL,
--     DOB DATETIME(6) NULL,
--     PRIMARY KEY( CustomerId)
-- );

SELECT 
    *
FROM
    Customer_Info;
    
INSERT INTO bank_info.customer_info

(`customerID`,

`FirstName`,

`MiddleName`,

`LastName`,

`DOB`)

VALUES

('001',

'Ikenna',

'Jaffri',

'Olamide',

'2024-03-22 00:00:00');

INSERT INTO bank_info.customer_info

(`customerID`,

`FirstName`,

`MiddleName`,

`LastName`,

`DOB`)

VALUES

('007', 'Gina', ' ','Moses', '2029-03-22 00:00:00'),

('009', 'Daivd', 'M','Zibiri', '2029-04-22 00:00:00'),

('003', 'Taiwo', '0 ','Richard', '2029-03-22 00:00:00'),

('004', 'Genesis', 'D ','Chris', '2029-03-22 00:00:00'),

('005', 'Allen', 'J ','Jackson', '2029-03-22 00:00:00');
    
    
-- select * from bank_info.customer_info where FirstName = 'Gina'

SELECT DISTINCT
    FirstName
FROM
    bank_info.customer_info;

-- INSERT INTO bank_info.customer_info

SELECT 
    *
FROM
    bank_info.customer_info
WHERE
    FistName = 'Noah';

