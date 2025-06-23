-- Creating and using a new database
USE LibraryDB;

-- Creating 'Members' table
CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- Creating 'Genre' table
CREATE TABLE Genre (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL UNIQUE
);

-- Creating 'Book' table with foreign key to Genre
CREATE TABLE Book (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100),
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

-- Creating 'Issue' table
CREATE TABLE Issue (
    issue_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    book_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Book(book_id)
);

-- Inserting sample data into Genre
INSERT INTO Genre (genre_name) VALUES
('Fiction'),
('Mystery'),
('Self-help'),
('Philosophy'),
('Thriller');

-- Inserting sample data into Members
INSERT INTO Members (name, email) VALUES
('Alex Khanna', 'alex.khanna@example.com'),
('Disha Verma', 'dishav12@example.com'),
('Pratiksha Chopra', 'pchopra67@example.com'),
('Trisha Gupta', 'trishg99@example.com'),
('Meera Das', 'meeradas1489@example.com');

-- Inserting sample data into Book
INSERT INTO Book (title, author, genre_id) VALUES
('The Metamorphosis', 'Franz Kafka', 4),
('The Da Vinci Code', 'Dan Brown', 2),
('Ikigai', 'Garcia Miralles', 3),
('The Talented Mr. Ripley', 'Patricia Highsmith', 5),
('Atomic Habits', 'James Clear', 3);

-- Inserting sample data into Issue
INSERT INTO Issue (member_id, book_id, issue_date, return_date) VALUES
(1, 3, '2025-07-26', '2025-08-26'),
(2, 1, '2025-08-08', '2025-09-04'),
(3, 5, '2025-08-17', '2025-09-17'),
(4, 4, '2025-08-26', '2025-09-26'),
(5, 2, '2025-10-28', '2025-11-28');