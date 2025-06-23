# Task-1: Database Setup and Schema Design.

# 📚 Library Management System — MySQL Database

This project contains the database schema and sample data for a **Library Management System** built using MySQL. The database supports basic library operations such as member management, book records, book issuing, and categorization by genre.

---

## 🗂️ Database Overview

The database includes the following tables:

- `Members`: Stores member details.
- `Genre`: Categorizes books into genres.
- `Book`: Contains book information, linked to `Genre`.
- `Issue`: Tracks issued books and return dates.

---

## 🛠️ How to Use

1. Open **MySQL Workbench**.
2. Run the `library_schema.sql` file (or paste the SQL script).
3. Use **Reverse Engineer** (Database > Reverse Engineer) to generate the ER diagram.
4. Insert or modify sample data as needed.

---

## 🖼️ ER Diagram

Below is the entity-relationship diagram of the system, generated via MySQL Workbench:

<img width="419" alt="image" src="https://github.com/user-attachments/assets/41ac4f7e-873a-4086-86f5-7249afbce015" />



---

## 🧪 Sample Queries

```sql
-- List all books with their genre
SELECT Book.title, Genre.genre_name
FROM Book
JOIN Genre ON Book.genre_id = Genre.genre_id;

-- List all members who issued a specific book
SELECT Members.name, Book.title
FROM Issue
JOIN Members ON Issue.member_id = Members.member_id
JOIN Book ON Issue.book_id = Book.book_id;
