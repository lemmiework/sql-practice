# SQL Lesson 3: Queries with constraints (Pt. 2)

1. Find all the Toy Story movies
  SELECT title, director FROM movies 
  WHERE title LIKE "Toy Story%";

2. Find all the movies directed by John Lasseter
  SELECT title, director FROM movies
  WHERE director = "John Lasseter";

3. Find all the movies (and director) not directed by John Lasseter
  SELECT title, director FROM movies
  WHERE director != "John Lasseter";

4. Find all the WALL-* movies
  SELECT title FROM movies
  WHERE title LIKE "WALL-%";

# SQL Lesson 3: Own Queries
1. Find all movies whose director's name starts with 'B'
  SELECT title, director FROM movies
  WHERE director LIKE "B%";

2. Find all movies and their year that starts with 'T'
  SELECT title, year FROM movies
  WHERE title LIKE "T%";

3. Find all movies directed by someone nicknamed "Drew"
  SELECT title, director FROM movies
  WHERE director LIKE "%drew%";
