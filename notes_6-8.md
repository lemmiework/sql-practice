# SQL notes

- JOIN makes it so we can combine row data across different tables using a primary key which is like a unique identifier for each table (can be auto-increment which saves space).
  - INNER JOIN - matches rows from diff tables that has same key
  - OUTER JOIN - (LEFT/RIGHT/FULL) use when data doesnt really match each table so no data is left behind
      - LEFT JOIN - join table rows from table A even if there's no match in table B
      - RIGHT JOIN - reverse of LEFT JOIN
      - FULL JOIN - both table rows are kept even if it doesnt match
- NULL - values that is like an equivalent to zero or none data
  
## SQL Lesson 6: Multi-table queries with JOINs
### Select query with INNER JOIN on multiple tables
SELECT column, another_table_column, …
FROM mytable
INNER JOIN another_table 
    ON mytable.id = another_table.id
WHERE condition(s)
ORDER BY column, … ASC/DESC
LIMIT num_limit OFFSET num_offset;


## SQL Lesson 7: OUTER JOINs
### Select query with LEFT/RIGHT/FULL JOINs on multiple tables
SELECT column, another_column, …
FROM mytable
INNER/LEFT/RIGHT/FULL JOIN another_table 
    ON mytable.id = another_table.matching_id
WHERE condition(s)
ORDER BY column, … ASC/DESC
LIMIT num_limit OFFSET num_offset;


## SQL Lesson 8: A short note on NULLs
### Select query with constraints on NULL values
SELECT column, another_column, …
FROM mytable
WHERE column IS/IS NOT NULL
AND/OR another_condition
AND/OR …;
