# SQL Lesson 2: Queries with constraints (Pt. 1)

1. Find the movie with a row id of 6
  SELECT id, title FROM movies 
  WHERE id = 6;
  
2. Find the movies released in the years between 2000 and 2010
  SELECT year, title FROM movies
  WHERE year BETWEEN 2000 and 2010;

3. Find the movies not released in the years between 2000 and 2010
  SELECT year, title FROM movies
  WHERE year NOT BETWEEN 2000 and 2010;

4. Find the first 5 Pixar movies and their release year
  SELECT id, title, year FROM movies
  WHERE id BETWEEN 1 and 5;

# SQL Lesson 2: Own Queries
1. Find movies with id from 1-10 with only even numbers
  SELECT id, title FROM movies
  WHERE id in (2,4,6,8,10);

2. Find movies with minutes that are less than 100
  SELECT title, length_minutes FROM movies
  WHERE length_minutes BETWEEN 0 and 99;

3. Find movies that was released after 2000
  SELECT title, year FROM movies
  WHERE year BETWEEN 2000 and 3000;
