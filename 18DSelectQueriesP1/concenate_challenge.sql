INSERT INTO mydb.people (
    first_name,
    second_name,
    DOB
) VALUES 
	('Tess','Greene',STR_TO_DATE('20/08/2011', '%d/%m/%Y')),
	('Medb','Greene',STR_TO_DATE('14/04/2008', '%d/%m/%Y')),
	('Grace','Greene',STR_TO_DATE('08/12/2005', '%d/%m/%Y'));

INSERT INTO mydb.orders (
    amount,
    person_id
) VALUES
    (12.02, 2),
    (9.02, 2),
    (13.02, 2),
    (15.02, 3),
    (15.02, 3),
	(45, 3),
	(12.7, 4),
	(56.1, 4),
	(9.05, 4);

SELECT DISTINCT(person_id) FROM mydb.orders;
