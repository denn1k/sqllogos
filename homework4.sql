CREATE TABLE book1 (
                       id SERIAL PRIMARY KEY,
                       name VARCHAR(50),
                       description VARCHAR(50),
                       price INT,
                       isbn VARCHAR(10));

CREATE TABLE genre (
                       id SERIAL PRIMARY KEY,
                       name VARCHAR(30),
                       book1_id INT);

ALTER TABLE genre ADD FOREIGN KEY (book1_id) REFERENCES book1(id);

INSERT INTO book1 (
    name,description,price,isbn)
VALUES
('Hobbit','Fantasy',30,'ABC123'),
('Sherlock','Stories',40,'ABC234'),
('Winnie Pooh','For kids',15,'ZXC123');


INSERT INTO genre (
    name)
VALUES
('Adventure'),('Detective'),('Fairytale');

UPDATE genre SET book1_id=1 WHERE name='Adventure';
UPDATE genre SET book1_id=2 WHERE name='Detective';
UPDATE genre SET book1_id=3 WHERE name='Fairytale';

CREATE TABLE authors (
                         author_id SERIAL PRIMARY KEY,
                         a_name VARCHAR(30),
                         a_surname VARCHAR(40),
                         a_email VARCHAR(50),
                         a_address VARCHAR (40),
                         a_dateofbirth DATE,
                         book1_id INT NOT NULL,
                         FOREIGN KEY book1_id REFERENCES book1(id) );
