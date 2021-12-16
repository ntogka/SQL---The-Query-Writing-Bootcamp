--Query 1: Output the title of each book and the total number of star Rating.
--Group by Title.
SELECT title, COUNT(rating.starRating)
FROM book INNER JOIN rating ON rating.bookcode = book.bookcode
GROUP BY title;

--Query 2: How many distinct books were reviewed by NYC editors?
SELECT COUNT(DISTINCT rating.bookCode)
FROM rating JOIN editor ON editor.eid = rating.eid
WHERE editor.affiliation = 'NYT';

--Query 3: Output the affiliation name, and the number of ratings they left per
--book. Display the results with affiliation first and then the number of ratings in
--ascending order.
SELECT editor.affiliation, COUNT(rating.bookCode)
FROM editor JOIN Rating ON editor.eid = rating.eid
GROUP BY editor.affiliation
ORDER BY COUNT(rating.bookcode) ASC; 

--Query 4: Output the affiliation name, and the number of ratings they left per
--book. Display results with affiliation and number rating > 2.
SELECT editor.affiliation, COUNT(rating.bookCode)
FROM editor JOIN Rating ON editor.eid = rating.eid
GROUP BY editor.affiliation
HAVING COUNT(rating.bookcode)>2;