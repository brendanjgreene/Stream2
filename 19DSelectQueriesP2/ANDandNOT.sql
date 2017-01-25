/**
 * USING the NOT keyword
 */
SELECT * FROM mydb.orders
WHERE
created_at >= '2017-01-25 11:24:26'
AND
created_at <= '2017-01-25 12:32:49'
And not
amount > 11.25;

/**
 * Create a select query that uses the NOT keyword with the BETWEEN keyword
 */
SELECT * FROM mydb.orders
WHERE amount
NOT BETWEEN
13
AND
16;

/**
 *Take one of your previous queries that use the LIKE keyword
 * and see how using NOT affects the outcome.
 */
select * from articles 
where content 
like 'wow%';
/*vs*/
select * from articles 
where content 
not like 'wow%';

select * from articles where title not like '%4';
/*vs*/
select * from articles where title like '%4';

