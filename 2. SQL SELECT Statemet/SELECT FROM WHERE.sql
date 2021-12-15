--Query 1: Output last name of all authors
SELECT lastn
FROM book;

--Query 2: Output the title of all books
SELECT title
FROM book;

--Query 3: Output the last name of author where the title is ‘The Old man and The Sea’.
SELECT title
FROM book
WHERE title = ‘The Old Man and The Sea’;

--Query 4: Output the title and date published of all books.
SELECT title, yearWritten
FROM book;

--Query 5: Output the title and date published of all books where author is Ernest
Hemingway.
SELECT title, yearWritten
FROM book
WHERE lastn = ‘Hemingway’;

--Query 6: Output all titles written in 1925.
SELECT title
FROM book
WHERE yearWritten = ‘1925’;

--Query 7: Output all titles written by Lee.
SELECT title
FROM book
WHERE lastn = ‘Lee’;