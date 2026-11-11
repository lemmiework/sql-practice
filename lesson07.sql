# SQL Lesson 7: OUTER JOINs

1. Find the list of all buildings that have employees
  SELECT DISTINCT building FROM employees;

2. Find the list of all buildings and their capacity
  SELECT building_name, capacity FROM buildings;
  
3. List all buildings and the distinct employee roles in each building (including empty buildings)
  SELECT DISTINCT building_name, role FROM buildings
  LEFT JOIN employees
      ON buildings.building_name = employees.building;

# SQL Lesson 7: Own Queries
1. List every building with the names of its employees, including buildings that have none.
  SELECT building_name, name FROM buildings
  LEFT JOIN employees
      ON buildings.building_name = employees.building;

2. List every employee’s name with the capacity of their building, including employees who aren’t assigned to any building.
  SELECT name, capacity FROM employees
  LEFT JOIN buildings
      ON employees.building = buildings.building_name;

3. List all buildings and all employees together, matching them where possible and keeping the unmatched rows from both tables.
  SELECT building_name, name FROM buildings
  LEFT JOIN employees
      ON buildings.building_name = employees.building;
