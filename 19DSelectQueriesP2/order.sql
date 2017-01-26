SELECT * FROM mydb.orders
WHERE
created_at >= '2017-01-25 11:24:26'
AND
created_at <= '2017-01-25 12:32:49'
And not
amount > 11.25
ORDER BY person_id;

/**
 * Order by using the DESC keyword
 */
SELECT * FROM mydb.orders
WHERE
created_at >= '2017-01-25 11:24:26'
AND
created_at <= '2017-01-25 12:32:49'
And not
amount > 11.25
ORDER BY person_id desc;

/**
 * Create a select query using GROUP BY
 */
SELECT person_id, COUNT(amount)
FROM mydb.orders GROUP BY person_id;

/**
 * Using ORDER BY on the amount field
 */
SELECT * FROM mydb.orders
WHERE
created_at >= '2017-01-25 11:24:26'
AND
created_at <= '2017-01-25 12:32:49'
And not
amount > 11.25
order by amount desc;

SELECT person_id, COUNT(amount)
FROM mydb.orders;
