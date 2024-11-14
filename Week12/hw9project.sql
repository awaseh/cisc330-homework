-- Create new database
CREATE DATABASE homework_9;

-- Use the new database
USE homework_9;

-- Create library table
CREATE TABLE library (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(80) NOT NULL,
    PRIMARY KEY (id)
);

-- Create books table
CREATE TABLE books (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(80) NOT NULL,
    PRIMARY KEY (id)
);

-- Create libraryBook table
CREATE TABLE libraryBook (
    id INT(11) NOT NULL AUTO_INCREMENT,
    libraryID INT(11) NOT NULL,
    bookID INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (libraryID) REFERENCES library(id),
    FOREIGN KEY (bookID) REFERENCES books(id)
);

-- Insert data into library table
INSERT INTO library (name) VALUES
    ('Central Library'),
    ('Downtown Branch'),
    ('University Library'),
    ('Public Library');

-- Insert data into books table
INSERT INTO books (name) VALUES
    ('The Great Gatsby'),
    ('To Kill a Mockingbird'),
    ('1984'),
    ('Pride and Prejudice'),
    ('The Hobbit');

-- Insert data into libraryBook table
-- Assuming ids from above inserts, linking books to libraries
INSERT INTO libraryBook (libraryID, bookID) VALUES
    (1, 1),  -- Central Library has The Great Gatsby
    (1, 2),  -- Central Library has To Kill a Mockingbird
    (2, 1),  -- Downtown Branch has The Great Gatsby
    (3, 3),  -- University Library has 1984
    (3, 4),  -- University Library has Pride and Prejudice
    (4, 5);  -- Public Library has The Hobbit

-- Select library by id = 1
SELECT * FROM library WHERE id = 1;

-- Select book using LIKE with wildcard
-- This example searches for any book containing the word 'The'
SELECT * FROM books WHERE name LIKE '%The%';

-- Select all books ordered alphabetically by name
SELECT * FROM books ORDER BY name ASC;

-- Join query to show all books and their libraries
SELECT 
    l.name AS library_name,
    b.name AS book_name
FROM library l
INNER JOIN libraryBook lb ON l.id = lb.libraryID
INNER JOIN books b ON b.id = lb.bookID
ORDER BY l.name, b.name;


-- Update a specific book's name using its id
UPDATE books 
SET name = 'The Great Gatsby (Updated Edition)'
WHERE id = 1;


-- First, delete any references to the book in the libraryBook table
DELETE FROM libraryBook 
WHERE bookID = 1;

-- Then delete the book from the books table
DELETE FROM books 
WHERE id = 1;

