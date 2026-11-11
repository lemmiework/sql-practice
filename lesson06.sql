# SQL Lesson 6: Multi-table queries with JOINs

1. Find the domestic and international sales for each movie
  SELECT title, domestic_sales, international_sales FROM movies
  INNER JOIN boxoffice
      ON movies.id = boxoffice.movie_id;

2. Show the sales numbers for each movie that did better internationally rather than domestically
  SELECT title, international_sales, domestic_sales FROM movies
  INNER JOIN boxoffice
      ON movies.id = boxoffice.movie_id
  WHERE international_sales > domestic_sales;

3. List all the movies by their ratings in descending order
  SELECT title, rating FROM movies
  INNER JOIN boxoffice
      ON movies.id = boxoffice.movie_id
  ORDER BY rating DESC;

# SQL Lesson 6: Own Queries
1. List each director who has at least one movie in the box office table, with no duplicates, in alphabetical order.
  SELECT DISTINCT director FROM movies
  INNER JOIN boxoffice
      ON movies.id = boxoffice.movie_id
  ORDER BY director;

2. List the titles and domestic sales of the three movies with the highest domestic sales, with the highest first.
  SELECT title, domestic_sales FROM movies
  INNER JOIN boxoffice
      ON movies.id = boxoffice.movie_id
  ORDER BY domestic_sales DESC
  LIMIT 3;

3. Take movies released after 2000 that have a box office record and sort them alphabetically by title. Skip the first 2 and show the next 3 titles.
  SELECT title, year FROM movies
  INNER JOIN boxoffice
      ON movies.id = boxoffice.movie_id
  WHERE year > 2000
  ORDER BY title
  LIMIT 3 OFFSET 2;
