USE LibraryDB;

INSERT INTO Books (title, author, publisher, available_copies)
VALUES
('DBMS Basics', 'Korth', 'McGraw Hill', 5),
('Java Programming', 'Herbert Schildt', 'Oracle Press', 3),
('Data Structures', 'Seymour Lipschutz', 'Schaum', 4);

INSERT INTO Members (name, email, phone)
VALUES
('Ankush Sharma', 'ankush@gmail.com', '9999999999'),
('Rahul Verma', 'rahul@gmail.com', '8888888888');

-- ISSUE BOOK
INSERT INTO Issue_Return (book_id, member_id, issue_date, due_date, return_date)
VALUES
(1, 1, '2026-04-01', '2026-04-10', '2026-04-12'), -- late
(2, 2, '2026-04-05', '2026-04-12', '2026-04-11'); -- on time
