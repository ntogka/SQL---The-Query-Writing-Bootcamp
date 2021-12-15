--Query 1: Output the title and last name of all books where the last name
--begins with ‘W’.
SELECT title, lastn
FROM book
WHERE lastn LIKE 'W%';

--Query 2: Output the title and last name of all books where the title contains 198.
SELECT title
FROM book
WHERE title LIKE'198%';

--Query 3: Output editor last name with ‘a’ as the second value of the last name.
SELECT lastN
FROM editor
WHERE lastN LIKE ‘_a%’;

--Query 4: Output the title, last name and price of books written by authors
--whose last name begins with F and ends with d.
SELECT title, lastn, price
FROM book
WHERE lastN LIKE 'F%d';

--Query 5: Output first name, last name of authors whose last name contains the
--letter ‘s’ as the fourth value.
Select title, lastn
From book
Where lastn like ‘____s%’;

--Query 6: Output first name, last name and title of all books that contains the
--word ‘man’
SELECT firstn, lastn, title
From book
Where title like ‘%Man%’;

--Query 7: Output first name, last name and affiliation of all editors whose last
--name end with ‘y’
Select firstn, lastn, affiliation
From editor
Where lastn LIKE ‘%y’;