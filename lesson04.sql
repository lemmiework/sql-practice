# SQL Lesson 4: Filtering and sorting Query results

1. List all directors of Pixar movies (alphabetically), without duplicates
  SELECT DISTINCT director FROM movies
  ORDER BY director ASC;

2. List the last four Pixar movies released (ordered from most recent to least)
  SELECT title, year FROM movies
  ORDER BY year DESC
  LIMIT 4;

3. List the first five Pixar movies sorted alphabetically
  SELECT title FROM movies
  ORDER BY title
  LIMIT 5;

4. List the next five Pixar movies sorted alphabetically
  SELECT title FROM movies
  ORDER BY title ASC
  LIMIT 5 OFFSET 5;

# SQL Lesson 4: Own Queries
1. List each year in which a movie was released, with no duplicates, from the newest year to the oldest.
  SELECT DISTINCT year FROM movies
  ORDER BY year DESC;

2. List the titles of the three longest movies, with the longest first.
  SELECT title, length_minutes FROM movies
  ORDER BY length_minutes DESC
  LIMIT 3;

3. Take movies released after 2000 and sort them alphabetically by title. Skip the first 2 and show the next 3 titles.
  SELECT title, year FROM movies
  WHERE year > 2000
  ORDER BY title ASC
  LIMIT 3 OFFSET 2;
