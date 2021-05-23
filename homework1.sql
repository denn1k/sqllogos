CREATE DATABASE library;
 CREATE TABLE book (
books_name VARCHAR(100),
 description VARCHAR(60) DEFAULT 'No description',
 publication_date DATE DEFAULT '2018-01-01',
 author VARCHAR(60),
 category VARCHAR(30)
 );
 INSERT INTO book (
books_name,, author, category)
VALUES
 ('The shining','S.King','Horror'),
('War and peace','L.Tolstoi','Drama'),
('Pet cemetary','S.King','Horror'),
('Harry Potter','J.Roaling','Adventure'),
('Lord of the Rings','J.R.R. Tolkien','Fantasy'),
 ('Designing Data-Intensive Applications','Martin Kleppmann','Science'),
('Effective Java','Joshua Bloch','Programming'),
('Java: The Complete Reference','Herbert Schildt','Programming'),
('Data Structures and Algorithms in Java','Robert Lafore','Science'),
('Building Trading Bots Using Java','Shekhar Varshney','Programming');
