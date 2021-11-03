INSERT INTO customer(
	customer_id,
	cust_first,
	cust_last
)VALUES(
	1,
	'Betty',
	'Boop'
);

INSERT INTO inventory(
  	upc,
  	product_amount
)VALUES(
	1,
	20.00
);
  
INSERT INTO product(
  	item_id,
  	amount,
  	prod_name,
  	upc
)VALUES(
	1,
	2.99,
	'jujubees',
	1
);

INSERT INTO movie(
  	movie_id,
  	movie_name,
  	movie_year,
  	movie_date,
  	movie_run_time,
  	movie_lang
)VALUES(
	1,
	'Moonstruck',
	1987,
	'12-18-1987',
	102,
	'English'
);

INSERT INTO admission(
  	order_id,
  	order_date,
  	sub_total,
  	total_sale,
  	ticket_id
)VALUES(
	1,
	'12/18/1987',
	20.00,
	45.00,
	1
);

INSERT INTO movie_time(
  	time_id,
  	movie_time,
  	movie_id
)VALUES(
	1,
	'20:30:00',
	1
);

INSERT INTO ticket(
  	ticket_id,
  	ticket_amount,
  	time_id
)VALUES(
	1,
	8,
	1
);

INSERT INTO concession(
  	conc_order_id,
  	conc_order_date,
  	conc_sub_total,
  	conc_total_sale,
  	upc
)VALUES(
	1,
	12/18/1987,
	10.00,
	20.00,
	1
);

INSERT INTO cart(
  	cart_id,
  	customer_id,
  	conc_order_id,
  	order_id
)VALUES(
	1,
	1,
	1,
	1
);

