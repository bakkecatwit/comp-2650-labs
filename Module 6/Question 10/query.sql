/*
Modify the solution to exercise 9 so the column that contains the total amount for each order contains a cumulative total by item amount.
Add another column to the SELECT statement that uses an aggregate window function to get the average item amount for each order. Alias this column as avg_order_amount
Modify the SELECT statement so it uses a named window for the two aggregate functions. 
*/

SELECT
    order_id,
    (item_price - discount_amount) * quantity AS item_amount,
    SUM((item_price - discount_amount) * quantity) OVER w_cumulative AS order_amount,
    AVG((item_price - discount_amount) * quantity) OVER w AS avg_order_amount
FROM order_items
WINDOW
    w AS (PARTITION BY order_id),
    w_cumulative AS (w ORDER BY (item_price - discount_amount) * quantity, item_id)
ORDER BY order_id ASC, item_amount ASC, item_id ASC;