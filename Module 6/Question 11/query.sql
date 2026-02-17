/*
Write a SELECT statement that uses aggregate window functions to calculate the order total for each customer and the order total for each customer by date. Return these columns:
The customer_id column from the Orders table
The order_date column from the Orders table
The total amount for each order item in the Order_Items table.  Alias this column as item_total.
The sum of the order totals for each customer. Alias this column as customer_total.
The sum of the order totals for each customer by date (Hint: You can create a peer group to get these values). Alias this column as customer_total_by_date.
*/

SELECT customer_id, order_date,
       (item_price - discount_amount) * quantity AS item_total,
       SUM((item_price - discount_amount) * quantity) OVER (PARTITION BY customer_id) AS customer_total,
       SUM((item_price - discount_amount) * quantity) OVER (PARTITION BY customer_id ORDER BY order_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS customer_total_by_date
FROM orders
JOIN order_items ON orders.order_id = order_items.order_id
ORDER BY customer_id, order_date;