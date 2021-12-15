CREATE TABLE Rating (
code CHAR(4) NOT NULL, 
eID NUMERIC(3) NOT NULL, 
bookCode NUMERIC(3) NOT NULL, 
starRating NUMERIC(1) CHECK (starRating <=5) NOT NULL,
ratingDate DATE,
CONSTRAINT Rating_pk PRIMARY KEY (code),
CONSTRAINT Rating_eID_fk FOREIGN KEY(eID) REFERENCES Editor(eID), 
CONSTRAINT Rating_bookCode_fk FOREIGN KEY(bookCode) REFERENCES Book(bookCode));

INSERT INTO Rating values ('R1', 201, 101, 2, '13-NOV-92');

INSERT INTO Rating values ('R2', 201, 101, 4, '15-JAN-94');

INSERT INTO Rating values ('R3', 202, 106, 4, NULL);

INSERT INTO Rating values ('R4', 203, 103, 2, '01-FEB-98');

INSERT INTO Rating values ('R5', 203, 108, 4, '01-MAR-01');

INSERT INTO Rating values ('R6', 203, 108, 2, '30-JUN-05');

INSERT INTO Rating values ('R7', 204, 101, 3, '23-OCT-99');

INSERT INTO Rating values ('R8', 205, 103, 3, '16-FEB-04');

INSERT INTO Rating values ('R9', 205, 104, 2, '16-FEB-04');

INSERT INTO Rating values ('R10', 205, 108, 4, NULL);

INSERT INTO Rating values ('R11', 206, 107, 3, '02-JUL-99');

INSERT INTO Rating values ('R12', 206, 106, 5, '21-DEC-97');

INSERT INTO Rating values ('R13', 208, 104, 3, '30-JUN-05');

INSERT INTO Rating values ('R14', 209, 104, 3, '30-JUN-05');