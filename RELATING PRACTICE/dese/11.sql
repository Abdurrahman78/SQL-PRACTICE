--Is there a relationship between school expenditures and graduation rates? In 11.sql, write a SQL query to display the names of schools, their per-pupil expenditure,
--and their graduation rate. Sort the schools from greatest per-pupil expenditure to least. If two schools have the same per-pupil expenditure, sort by school name.




-- display the names of schools, their per-pupil expenditure, and their graduation rate.
SELECT "name","per_pupil_expenditure","graduated" FROM "expenditures"


JOIN "schools" ON "schools"."district_id"="expenditures"."district_id"



JOIN "graduation_rates" ON "graduation_rates"."school_id"="schools"."id"

----Sort the schools from greatest per-pupil expenditure to least and Sort the schools from greatest per-pupil expenditure to least

ORDER BY "per_pupil_expenditure" DESC ,"name";













