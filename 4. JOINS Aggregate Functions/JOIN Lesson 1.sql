--Query 1: Output titles reviewed by editors of 201, 203 and 204.
SELECT DISTINCT book.title
FROM rating JOIN book ON book.bookCode = rating.bookCode
WHERE rating.eID in (201, 203, 204);

--Query 2: Output titles, rating date, and editors ID for reviews left by editors
--before 2000.
SELECT book.title, ratingDate, eid
FROM rating JOIN book ON book.bookCode = rating.bookCode
WHERE ratingDate < '01-Jan-00';

--Query 3: Output book codes, titles, rating dates, and editor ID for any star
--rating greater than 3. Order by rating date.
SELECT book.bookCode, book.title, ratingDate, starRating, eID
FROM rating JOIN book ON book.bookCode = rating.bookCode
WHERE starRating > 3
ORDER BY ratingDate;