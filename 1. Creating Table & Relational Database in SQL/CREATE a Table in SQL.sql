CREATE TABLE Employees(
empID varchar2(15) NOT NULL,
firstN varchar2 (20) NOT NULL,
lastN varchar2 (20) NOT NULL,
title varchar2 (15) NOT NULL,
yearHired DATE NOT NULL,
CONSTRAINT Employees_pk PRIMARY KEY (empID));

INSERT INTO Employees(empID, firstN, lastN, title, yearHired)
VALUES ('emp1', 'Louis', 'Griffin', 'Manager', '13-NOV-15');

INSERT INTO Employees(empID, firstN, lastN, title, yearHired)
VALUES ('emp2', 'Peter', 'Griffin', 'Sales', '08-JAN-13');
