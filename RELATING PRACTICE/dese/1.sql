--Your colleague is preparing a map of all public schools in Massachusetts. In 1.sql, write a SQL query to find the names and cities of all public schools in Massachusetts.

--output names and cities
SELECT "name","city" FROM "schools"
--of all public schools in MA
WHERE "type"='Public School';

