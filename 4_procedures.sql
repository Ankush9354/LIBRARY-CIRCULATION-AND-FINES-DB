DELIMITER //

CREATE PROCEDURE CalculateFine()
BEGIN
    INSERT INTO Fines (issue_id, fine_amount)
    SELECT 
        issue_id,
        DATEDIFF(return_date, due_date) * 10
    FROM Issue_Return
    WHERE return_date > due_date;
END //

DELIMITER ;
