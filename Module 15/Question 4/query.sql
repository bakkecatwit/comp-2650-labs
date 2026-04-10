/*
Write a script that creates a stored function named discount_price that calculates the discount price of an item in the Order_Items table (discount amount subtracted from item price). To do that, this function should accept one parameter for the item ID, and it should return the value of the discount price for that item.
*/

DELIMITER //

CREATE FUNCTION discount_price
(
    p_item_id INT
)
RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    DECLARE v_discount_price DECIMAL(10,2);

    SELECT item_price - discount_amount
      INTO v_discount_price
      FROM order_items
     WHERE item_id = p_item_id;

    RETURN v_discount_price;
END //

DELIMITER ;
