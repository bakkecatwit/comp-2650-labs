/*
Modify the solution to exercise 4 so it only counts and totals line items that have an item_price value that’s greater than 400.
*/

SELECT email_address, COUNT(DISTINCT orders.order_id) AS order_count, SUM((item_price - discount_amount) * quantity) AS order_total
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_items ON orders.order_id = order_items.order_id
WHERE item_price > 400
GROUP BY email_address
HAVING COUNT(DISTINCT orders.order_id) > 1
ORDER BY order_total DESC;