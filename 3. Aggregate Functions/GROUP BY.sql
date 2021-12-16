--Query 1: Output the number of eID’s per affiliation. Group by affiliation.
SELECT COUNT(eid), affiliation
FROM editor
GROUP BY (affiliation);

--Query 2: Output the number of eID’s where affiliation is either NYT or NYP.
--Group by affiliation.
SELECT COUNT(eid), affiliation
FROM editor
WHERE affiliation LIKE 'NY%'
GROUP BY (affiliation);

--Query 3: Output the number of ratings left by each eID. Group and Order by eID.
SELECT eid, COUNT(bookcode)
FROM rating
GROUP BY (eid)
ORDER BY COUNT(bookcode) DESC;

--Query 4: Output the number of ratings left by each eID having a count of 2 or
--more. Group and Order by eID in descending order.
select eid, count(bookcode)
from rating
group by (eid)
having count(bookcode) > 2
order by count (bookcode);

--Query 5: Output the number of ratings left by the following eID’s: 201, 204
--and 205. Group by eID.
select eid, count(bookcode)
from rating
where eid = 201 or eid = 204 or eid = 205
group by eid;

select eid, count(bookcode)
from rating
where eid in ( 201 , 204 , 205)
group by eid;

--Query 6: For your results in Query 2, ORDER BY eID in descending order.
select eid, count(bookcode)
from rating
where eid in ( 201 , 204 , 205)
group by eid
order by count(bookcode) desc;