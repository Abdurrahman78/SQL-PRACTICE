
CREATE TABLE "passengers"(
     "passenger_id" INTEGER PRIMARY KEY,
     "first_name" TEXT,
     "last_name" TEXT,
     "Age" INTEGER
);

CREATE TABLE "Checkin"(
     "checkin_id" INTEGER,
     "passenger_id" INTEGER,
     "flight_id" INTEGER,
     "checkin_date" TEXT,
     "checkin_time" TEXT,
     FOREIGN KEY("passenger_id") REFERENCES "passengers"("passenger_id"),
     FOREIGN KEY("flight_id") REFERENCES "flights"("flights_id")
);

CREATE TABLE "flights"(
     "flights_id" INTEGER PRIMARY KEY,
     "airline_id" INTEGER,
     "flight_number" INTEGER,
     "airline_name" TEXT,
     "depart_code" TEXT,
     "arrival_code" TEXT,
     "depature_date" TEXT,
     "departure_time" TEXT,
     "arrival_date" TEXT,
     "arrival_time" TEXT,
     FOREIGN KEY("airline_id") REFERENCES "airlines"("airline_id")
);


CREATE TABLE "airlines"(
     "airline_id" INTEGER PRIMARY KEY,
     "airline_name" TEXT,
     "concourse" TEXT
);
