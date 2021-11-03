CREATE TABLE "inventory" (
  "upc" SERIAL,
  "product_amount" Integer,
  PRIMARY KEY ("upc")
);

CREATE TABLE "product" (
  "item_id" SERIAL,
  "amount" NUMERIC(5,2),
  "prod_name" VARCHAR(100),
  "upc" Integer,
  PRIMARY KEY ("item_id"),
  CONSTRAINT "FK_product.item_id"
    FOREIGN KEY ("item_id")
      REFERENCES "inventory"("upc")
);

CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "cust_first" VARCHAR(100),
  "cust_last" VARCHAR(100),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "movie" (
  "movie_id" SERIAL,
  "movie_name" VARCHAR(100),
  "movie_year" Integer,
  "movie_date" DATE,
  "movie_run_time" Integer,
  "movie_lang" VARCHAR(100),
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "admission" (
  "order_id" SERIAL,
  "order_date" DATE,
  "sub_total" NUMERIC(6,2),
  "total_sale" NUMERIC(8,2),
  "ticket_id" Integer,
  PRIMARY KEY ("order_id")
);

CREATE TABLE "movie_time" (
  "time_id" SERIAL,
  "movie_time" TIME,
  "movie_id" Integer,
  PRIMARY KEY ("time_id")
);

CREATE TABLE "ticket" (
  "ticket_id" SERIAL,
  "ticket_amount" Integer,
  "time_id" Integer,
  PRIMARY KEY ("ticket_id")
);

CREATE TABLE "concession" (
  "conc_order_id" SERIAL,
  "conc_order_date" VARCHAR(100),
  "conc_sub_total" NUMERIC(6,2),
  "conc_total_sale" NUMERIC(8,2),
  "upc" Integer,
  PRIMARY KEY ("conc_order_id")
);

CREATE TABLE "cart" (
  "cart_id" SERIAL,
  "customer_id" Integer,
  "conc_order_id" Integer,
  "order_id" Integer,
  PRIMARY KEY ("cart_id")
);

