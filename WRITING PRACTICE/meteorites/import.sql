CREATE TABLE "temp;"(
     "name" TEXT,
     "id" INTEGER PRIMARY KEY,
     "nametype" TEXT,
     "class" TEXT,
     "mass" REAL,
     "discovery" TEXT,
     "year" INTEGER,
     "lat" REAL,
     "long" REAL
);



.import --csv --skip 1 meteorites.csv temp;



--Any empty values in meteorites.csv are represented by NULL in the meteorites table.
UPDATE "temp;" SET "mass"=NULL
WHERE "mass"="";

UPDATE "temp;" SET "year"=NULL
WHERE "year"="";

UPDATE "temp;" SET "lat"=NULL
WHERE "lat"="";

UPDATE "temp;" SET "long"=NULL
WHERE "long"="";

--All columns with decimal values (e.g., 70.4777) should be rounded to the nearest hundredths place (e.g., 70.4777 becomes 70.48)

UPDATE "temp;" SET "mass"=ROUND("mass",2);

UPDATE "temp;" SET "lat"=ROUND("lat",2);

UPDATE "temp;" SET "long"=ROUND("long",2);

--All meteorites with the nametype “Relict” are not included in the meteorites table.

DELETE FROM "temp;"
WHERE "nametype" = 'Relict';

--The meteorites are sorted by year, oldest to newest, and then—if any two meteorites landed in the same year—by name, in alphabetical order.

CREATE TABLE "meteorites"(
     "name" TEXT,
     "id" INTEGER PRIMARY KEY,
     "class" TEXT,
     "mass" REAL,
     "discovery" TEXT,
     "year" INTEGER,
     "lat" REAL,
     "long" REAL
);

INSERT INTO "meteorites"("name","class","mass","discovery","year","lat","long")
SELECT "name","class","mass","discovery","year","lat","long" FROM "temp;"
ORDER BY "year","name";

DROP TABLE "temp;";
