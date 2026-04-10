/*
Write a script that creates a stored procedure named insert_category. Code the procedure so that it adds a new row to the Categories table. To do that, the procedure should have a parameter for the category name.
*/

DELIMITER //

CREATE PROCEDURE insert_category
(
    IN p_category_name VARCHAR(255)
)
BEGIN
    INSERT INTO categories (category_name)
    VALUES (p_category_name);
END //

DELIMITER ;
