/*
Use a correlated subquery to return one row per customer, representing the customer’s oldest order (the one with the earliest date). Each row should include these three columns: email_address, oldest_order_id, and oldest_order_date.
Sort the result set by the oldest_order_date and oldest_order_id columns.
*/

SELECT email_address, order_id AS oldest_order_id, order_date AS oldest_order_date
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
WHERE order_date = (SELECT MIN(order_date) FROM orders WHERE customer_id = customers.customer_id)
ORDER BY oldest_order_date, oldest_order_id ASC;