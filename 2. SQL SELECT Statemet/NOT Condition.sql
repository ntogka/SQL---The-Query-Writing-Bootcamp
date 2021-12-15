--Query 1: Output the first name, last name,  title, and price of all books written
--by Virginia Wolf, Ernest Hemingway, and E.M. Foster .
select firstn, lastn, title, price
from book
where lastn in ( 'Wolf', 'Hemingway', 'Foster');

--Query 2: Output the first and last name of all editor who do not have an
--affiliation with the New York Times or The New York Post.
Select firstn, lastn
From editor
Where affiliation not in ('NYT', 'NYP');

--Or

Select firstn, lastn
From Reviewer
Where affiliation != ‘NYP’ and affiliation !=’NYT’;

--Query 3: Output all editors first and last names who is not at affiliate at the
--NYT, NYP or does not currently have an affiliation.
Select firstn, lastn
From Reviewer
Where affiliation not in (‘NYP’, ‘NYT’) or affiliation is null;

--Or

Select firstn, lastn
From Reviewer
Where affiliation != 'NYP' and affiliation != 'NYT' or affiliation is null;

--Query 4: Output all eID, star rating, and rating date for all editor’s, except for
--those editors with an eID of 201, 203, and 205.
Select eID, starRating, ratingDate
From rating
Where eID not in (201, 203, 205);

--Query 2: Output the title, last name, and year written for the following
--bookcodes: 106, 107, 108.
select title, lastn, yearWritten
from book
where bookcode in (106, 107, 108);