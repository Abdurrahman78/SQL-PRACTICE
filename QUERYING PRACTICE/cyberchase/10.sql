--write a SQL query to list the ids, titles, and production codes of all episodes. Order the results by production code, from earliest to latest.

--Select ids,titles,codes
SELECT "id","title","production_code" FROM "episodes"

--order them by the code from ascending
ORDER BY "production_code"

