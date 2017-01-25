USE mydb;

CREATE TABLE people (
        id INTEGER AUTO_INCREMENT,
        first_name VARCHAR(50) NOT NULL,
        second_name VARCHAR(50) NOT NULL,
        DOB DATE NOT NULL,
        PRIMARY KEY (id)
);

CREATE TABLE orders (
        id INTEGER AUTO_INCREMENT,
        amount DECIMAL(18,2) NOT NULL,
        person_id INT,
        created_at datetime DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (id),
        FOREIGN KEY (person_id) REFERENCES people(id),
        CHECK(amount>0)
);

CREATE TABLE profiles (
    id INTEGER AUTO_INCREMENT,
    person_id INT,
    address text,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (person_id) REFERENCES people(id)
);

INSERT INTO mydb.people (
    first_name,
    second_name,
    DOB
) VALUES (
    'John',
    'Lennon',
    STR_TO_DATE('1/01/2012', '%d/%m/%Y')
);

INSERT INTO mydb.profiles (
	person_id,
	address
) VALUES (
	1,
	"221B Baker Street"
);

INSERT INTO mydb.orders (
    amount,
    person_id
) VALUES
    (12.02, 1),
    (9.02, 1),
    (13.02, 1),
    (15.02, 1),
    (15.02, 1);


CREATE INDEX first_name_index ON people (first_name);
