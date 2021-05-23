CREATE TABLE book (
                      id SERIAL,
                      books_name VARCHAR(120) NOT NULL,
                      description TEXT,
                      publication_date DATE DEFAULT '2018-01-01',
                      category VARCHAR(30) NOT NULL,
                      isbn VARCHAR(20) NOT NULL UNIQUE,
                      quantity_of_pages INT NOT NULL,
                      authors_name VARCHAR(45) NOT NULL,
                      authors_surname VARCHAR(45) NOT NULL,
                      authors_email VARCHAR(50) NOT NULL UNIQUE,
                      authors_age INT,
                      date_of_birth DATE NOT NULL,
                      authors_awards VARCHAR(120));

INSERT INTO book (
    books_name,description,category,isbn,quantity_of_pages,
    authors_name,authors_surname,authors_email,authors_age,date_of_birth,authors_awards)
VALUES ('The shining','Horror about hotel','Horror','ABC123',300,'Steven','King','S.King@gmail.com',65,'1956-01-01','Best plot'),
       ('Pet cemetary','Creepy story','Horror','ABC456',300,'Steven','King','SKing@gmail.com',65,'1956-01-01','Best ending'),
       ('War and peace','Drama about war','Drama','DEF456',600,'Lev','Tolstoi','L.Tolstoi@gmail.com',68,'1953-01-01','The longest drama'),
       ('Harry Potter','Magic story','Horror','DEF123',300,'Joan','Roaling','Roaling@gmail.com',60,'1961-01-01','Best plot'),
       ('Lord of the Rings','Fantasy with hobbits','Fantasy','ABC789',300,'John','Tolkien','Tolkien@gmail.com',65,'1956-01-01','Best plot'),
       ('Designing Data-Intensive Applications','Useful book','Programming','DEF789',180,'Martin','Kleppmann','Kleppmann@gmail.com',65,'1956-01-01','Best plot'),
       ('Effective Java','Useful book','Programming','BNM123',250,'Joshua','Bloch','Bloch@gmail.com',28,'1993-01-01','Best plot'),
       ('Java: The Complete Reference','Useful book','Programming','UIO123',300,'Herbert','Schildt','Schildt@gmail.com',40,'1981-01-01',NULL),
       ('Data Structures and Algorithms in Java','Useful book','Programming','POI123',300,'Robert','Lafore','Lafore@gmail.com',50,'1971-01-01','Best plot'),
       ('Building Trading Bots Using Java','Useful book','Programming','ASD123',300,'Shekhar','Varshney','Varshney@gmail.com',65,'1956-01-01',NULL);

SELECT * FROM book;
SELECT * FROM book WHERE id=5 OR id=10 OR id=13;
SELECT * FROM book WHERE quantity_of_pages > 150;
SELECT * FROM book WHERE authors_age > 30;
SELECT * FROM book WHERE authors_awards IS NULL;
SELECT * FROM book WHERE authors_email = 'Schildt@gmail.com';
SELECT * FROM book WHERE isbn = 'ABC123';
SELECT * FROM book WHERE category = 'Programming';
SELECT * FROM book WHERE quantity_of_pages > 200 AND authors_age > 25;
SELECT * FROM book WHERE category = 'Comedy' OR category = 'Drama';
SELECT * FROM book ORDER BY books_name;
SELECT * FROM book ORDER BY authors_email;
SELECT * FROM book ORDER BY quantity_of_pages DESC;
SELECT DISTINCT category FROM book;
SELECT DISTINCT authors_name FROM book;
SELECT * FROM book WHERE publication_date > '2000-01-01';
SELECT * FROM book WHERE publication_date < '2010-01-01';