-- Another parent wants to send their child to a district with few other students. In 9.sql, write a SQL query to find the name (or names) of the school district(s) with
-- the single least number of pupils. Report only the name(s).


SELECT "name" FROM "districts"
--we want the name associated with the number of pupils
JOIN
"expenditures" ON
"expenditures"."district_id"="districts"."id"
--the single least number of pupils
WHERE "pupils"=(
    SELECT MIN("pupils") FROM "expenditures"
    );
