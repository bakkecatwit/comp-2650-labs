/*
Write a script that creates a stored procedure named test. This stored procedure should declare a variable and set it to the count of all products in the Products table. The stored procedure should accept an OUT  parameter where a message is passed out of the procedure.  If the count is greater than or equal to 7, the stored procedure should return the value “The number of products is greater than or equal to 7”. Otherwise, it should return the value “The number of products is less than 7”.
*/

DELIMITER //

CREATE PROCEDURE test
(
    OUT p_message VARCHAR(255)
)
BEGIN
    DECLARE v_product_count INT;

    SELECT COUNT(*)
      INTO v_product_count
      FROM products;

    IF v_product_count >= 7 THEN
        SET p_message = 'The number of products is greater than or equal to 7';
    ELSE
        SET p_message = 'The number of products is less than 7';
    END IF;
END //

DELIMITER ;
