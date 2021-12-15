--Query 1: Output all titles where year written is after 1950.
Select title
From book
Where yearWritten > 1950;

--Query 2: Output all titles who’s price is more than $200.
select title
from book
where (price) > 200;
select title
from book
where price > 200;

--Query 3: Output all titles and year written, except for the books written in
1925.
select title, yearwritten
from book
where yearWritten != '1925';
select title, yearwritten
from book
where yearWritten <> '1925';

--Query 4: Output last name, title and price of all books under $200.
SELECT  lastn, title, price
FROM book
WHERE (price) < 200;

--Query 5: Output the title, last name, and year written for all books except for
those by Hemingway.
SELECT title, lastn, yearWritten
FROM book
WHERE lastn != 'Hemingway';