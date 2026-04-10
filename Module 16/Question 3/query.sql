/*
Create a table named Products_Audit. This table should have all columns of the Products table, except the description column. Also, it should have an audit_id column for its primary key, and the date_added column should be changed to date_updated.
Create a trigger named products_after_update. This trigger should insert the old data about the product into the Products_Audit table after the row is updated. Then, test this trigger with an appropriate UPDATE statement before uploading to gradescope in a separate query from what you submit.
*/

DROP TABLE IF EXISTS products_audit;

CREATE TABLE products_audit AS
SELECT
    product_id,
    category_id,
    product_code,
    product_name,
    list_price,
    discount_percent,
    date_added AS date_updated
FROM products
WHERE 1 = 0;

ALTER TABLE products_audit
    ADD COLUMN audit_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

DROP TRIGGER IF EXISTS products_after_update;

DELIMITER //

CREATE TRIGGER products_after_update
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
    INSERT INTO products_audit
        (product_id, category_id, product_code, product_name,
         list_price, discount_percent, date_updated)
    VALUES
        (OLD.product_id, OLD.category_id, OLD.product_code, OLD.product_name,
         OLD.list_price, OLD.discount_percent, OLD.date_added);
END //

DELIMITER ;
