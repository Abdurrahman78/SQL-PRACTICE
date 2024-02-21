--write a SQL query to find the ids of rows for which a value in the column debut is missing.

--output id
SELECT "id" FROM "players"

--where debut is missing
WHERE "debut" IS NULL;
