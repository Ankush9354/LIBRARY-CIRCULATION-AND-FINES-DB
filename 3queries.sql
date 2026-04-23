SELECT m.name, b.title, i.issue_date, i.due_date
FROM Issue_Return i
JOIN Members m ON i.member_id = m.member_id
JOIN Books b ON i.book_id = b.book_id;
SELECT * 
FROM Issue_Return
WHERE return_date > due_date;
SELECT 
    issue_id,
    DATEDIFF(return_date, due_date) * 10 AS fine
FROM Issue_Return
WHERE return_date > due_dat
