/*
Write a SELECT statement that uses an aggregate window function to get the total amount of each order. Return these columns:
The order_id column from the Order_Items table
The total amount for each order item in the Order_Items table (Hint: You can calculate the total amount by subtracting the discount amount from the item price and then multiplying it by the quantity).  Alias this field as item_amount
The total amount for each order.  Alias this field as order_amount
Sort the result set in ascending sequence by the order_id column.
*/

SELECT 
    order_id,
    (item_price - discount_amount) * quantity AS item_amount,
    SUM((item_price - discount_amount) * quantity) OVER (PARTITION BY order_id) AS order_amount
FROM order_items
ORDER BY order_id ASC;