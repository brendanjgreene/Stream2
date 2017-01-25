USE mydb;
 
/**
 * Create a new table called `profiles`
 */
CREATE TABLE profiles (
    id INTEGER AUTO_INCREMENT,
    person_id INT,
    address text,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (person_id) REFERENCES people(id)
);

UPDATE `mydb`.`profiles`
SET `address` = "la New Address"
WHERE `person_id` = 3;

UPDATE `mydb`.`profiles`
SET `address` = "Heaven"
WHERE `person_id` = 1;