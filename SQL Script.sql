SELECT * FROM superhero;

-- List all DC superhero movies with their U.S. release dates and worldwide box office gross.
SELECT film, us_release_date, gross_worldwide
FROM superhero;

-- Calculate the total box office gross worldwide for all Marvel movies.
SELECT SUM(gross_worldwide)
FROM superhero
WHERE franchise='Marvel';

-- Find the average length of DC superhero movies.
SELECT AVG(minutes) AS avg_length
FROM superhero
WHERE franchise='DC';

-- Retrieve the top 5 highest-grossing DC movies in the U.S. and Canada.

SELECT film, gross_domestic
FROM superhero
WHERE franchise='DC'
ORDER BY gross_domestic DESC
LIMIT 5;

SELECT film, COUNT(*)
FROM superhero
GROUP BY film
HAVING COUNT(*)>1;

SELECT film, us_release_date, gross_domestic
FROM superhero
GROUP BY film, us_release_date, gross_domestic
ORDER BY film;

-- List all Marvel Phase 3 movies.
SELECT film, franchise, phase
FROM superhero
WHERE franchise='Marvel' AND phase=3;

-- Find the movie with the highest budget among all superhero movies.
SELECT film, MAX(budget)
FROM superhero
GROUP BY film
ORDER BY MAX(budget) DESC
LIMIT 1;

-- Calculate the percentage of domestic box office gross for each Marvel movie.
SELECT film, (gross_domestic/gross_worldwide)*100 AS domestic_percent
FROM superhero
WHERE franchise='Marvel'; 

-- Find the movie with the highest Rotten Tomatoes critic score.
SELECT film, rotten_tomatoes_critic_score
FROM superhero
ORDER BY rotten_tomatoes_critic_score DESC
LIMIT 1;

-- List all DC movies released after 2010.
SELECT film, us_release_date
FROM superhero
WHERE year>2010;

-- Find the average gross to budget ratio for Marvel Phase 2 movies.
SELECT AVG(gross_to_budget) AS average_gross_to_budget
FROM superhero
WHERE phase=2;

-- Retrieve the top 5 highest-grossing movies for each distributor.

SELECT distributor, gross_worldwide,
ROW_NUMBER() OVER(PARTITION BY distributor ORDER BY gross_worldwide DESC) AS rnk
FROM superhero
GROUP BY distributor, gross_worldwide;

WITH top_distributors AS (
	SELECT film, distributor, gross_worldwide,
	ROW_NUMBER() OVER(PARTITION BY distributor ORDER BY gross_worldwide DESC) AS rnk
	FROM superhero
	GROUP BY film, distributor, gross_worldwide
)
SELECT film, distributor, gross_worldwide,rnk
FROM top_distributors
WHERE rnk<=5;

-- List all movies with a budget higher than $200 million.
SELECT film, budget
FROM superhero
WHERE budget>200000000;


-- Find the average length of movies in each MPAA rating category.
SELECT MPAA_Rating, AVG(minutes)
FROM superhero
GROUP BY MPAA_Rating;

-- Calculate the total worldwide gross for each year.
SELECT year, SUM(gross_worldwide)
FROM superhero
GROUP BY year;

-- List all Marvel movies led by a female character.
SELECT film, lead_gender
FROM superhero
WHERE franchise='Marvel' AND lead_gender='Female';


-- Find the movie with the highest inflation-adjusted worldwide gross.
SELECT film, inflation_adjusted_worldwide_gross
FROM superhero
ORDER BY inflation_adjusted_worldwide_gross DESC
LIMIT 1;

-- Retrieve the top 3 movies with the highest ROI (Return on Investment).
SELECT film, gross_to_budget
FROM superhero
ORDER BY gross_to_budget DESC
LIMIT 3;

-- List all Marvel Phase 1 movies with their budgets and lengths.
SELECT film, budget, length
FROM superhero
WHERE franchise='Marvel' AND phase=1;

-- Find the distribution of MPAA ratings for DC movies.
SELECT MPAA_Rating, COUNT(*) 
FROM superhero
WHERE franchise='DC'
GROUP BY MPAA_Rating;

-- Calculate the average inflation-adjusted budget for DC movies.
SELECT AVG(inflation_adjusted_budget) 
FROM superhero
WHERE franchise='DC';

-- Retrieve the oldest DC movie in the dataset.
SELECT film, release_date 
FROM movies
WHERE release_date = (SELECT MIN(DATE(release_date)) FROM movies) AND franchise='DC';


-- Find the movie with the highest box office gross in other territories.
SELECT film, gross_international
FROM movies
WHERE gross_international = (SELECT MAX(gross_international) FROM movies);



-- Calculate the total box office gross for each franchise.
SELECT franchise, SUM(gross_worldwide) AS total_box_office_gross 
FROM movies
GROUP BY franchise
ORDER BY total_box_office_gross DESC;

-- Retrieve the top 3 movies with the lowest Rotten Tomatoes critic scores.

SELECT film, rotten_tomatoes_critic_score
FROM (
	SELECT film, rotten_tomatoes_critic_score,
    DENSE_RANK() OVER(ORDER BY rotten_tomatoes_critic_score) AS rnk
    FROM movies
) 
AS subquery
WHERE rnk<=3;




-- List all movies released before 2000.
SELECT film, release_date 
FROM movies
WHERE year<2000;

-- Find the average length of movies for each character family.
SELECT character_family, AVG(minutes) FROM movies
GROUP BY character_family; 

-- Calculate the percentage of movies with a budget higher than $100 million.
SELECT 
(COUNT(CASE WHEN budget>100000000 THEN 1 END)/COUNT(*))*100 AS percentage_of_movies_with_centi_million_budget
FROM movies;

 
-- Retrieve the top 3 highest-grossing movies with a PG-13 rating.
SELECT film, MPAA_Rating, gross_worldwide
FROM (
	SELECT film, MPAA_Rating, gross_worldwide,
    DENSE_RANK() OVER(ORDER BY gross_worldwide DESC) AS rnk
    FROM movies
    WHERE MPAA_Rating='PG-13'
) AS subquery
WHERE rnk<=3;



