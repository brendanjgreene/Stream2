SELECT * FROM mydb.orders;

SELECT amount, created_at FROM mydb.orders;

SELECT amount, created_at AS purchased FROM mydb.orders;

SELECT amount, created_at AS purchased FROM mydb.orders
WHERE person_id = 1;