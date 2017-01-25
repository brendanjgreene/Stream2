SELECT * FROM mydb.orders;

/**
 * Create a select statement without using the BETWEEN keyword
 */
SELECT * FROM mydb.orders
WHERE
created_at >= '2017-01-25 11:24:26'
AND
created_at <= '2017-01-25 12:32:49';

/**
 * Create a select statement using the BETWEEN keyword
 */
SELECT * FROM mydb.orders
WHERE created_at
BETWEEN
'2017-01-25 11:24:26'
AND
'2017-01-25 12:32:49';

/**
 *Create a few more order rows in your 
 *orders table for each person in your
 *people table and then select only orders
 * of the second and third persons.
 */
INSERT INTO `mydb`.`orders` (
	`person_id`,
	`amount`
) VALUES 
	(1, 1.04),
	(1, 16.50),
	(1, 16.06),
	(1, 2.60),
	(2, 7.04),
	(2, 3.87),
	(2, 9.7),
	(2, 10.31),
	(3, 3.07),
	(3, 13.21),
	(3, 4.09),
	(3, 44.97),
	(4, 17.45),
	(4, 13.00),
	(4, 1.12),
	(4, 5.67);

select * from mydb.orders
where person_id
between 3
and
4;