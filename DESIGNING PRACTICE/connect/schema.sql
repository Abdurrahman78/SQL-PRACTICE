CREATE TABLE "Users"(
     "id" INTEGER PRIMARY KEY,
     "first_name" TEXT,
     "last_name" TEXT,
     "company_id" INTEGER,
     "school_id" INTEGER,
     "username" TEXT,
     "password" TEXT,
     FOREIGN KEY("company_id") REFERENCES "companies"("id")
     FOREIGN KEY("school_id") REFERENCES "universities"("id")

);

CREATE TABLE "Universities"(
     "id" INTEGER PRIMARY KEY,
     "school_name" TEXT,
     "school_type" TEXT,
     "school_location" TEXT,
     "year_founded" INTEGER

);

CREATE TABLE "companies"(
     "id" INTEGER PRIMARY KEY,
     "comp_name" TEXT,
     "comp_type" TEXT,
     "comp_location" TEXT
);

CREATE TABLE "SchoolConnections"(
     "id" INTEGER PRIMARY KEY,
     "user_id" INTEGER,
     "school_id" INTEGER,
     "aff_start" TIMESTAMP,
     "aff_end" TIMESTAMP,
     "degree_type" TEXT,
     FOREIGN KEY("user_id") REFERENCES "Users"("id"),
     FOREIGN KEY("school_id") REFERENCES "Universities"("id")
);

CREATE TABLE "CompanyConnections"(
     "id" INTEGER PRIMARY KEY,
     "user_id" INTEGER,
     "company_id" INTEGER,
     "aff_start" TIMESTAMP,
     "aff_end" TIMESTAMP,
     "title" TEXT,
     FOREIGN KEY("user_id") REFERENCES "Users"("id"),
     FOREIGN KEY("company_id") REFERENCES "companies"("id")

);

CREATE TABLE "PeopleConnections"(
     "id" INTEGER PRIMARY KEY,
     "user_id" INTEGER,
     "followers_ids" INTEGER,
     "followed_ids" INTEGER,
     "connections_id" INTEGER,
     FOREIGN KEY("user_id") REFERENCES "Users"("id")

);


