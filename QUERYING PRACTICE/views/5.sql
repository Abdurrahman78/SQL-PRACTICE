--write a SQL query to find the highest contrast value of prints by Hokusai. Name the column “Maximum Contrast”. Does Hokusai’s prints most contrasting print actually have much contrast?

-- output is contrast and rename to max contrast
SELECT "contrast" AS "Maximum Contrast" FROM "views"
--before we order contrast make sure were only choosing hokusai
WHERE "artist" LIKE '%Hokusai%'
--order contrast from greatest to least and limit by 1 to get top 1
ORDER BY "contrast"  DESC  LIMIT 1 ;

