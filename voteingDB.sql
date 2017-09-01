-- VOTES
--  id | jumbled_user_id | in_favor | gender | age |         createdAt          |         updatedAt          | issueId | cityId
-- ----+-----------------+----------+--------+-----+----------------------------+----------------------------+---------+--------
--  27 | psy37v          | f        | male   |  16 | 2017-08-31 10:53:44.859-04 | 2017-08-31 10:53:44.916-04 |       4 |      5
--
-- CITIES
--  id |  name   |         createdAt         |         updatedAt          | stateId
-- ----+---------+---------------------------+----------------------------+---------
--   5 | Phoenix | 2017-08-31 10:53:40.46-04 | 2017-08-31 10:53:42.194-04 |       6
--
-- ISSUES
--  id |            description            |         createdAt          |         updatedAt
-- ----+-----------------------------------+----------------------------+----------------------------
--   1 | All parents receive Friday's off. | 2017-08-31 10:53:39.883-04 | 2017-08-31 10:53:39.883-04
--
-- STATES
--  id |   name   |         createdAt          |         updatedAt
-- ----+----------+----------------------------+----------------------------
--   1 | New York | 2017-08-31 10:53:39.914-04 | 2017-08-31 10:53:39.914-04

--   Which state had the most votes placed?
--   What percentage of cities passed the minimum wage issue (> 50% of votes)?
--   How many of the issues were approved in each of the following cities? An issue is 'approved' if it got more than 50% of the votes.
-- Dallas
-- Atlanta
-- Anaheim
-- Boston

-- Hard mode
-- Do you see any signs of election fraud (the same person voting for the same issue more than once)?

--   Were there more male or female voters in Greensboro?
Female (404) Male (396)
--   What is the average age of voters in Orlando?
 51.4562500000000000
--   Which state has the most cities listed?
California
SELECT title, domestic_sales, international_sales
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

SELECT count(votes.id), "cityId", "stateId"
FROM votes
JOIN cities
ON cities.id = votes."cityId"
GROUP BY "cityId"
GROUP BY "stareId";
