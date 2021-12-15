CREATE TABLE Book (
bookCode NUMERIC(3) NOT NULL, 
title VARCHAR2(30) NOT NULL, 
firstN VARCHAR2(25) NOT NULL, 
lastN VARCHAR2(30) NOT NULL, 
yearWritten SMALLINT NOT NULL CHECK (yearWritten >= 1000 and yearWritten <=2021),
price NUMERIC(5,2) NOT NULL, 
CONSTRAINT Book_pk PRIMARY KEY (bookCode));

INSERT INTO Book values(101, 'To Kill A Mocking Bird', 'Harper', 'Lee', 1960, 64.00);

INSERT INTO Book values(102, 'The Great Gatsby', 'Scott', 'Fitzgerald', 1925, 74.55);

INSERT INTO Book values(103, 'A Passage To India', 'E.M.', 'Foster', 1924, 230);

INSERT INTO Book values(104, 'Invisible Man', 'Ralph', 'Elison', 1952, 136.89);

INSERT INTO Book values(105, 'Mrs. Dalloway', 'Virginia', 'Wolf', 1925, 135);

INSERT INTO Book values(106, 'Things Fall Apart', 'Chinua', 'Achebe', 1958, 150.65);

INSERT INTO Book values(107, '1984', 'George', 'Orwell', 1945, 78);

INSERT INTO Book values(108, 'The Time Machine', 'H.G.', 'Wells', 1895, 467);

INSERT INTO Book values(109, 'The Old Man and The Sea', 'Ernest', 'Hemingway', 1952, 199.45);

INSERT INTO Book values(110, 'A Farewell To Arms', 'Ernest', 'Hemingway', 1928, 160.5);