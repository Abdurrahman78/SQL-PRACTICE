--DESE is preparing a report on schools in the Cambridge school district. In 7.sql, write a SQL query to find the names of all schools in the Cambridge school district.


--find the names of all schools in the Cambridge school district
SELECT "name" FROM "schools"
WHERE "district_id"=(
    SELECT "id" FROM "districts"
    WHERE "name"='Cambridge'
);

