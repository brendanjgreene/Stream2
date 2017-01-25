SELECT CONCAT(first_name, ' ', second_name)
AS full_name FROM `mydb`.`people`;

SELECT CONCAT(second_name, ', ', first_name)
AS full_name FROM `mydb`.`people`;

SELECT DISTINCT(amount) FROM mydb.orders;