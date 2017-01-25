use mydb;
 
 
/**
 * Create a new table called `articles`
 */
CREATE TABLE articles (
    id INTEGER AUTO_INCREMENT,
    title VARCHAR(200),
    content TEXT,
    person_id INT NOT NULL,
    PRIMARY KEY(id)
);
 
 
/**
 * Insert some data into our newly created `articles` table
 */
INSERT INTO articles (
    `title`,
    `content`,
    `person_id`
) VALUES
    ('article 1', 'some text', 1),
    ('article 2', 'some more text', 1),
    ('article 3', 'even more text', 1),
    ('article 4', 'wow so much text', 1);

/**
 * Create a select statement using the LIKE keyword
 */
SELECT * FROM articles WHERE title LIKE '%article%';

/**
 *Challenge A:
 *Find all the rows containing the word ‘more’ in the content
 */
select * FROM articles where content like '%more%';

/**
 *Challenge B:
 *Find all the rows beginning with the word ‘wow’ in the content
 */

select * from articles where content like 'wow%';

/**
 *Challenge C:
 *Find all the rows ending with the number 4 in the title.
 */
select * from articles where title like '%4';
