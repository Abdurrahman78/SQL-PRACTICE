CREATE TABLE "Ingredients"(
     "id" INTEGER PRIMARY KEY,
     "name" TEXT,
     "price_per_unit" INTEGER

);

CREATE TABLE "Donuts"(
     "id" INTEGER PRIMARY KEY,
     "name" TEXT,
     "is_gluten_free" TEXT,
     "Ingredients_id" TEXT,
     "price_per_dounut" INTEGER,
     FOREIGN KEY("Ingredients_id") REFERENCES "Ingredients"("id")

);


CREATE TABLE "Orders"(
     "id" INTEGER PRIMARY KEY,
     "customer_id" INTEGER,
     "donuts_ordered" TEXT,
     FOREIGN KEY("donuts_ordered") REFERENCES "Donuts"("id"),
     FOREIGN KEY("customer_id") REFERENCES "Customers"("id")
);


CREATE TABLE "Customers"(
     "id" INTEGER PRIMARY KEY,
     "first_name" TEXT,
     "last_name" TEXT,
     "order_ids" TEXT,
     FOREIGN KEY("order_ids") REFERENCES "Orders"("id")

);


