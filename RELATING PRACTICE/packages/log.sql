--Abdurrahman Elkhadrawy
--Harvard University CS50 SQL

-- *** The Lost Letter ***


--our output
SELECT * FROM "addresses"
--use id to compare to other ids from other tables to help filter
WHERE "id"=(
  --we can get that from the address_id of the package that was dropped off but first we need to know the package
  SELECT "address_id" FROM "scans"
  --retrive package id to search in scans to see where it was dropped off
     WHERE "package_id"=(
       --get the  id for the package that contains the letter
        SELECT "id" FROM "packages"
    --we know its a congrats letter so lets try searching for that
          WHERE "contents" LIKE '%congra%'
     )
     AND
     --after we get the package id we got to make sure we get the address id of where that specfic package was dropped off
     "action"='Drop'

);

 --get the  id for the package that contains the letter
    SELECT "id" FROM "packages"
 --we know its a congrats letter so lets try searching for that
    WHERE "contents" LIKE '%congra%'

SELECT "address_id" FROM "scans"
  --retrive package id to search in scans to see where it was dropped off
     WHERE "package_id"=previous answer
     AND
     --after we get the package id we got to make sure we get the address id of where that specfic package was dropped off
     "action"='Drop'

SELECT * FROM "addresses"
--use id to compare to other ids from other tables to help filter
WHERE "id"=previous answer


-- *** The Devious Delivery ***

--we want to know the location/type of where the package arrived
SELECT * FROM "addresses"
--in order to do that we need the id of the address
 WHERE "id"=(
  --we can get that from the address_id of the package that was dropped off but first we need to know the package
  SELECT "address_id" FROM "scans"
  --get the package id so we can figure out the address
    WHERE "package_id" = (
      --get the id of a package that dosnt have a sent from location since thats what he mentioned
       SELECT "id" FROM "packages"
          WHERE "from_address_id" IS NULL
    )
    --after we get the package id we got to make sure we get the address id of where that specfic package was dropped off
    AND
    "action"='Drop'
 );

-- we can get the package information
SELECT * FROM "packages"
--from where their was no address
    WHERE "from_address_id" IS NULL;



-- *** The Forgotten Gift ***

--returns 9873 , the address of the grandma
SELECT "id" FROM "addresses"
 WHERE "address"='109 Tileston Street';

-- now lets use that address id to search for the package id in the packages table/ also view the whole info about that package using * instead of id returns package id of 9523
SELECT "id" FROM "packages"
 WHERE "from_address_id"=9873;

 -- now lets use that return value of 9523 to find who picked up our package,we are gonna use order by and desc limit 1 to get the most recent time the package was interacted with, giving us a return id of 17
 SELECT "driver_id" FROM "scans"
  WHERE "package_id"=9523
  ORDER BY "timestamp" DESC LIMIT 1

  --now lets find the name of the driver who took our stuff :(, looks like mikel took it
  SELECT "name" FROM "drivers"
   WHERE "id"=17

-- now lets combine it into a single query :)

--comments written for the seaperate quries dont wanna be redundent
SELECT "name" FROM "drivers"
 WHERE "id"=(
  SELECT "driver_id" FROM "scans"
    WHERE "package_id"=(
      SELECT "id" FROM "packages"
        WHERE "from_address_id"=(
          SELECT "id" FROM "addresses"
           WHERE "address"='109 Tileston Street'
        )

    )
    ORDER BY "timestamp" DESC LIMIT 1
 );


