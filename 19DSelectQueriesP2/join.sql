/**
 * Select query using joins
 */
SELECT * FROM `mydb`.`people`
JOIN `mydb`.`profiles`
ON
people.id = profiles.person_id;

/**
 * A more complex select query using CONCAT, SUM, AS and GROUP BY
 */
SELECT CONCAT(people.first_name, ' ', people.second_name)
AS fullname,
SUM(orders.amount) AS total_spend
FROM `mydb`.`people`
JOIN `mydb`.`orders`
ON people.id = orders.person_id
GROUP BY people.id;

/**
 * Example of a select query using LEFT joins
 */
SELECT people.first_name, orders.id
FROM mydb.people
LEFT JOIN mydb.orders
ON people.id = orders.person_id
ORDER BY people.first_name;

/**
 * Example of a select query using a RIGHT join
 */
SELECT orders.id, people.first_name
FROM mydb.orders
RIGHT JOIN mydb.people
ON orders.person_id = people.id
ORDER BY orders.person_id;