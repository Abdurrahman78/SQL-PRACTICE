--The Massachusetts Legislature would like to learn how much money, on average, districts spent per-pupil last year. In 3.sql,
--write a SQL query to find the average per-pupil expenditure. Name the column “Average District Per-Pupil Expenditure”.

--find the average per-pupil expenditure.

SELECT AVG("per_pupil_expenditure")

--Name the column “Average District Per-Pupil Expenditure”.
AS "Average District Per-Pupil Expenditure"


FROM "expenditures";


