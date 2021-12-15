CREATE TABLE Editor (
eID NUMERIC(3) NOT NULL, 
firstN VARCHAR2(25) NOT NULL, 
lastN VARCHAR2(30) NOT NULL, 
affiliation VARCHAR2(25), 
CONSTRAINT Editor_pk PRIMARY KEY (eID));

INSERT INTO Editor values (201, 'Jack', 'Collins', 'NYT');

INSERT INTO Editor values (202, 'Anna', 'Matthews', 'WP');

INSERT INTO Editor values (203, 'Tim', 'Stevens', 'Vogue');

INSERT INTO Editor values (204, 'Barry', 'Shaw', null);

INSERT INTO Editor values (205, 'Chris', 'Richards', 'NYT');

INSERT INTO Editor values (206, 'Linda', 'Thompson', 'Chronicle');

INSERT INTO Editor values (207, 'Joe', 'Anderson', 'NYP');

INSERT INTO Editor values (208, 'Harry', 'Freeman', 'NYT');

INSERT INTO Editor values (209, 'Ellen', 'Murray', null);

INSERT INTO Editor values (210, 'Nancy', 'Thompson', 'NYP');