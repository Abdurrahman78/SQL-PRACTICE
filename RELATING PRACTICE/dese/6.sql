--DESE wants to assess which schools achieved a 100% graduation rate. In 6.sql, write a SQL query to find the names of schools (public or charter!)
--that reported a 100% graduation rate.

--find names of schools
SELECT "name" FROM "schools"
--we are gonna get the school id from the grad rates table, USE IN keyword to get a set of values so we dont only get 1
WHERE "id" IN (
    SELECT "school_id" FROM "graduation_rates"
    WHERE "graduated"=100
);
