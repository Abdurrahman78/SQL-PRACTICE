--write a SQL query to answer a question you have about the data! The query should: Involve at least one JOIN or subquery
--write a SQL query to find which top 10 district names needs the most improvment , give the name and improvement percentge

SELECT "name","needs_improvement" FROM "districts"

JOIN "staff_evaluations" ON "staff_evaluations"."district_id"="districts"."id"

ORDER BY "needs_improvement" DESC LIMIT 10;

--i guess phoenix academy gotta pick up the pace :)
