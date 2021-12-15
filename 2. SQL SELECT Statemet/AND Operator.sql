--Query 1: Output the title, price, and year written for all books by Orwell.
SELECT title, price, yearwritten
FROM book
WHERE lastn = 'Orwell' AND firstn = 'George';

--Query 2: Output all books where the year written is after 1950 AND before
--2000.
SELECT titles
FROM Book
WHERE yearWritten > 1950 AND yearWritten <= 2000;

--Query 3: Output the title, year written and price of all books whose price is in
--the range of $100 and $300.
SELECT title, yearWritten, price
FROM Book
WHERE price >= 100 AND price <= 300;

--Query 4: Output the eID and affiliation of the editor who name is Linda Thompson.
SELECT eid, affiliation
FROM editor
WHERE firstN = 'Linda' AND lastN = 'Thompson';

--Query 5: Output the eID, bookCode, star rating and rating date where
--the rating date occurred during 2004 and 2005.
SELECT eID, bookCode, starrating, ratingDate
FROM rating
WHERE ratingDate > '01-Jan-04' AND ratingDate < '31-Dec-05';

--Query 6: Output the eID, bookCode, and rating date where the
--starRating is greater than 3 and the rating date is after 1999.
SELECT eID, bookCode, ratingDate
FROM rating
WHERE starRating > 3 AND ratingDate > '31-Dec-99';