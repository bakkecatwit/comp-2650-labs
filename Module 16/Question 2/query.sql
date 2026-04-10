/*
Create a trigger named products_before_insert that inserts the current date for the date_added column of the Products table if the value for that column is null.
Test this trigger with an appropriate INSERT statement before uploading to gradescope in a separate query from what you submit.
*/

DROP TRIGGER IF EXISTS products_before_insert;

DELIMITER //

CREATE TRIGGER products_before_insert
BEFORE INSERT ON products
FOR EACH ROW
BEGIN
    IF NEW.date_added IS NULL THEN
        SET NEW.date_added = NOW();
    END IF;
END //

DELIMITER ;
