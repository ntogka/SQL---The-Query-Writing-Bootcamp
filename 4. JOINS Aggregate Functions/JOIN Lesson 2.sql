--Query 1: Output the last name, and order by rating date for editor with an eID
--of 203.
SELECT editor.lastn, rating.ratingDate
FROM Editor JOIN rating ON rating.eID = editor.eID
WHERE rating.eid = 203
ORDER BY ratingDate;

--Query 2: Output titles, rating date, and star ratings. Order by rating date.
SELECT book.title, ratingDate, starRating
FROM book JOIN rating ON rating.bookCode = book.bookCode
ORDER BY ratingDate;