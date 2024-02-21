--In Massachusetts, school district expenditures are in part determined by local taxes on property (e.g., home) values.
--In 10.sql, write a SQL query to find the 10 public school districts with the highest per-pupil expenditures.
--Your query should return the names of the districts and the per-pupil expenditure for each.

--join the tables using common key of id
SELECT "name","per_pupil_expenditure" FROM "districts"
JOIN
"expenditures" ON
"expenditures"."district_id"="districts"."id"
--filter only public schools
WHERE "type"='Public School District'
--get the top 10 from those from highet to lower
ORDER BY "per_pupil_expenditure" DESC LIMIT 10;


