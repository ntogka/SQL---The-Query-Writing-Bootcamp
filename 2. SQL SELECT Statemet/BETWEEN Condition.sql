--Query 1: Output the title and price of all books between $100 and $400.
SELECT title, price
FROM book
WHERE price BETWEEN 100 AND 400;

--Query 2: Output the title and year written for all books written during 1945
--and 2000.
SELECT title, yearWritten
FROM Book
WHERE yearWritten BETWEEN 1950 AND 2000;

--Query 3: Output all codes where star rating is in the range of 2 and 3.
SELECT code, starrating
FROM Rating
WHERE starrating BETWEEN 2 AND 3;

--Query 4: Output all codes, and star rating between 1994 and 1998 and has a
--star rating of 4 or higher.
SELECT code, starrating
FROM Rating
WHERE ratingdate BETWEEN '15-JAN-94' AND '01-FEB-98'
AND starRating >=4;

--Query 5: Output title, last name, and price for all books written during 1950
--and 1970, and is between the price range of $150 and $200.
SELECT title, lastn, price
FROM book
WHERE yearWritten BETWEEN 1950 AND 1970
AND price BETWEEN 150 AND 200;