# Superhero Movies Database

This repository contains a database of superhero movies, along with SQL queries for analyzing and retrieving various insights from the dataset.

![Designer (1)](https://github.com/cphoenix-07/Superhero-Movies-Database-and-Analysis/assets/71826054/8788bce5-2f51-4151-a520-72a74464ba49)

## Dataset Description

The dataset consists of information on superhero movies including:

- `film`: Title of the movie
- `release_date`: Release date of the movie
- `gross_domestic`: Domestic box office gross (in USD)
- `gross_international`: International box office gross (in USD)
- `gross_worldwide`: Worldwide box office gross (in USD)
- `budget`: Budget of the movie (in USD)
- `mcu`: Marvel Cinematic Universe (MCU) affiliation
- `phase`: Phase of the MCU (if applicable)
- `distributor`: Distributor of the movie
- `MPAA_Rating`: MPAA rating of the movie
- `length`: Length of the movie
- `minutes`: Duration of the movie in minutes
- `franchise`: Franchise of the movie (e.g., Marvel, DC)
- `character_family`: Character family associated with the movie
- `domestic_percentage`: Percentage of domestic box office gross
- `gross_to_budget`: Ratio of gross box office to budget
- `rotten_tomatoes_critic_score`: Rotten Tomatoes critic score
- `lead_gender`: Gender of the lead character
- `year`: Year of release
- `inflation_adjusted_worldwide_gross`: Inflation-adjusted worldwide gross
- `inflation_adjusted_budget`: Inflation-adjusted budget
- `2.5x_prod`: Break-even point multiplier
- `break_even`: Break-even point

## SQL Queries

The repository includes a diverse set of SQL queries tailored to provide insights into the superhero movies dataset. Here are some examples of the queries available:

1. List all DC superhero movies with their U.S. release dates and worldwide box office gross.
2. Calculate the total box office gross worldwide for all Marvel movies.
3. Find the average length of DC superhero movies.
4. Retrieve the top 5 highest-grossing DC movies in the U.S. and Canada.
5. Find the movie with the highest Rotten Tomatoes critic score.
6. Find duplicate movies.
7. List all movies with their titles, U.S. release dates, and domestic gross.
8. List all Marvel Phase 3 movies.
9. Find the movie with the highest budget among all superhero movies.
10. Calculate the percentage of domestic box office gross for each Marvel movie.
11. List all DC movies released after 2010.
12. Find the average gross to budget ratio for Marvel Phase 2 movies.
13. Retrieve the top 5 highest-grossing movies for each distributor.
14. List all movies with a budget higher than $200 million.
15. Find the average length of movies in each MPAA rating category.
16. Calculate the total worldwide gross for each year.
17. List all Marvel movies led by a female character.
18. Find the movie with the highest inflation-adjusted worldwide gross.
19. Retrieve the top 3 movies with the highest ROI (Return on Investment).
20. List all Marvel Phase 1 movies with their budgets and lengths.
21. Find the distribution of MPAA ratings for DC movies.
22. Calculate the average inflation-adjusted budget for DC movies.
23. Retrieve the oldest DC movie in the dataset.
24. Find the movie with the highest box office gross in other territories.
25. Calculate the total box office gross for each franchise.
26. Retrieve the top 3 movies with the lowest Rotten Tomatoes critic scores.
27. List all movies released before 2000.
28. Find the average length of movies for each character family.
29. Calculate the percentage of movies with a budget higher than $100 million.
30. Retrieve the top 3 highest-grossing movies with a PG-13 rating.

These queries offer valuable insights into the superhero movies dataset, allowing for thorough analysis and exploration of the data.

## Usage

To use the SQL queries:

1. Clone this repository to your local machine.
2. Open your preferred SQL database management tool (e.g., MySQL Workbench, pgAdmin).
3. Import the provided dataset into your database.
4. Open the SQL queries file (`queries.sql`) and execute the desired query.

## Contributing

Contributions are welcome! If you have any suggestions or improvements, feel free to open an issue or create a pull request.
