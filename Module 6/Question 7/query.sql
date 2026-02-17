/*
Write a SELECT statement that answers this question: Which customers have ordered more than one product? Return these columns:
The email_address column from the Customers table
The count of distinct products from the customer’s orders aliased as number_of_products
Sort the result set in ascending sequence by the email_address column.
*/

SELECT email_address, COUNT(DISTINCT product_id) AS number_of_products
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_items ON orders.order_id = order_items.order_id
GROUP BY email_address
HAVING COUNT(DISTINCT product_id) > 1
ORDER BY email_address ASC;