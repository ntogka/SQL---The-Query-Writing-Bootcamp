--Query 1: Output the title, average price, and year written of all books written
--between 1950 and 1960.
select avg(price)
from book
where yearWritten between 1950 and 1960;

--Query 2: Output the average starRating, for 1998 and 1999.
select avg(starRating)
from rating
where ratingDate between '01-JAN-98' AND '31-DEC-99';

--Query 3: Output the number of titles in the book table.
Select count(title)
From book;

--Query 4: Output the number of eID in the editor table.
Select count(eid)
From editor; 

--Query 5: Output the number of affiliates.
select count(affiliation)
from editor;
select count( distinct affiliation)
from editor;

--Query 6: Output the max price of book from our library.
select max(price)
from book;

--Query 7: Output the min price of book from our library.
select min(price)
from book;

--Query 8: Output the total price for the following book codes: 107, 108, 109, 110.
select sum(price)
from book
where bookCode in (110, 109, 108, 107); 

--Query 9: Output the average price of all star ratings after 1999.
select avg(starRating)
from rating
where ratingDate > '31-DEC-99';

--Query 10: Output the number of star ratings on record.
select count(starRating)
from rating;

--Query 11: Output the number of authors.
select count( distinct lastn)
from book;

--Query 12: Output the highest star rating received in 2004.
select max(starRating)
from rating
where ratingDate between '01-JAN-04' and '31-DEC-04'; 

--Query 13: Output the lowest price of a book written in 1925.
select min(price)
from book
where yearWritten = 1925;

--Query 14: Output the total price of all books by Ernest Hemingway
select sum(price)
from book
where lastn = 'Hemingway';