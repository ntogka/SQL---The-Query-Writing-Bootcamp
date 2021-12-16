--Query 1: Output the title, author’s last name, price, and year written for editors
--whose affiliate are in NY. Order by published year.
SELECT DISTINCT book.title, book.lastn, book.price, book.yearWritten
FROM (book JOIN rating ON book.bookcode = rating.bookcode)
JOIN Editor ON editor.eid = rating.eid
WHERE editor.affiliation like 'NY%'
ORDER BY yearWritten;

--Query 2: Calculate the average book price for affiliates in NY.
SELECT AVG(book.price)
FROM (book JOIN rating ON book.bookcode = rating.bookcode)
JOIN Editor ON editor.eid = rating.eid
WHERE editor.affiliation LIKE 'NY%';

--Query 3: Output authors first and last name, and the rating date left
--by editors who do not have any affiliates.
SELECT DISTINCT book.firstn, book.lastn, ratingDate
FROM (book JOIN rating ON book.bookcode = rating.bookcode)
JOIN editor ON editor.eid = rating.eid
WHERE editor.affiliation IS NULL;

--Query 4: Output titles, without duplicates who were reviewed on or
--after March 1st, 2001.
SELECT DISTINCT (book.title)
FROM book JOIN rating ON rating.bookcode = book.bookcode
WHERE rating.ratingDate >= '01-MAR-01';