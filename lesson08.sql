# SQL Lesson 8: A short note on NULLs

1. Find the name and role of all employees who have not been assigned to a building
  SELECT name, role FROM employees
  WHERE building IS NULL;

2. Find the names of the buildings that hold no employees
  SELECT building_name FROM buildings
  LEFT JOIN employees
      ON buildings.building_name = employees.building
  WHERE employees.name IS NULL;

# SQL Lesson 8: Own Queries
1. Find the names of all employees who have been assigned to a building.
  SELECT name FROM employees
  WHERE building IS NOT NULL;
  
2. Find the distinct roles of employees who have been assigned to a building.
  SELECT DISTINCT role FROM employees
  WHERE building IS NOT NULL;
  
3. Find the names of the first three employees, in alphabetical order, who have been assigned to a building.
  SELECT name FROM employees
  WHERE building IS NOT NULL
  ORDER BY name
  LIMIT 3;
