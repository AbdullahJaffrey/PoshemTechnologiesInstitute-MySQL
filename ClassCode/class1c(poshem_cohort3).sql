-- USE poshem_cohort3; -- this ensures that your code is executed in this DB

-- /* Create the tables */

-- CREATE TABLE Department (

--   departmentID varchar(50) NOT NULL,

--   DepartmentDescription varchar(4000) DEFAULT NULL,

--   Departmentfloor numeric(5) NOT NULL,

--   DepartmentName varchar(50) NULL,

--   PRIMARY KEY (Departmentid)

-- );


USE Poshem_cohort3; -- this ensures that yout code is executured in this DB

/* Create the tables */

CREATE TABLE AccountingOperation

 (

  TellerID varchar(400)  NOT NULL,

  Salary numeric(5) NOT NULL,

 Shiftstarttime datetime(5) NULL,

  PRIMARY KEY (TellerId)

);