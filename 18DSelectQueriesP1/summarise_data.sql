SELECT COUNT(amount) FROM mydb.orders;

SELECT COUNT(amount), SUM(amount) FROM mydb.orders
WHERE person_id = 1;

SELECT COUNT(amount) AS total_sales,
SUM(amount) AS total_amount_spent FROM mydb.orders
WHERE person_id = 1;

/*
**challenge below
*/
SELECT COUNT(amount) AS total_sales,
AVG(amount) AS average_spend FROM mydb.orders
