SELECT * FROM mydb.orders
WHERE
created_at >= '2017-01-25 11:24:26'
AND
created_at <= '2017-01-25 12:32:49'
And not
amount > 11.25
ORDER BY person_id;