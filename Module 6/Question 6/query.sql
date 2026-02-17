/*
Write a SELECT statement that answers this question: What is the total amount ordered for each product? Return these columns:
The product_name column from the Products table
The total amount for each product in the Order_Items table aliased as product_total (Hint: You can calculate the total amount by subtracting the discount amount from the item price and then multiplying it by the quantity)
Use the WITH ROLLUP operator to include a row that gives the grand total.
Note: Once you add the WITH ROLLUP operator, you may need to use MySQL Workbench’s Execute SQL Script button instead of its Execute Current Statement button to execute this statement.
*/

SELECT product_name, SUM((item_price - discount_amount) * quantity) AS product_total
FROM products
JOIN order_items ON products.product_id = order_items.product_id
GROUP BY product_name WITH ROLLUP;