--Your team is working on archiving old data. In 2.sql, write a SQL query to find the names of districts that are no longer operational.

--names of districts
SELECT "name" FROM "districts"


--that are no longer operational
WHERE "name" LIKE '%(non-op)%';
