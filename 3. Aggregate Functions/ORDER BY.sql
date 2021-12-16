--Query 1: Output the number of titles by each author. Group by first and last name.
SELECT firstn, lastn, COUNT(title)
FROM book
GROUP BY firstn, lastn
ORDER BY COUNT(title) DESC;
Order by lastn

SELECT firstn, lastn, COUNT(title)
FROM book
GROUP BY firstn, lastn
ORDER BY lastn DESC;

--Query 2: Output the number of rating codes for each eID on file. Group by
--eID, order by code in descending order.
SELECT eid, COUNT(code)
FROM rating
GROUP BY eid
ORDER BY COUNT(code) DESC; 

--Query 3: Output the number of eID’s who belong to an affiliation. Do not
--include eID’s who do not have an affiliate. Group BY affiliation.
SELECT affiliation, COUNT(eid)
FROM editor
WHERE affiliation IS NOT NULL
GROUP BY (affiliation);

--Query 4: Output each book code, eID, and the total number of ratings left by
--each eID. Group by book code, eid, Order by book code.
SELECT bookcode, eid, COUNT(eid)
FROM rating
GROUP BY bookcode, eid
ORDER BY bookcode;

--Query 5: Output each book code, eID, and the total number of ratings left by
--an editor for each book code. Group by book code. No duplicates.
SELECT bookcode, COUNT(DISTINCT eid)
FROM rating
GROUP BY bookcode; 

--Query 6: Output star rating, and the total number of ratings left per book.
--Display only star ratings of 4 or higher. Group by star rating. Do not duplicate
--book codes.
SELECT starrating, COUNT(DISTINCT bookcode)
FROM rating
WHERE starrating >=4
GROUP BY starrating;