--A parent wants to send their child to a district with many other students. In 8.sql, write a SQL query to display the names of all school districts and the number of pupils
-- enrolled in each.

--since we want the names of the district and the amount of pupils we are working with 2 tables. So lets use a key that two tables have in common to bring the data in one place and extract the info from that.
SELECT "name","pupils" FROM "districts"
JOIN
"expenditures" ON
"expenditures"."district_id"="districts"."id";
