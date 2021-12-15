ALTER TABLE Employees
ADD Loc varchar2 (10);

UPDATE Employees
SET Loc = 'NY';
--Updated all

UPDATE Employees
SET Loc = 'LA'
WHERE empID = 'emp1';
--Updated one row

DELETE FROM Employees
WHERE empID = 'emp3';