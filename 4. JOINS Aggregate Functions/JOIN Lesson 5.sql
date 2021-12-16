--Query 1: For all the books that has at least one review submitted, output the
--book title together with the average start rating for this book (computed over
--all the reviews submitted for this book).
SELECT book.title, AVG(rating.starRating)
FROM book JOIN rating ON book.bookCode = rating.bookCode
GROUP BY book.title;

--Query 2: For every affiliation output the average start rating over all the
--reviews submitted by all editors. Group all freelancers in one category.
SELECT editor.affiliation, AVG(rating.starRating)
FROM editor JOIN rating ON editor.eID = rating.eID
GROUP BY editor.affiliation;

--Query 3: For every editor in the database output the editor’s first and last
--names, and the number of reviews submitted by this editor.
SELECT editor.lastN, editor.firstN, COUNT(rating.starRating)
FROM editor LEFT JOIN rating ON editor.eID = rating.eID
GROUP BY (editor.lastN, editor.firstN);

--Query 4: For every author listed in the database, output the author's first and
--last names, and the number of reviews submitted for all the books written by
--this author.
SELECT book.lastN, book.firstN, COUNT(rating.starRating)
FROM book LEFT JOIN rating ON book.bookCode =rating.bookCode
GROUP BY (book.firstN, book.lastN); 

--Query 5: For all the books listed in the database, output the book's title and
--the highest rating given to this book. Keep in the output relation the books for
--which no reviews were submitted (null value).
SELECT book.title, MAX(rating.starRating)
FROM book LEFT JOIN rating ON bookCode = rating.bookCode
GROUP BY book.title;