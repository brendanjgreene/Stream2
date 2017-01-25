SELECT CONCAT(first_name, ' ', second_name)
AS full_name FROM `mydb`.`people`;

SELECT CONCAT(second_name, ', ', first_name)
AS full_name FROM `mydb`.`people`;

SELECT DISTINCT(amount) FROM mydb.orders;

/*
**
*Challenge A:
*Create a string resembling “Wally West spent a total of $100.00” 
*by using a combination of CONCAT and SUM drawing your answer from the orders table. We haven’t covered how to look up information from two tables at once yet, so we will cheat a little and add in the name on our own this time around!
*/
Select concat("John Lennon spent a total of ")as Full_name,
sum(amount) as total from `mydb`.`orders` where person_id=1;
