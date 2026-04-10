/*
Create a trigger named products_before_update that checks the new value for the discount_percent column of the Products table. This trigger should raise an appropriate error if the discount percent is greater than 100 or less than 0.
If the new discount percent is between 0 and 1, this trigger should modify the new discount percent by multiplying it by 100. That way, a discount percent of .2 becomes 20.
Test this trigger with an appropriate UPDATE statement before uploading to gradescope in a separate query from what you submit.
*/

DROP TRIGGER IF EXISTS products_before_update;

DELIMITER //

CREATE TRIGGER products_before_update
BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
    IF NEW.discount_percent > 100 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'discount_percent must be between 0 and 100.';
    ELSEIF NEW.discount_percent < 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'discount_percent must be between 0 and 100.';
    ELSEIF NEW.discount_percent > 0 AND NEW.discount_percent < 1 THEN
        SET NEW.discount_percent = NEW.discount_percent * 100;
    END IF;
END //

DELIMITER ;
