-- Questions
--
-- You can write as many queries as required to get the answers to the following questions. You do not need to solve this in one query.

-- Were there more male or female voters in Greensboro?
SELECT * FROM cities WHERE name = 'Greensboro';
SELECT count(id) FROM votes WHERE gender = 'female' AND "cityId" = 68;
SELECT count(id) FROM votes WHERE gender = 'male' AND "cityId" = 68;

-- What is the average age of voters in Orlando?
SELECT * FROM cities WHERE name = 'Orlando';
SELECT AVG(age) FROM votes WHERE "cityId" = 77;

-- Which state has the most cities listed?
SELECT count(id), "stateId" FROM cities  GROUP BY  "stateId" ORDER BY count(id) DESC;
SELECT * FROM states WHERE id = 3;

-- Which state had the most votes placed?
SELECT count("cityId"), "stateId" FROM votes JOIN cities ON cities.id = votes."cityId" GROUP BY  "stateId" ORDER BY count("cityId") DESC;
SELECT * FROM states WHERE id = 3;

-- What percentage of cities passed the minimum wage issue (> 50% of votes)?
voterdb=# SELECT count(*) from (SELECT count(id), "cityId" FROM votes WHERE "issueId" = 2 AND in_favor = 'f' GROUP BY "cityId" HAVING count(id) > 100) AS pants;




-- How many of the issues were approved in each of the following cities? An issue is 'approved' if it got more than 50% of the votes.
-- Dallas
Select * from cities where name = 'Dallas';
select count(id), "issueId" from votes where "cityId" = 8 and in_favor = true Group by "issueId";

-- Atlanta
Select * from cities where name = 'Atlanta';
select count(id), "issueId" from votes where "cityId" = 40 and in_favor = true Group by "issueId";

-- Anaheim
Select * from cities where name = 'Anaheim';
 select count(id), "issueId" from votes where "cityId" = 56 and in_favor = true Group by "issueId";

-- Boston
Select * from cities where name = 'Boston';
select count(id), "issueId" from votes where "cityId" = 24 and in_favor = true Group by "issueId";

-- Hard mode
--
-- Do you see any signs of election fraud (the same person voting for the same issue more than once)?
--
select * from votes where jumbled_user_id = 'g2qwi' and "issueId" = 2;
