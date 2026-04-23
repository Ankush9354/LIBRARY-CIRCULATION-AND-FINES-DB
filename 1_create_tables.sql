CREATE DATABASE LibraryDB;
USE LibraryDB;

-- BOOKS TABLE
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    author VARCHAR(100),
    publisher VARCHAR(100),
    available_copies INT
);

-- MEMBERS TABLE
CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- ISSUE & RETURN TABLE
CREATE TABLE Issue_Return (
    issue_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    issue_date DATE,
    due_date DATE,
    return_date DATE,
    
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

-- FINES TABLE
CREATE TABLE Fines (
    fine_id INT PRIMARY KEY AUTO_INCREMENT,
    issue_id INT,
    fine_amount DECIMAL(5,2),
    
    FOREIGN KEY (issue_id) REFERENCES Issue_Return(issue_id)
);
