--Query 1: Output all titles, and year written by authors Orwell or Lee.
SELECT title, yearWritten
FROM book
WHERE lastn = ‘Orwell’ OR lastN = ‘Lee’;

--Query 2: Output all book codes, and rating dates where the eID is 201 or 208.
SELECT bookCode, ratingDate
FROM rating
WHERE eID = 201 OR eID = 208;

--Query 3: Output first name, last name, and affiliation from either the New York
--Times, or New York Post.
SELECT firstn, lastn, affiliation
FROM editor
WHERE affiliation = 'NYT' OR affiliation = 'NYP';

--Query 4: Output title, last name, and year written for all books written in 1925,
--and 1960.
SELECT lastn, yearWritten
FROM book
WHERE yearWritten = 1925 OR yearWritten = 1960;

--Query 5: Output the eID and rating date for all star ratings, who has a rating of
--2 or 5.
SELECT eID, ratingDate
FROM rating
WHERE starRating = 2 OR starRating = 5;