/*
Write a SELECT statement that answers this question: What is the total quantity purchased for each product within each category? Return these columns:
The category_name column from the category table
The product_name column from the products table
The total quantity purchased for each product with orders in the Order_Items table.  Alias this field as qty_purchased
Use the WITH ROLLUP operator to include rows that give a summary for each category name as well as a row that gives the grand total.
Use the IF and GROUPING functions to replace null values in the category_name and product_name columns with literal values if they’re for summary rows.  For the category grouping use a literal of ‘Category Total’ and for the overall total use ‘Grand Total’ 
*/

SELECT
    IF(GROUPING(category_name), 'Grand Total', category_name) AS category_name,
    IF(GROUPING(product_name), 'Category Total', product_name) AS product_name,
    SUM(quantity) AS qty_purchased
FROM categories
JOIN products ON categories.category_id = products.category_id
JOIN order_items ON products.product_id = order_items.product_id
GROUP BY category_name, product_name WITH ROLLUP
ORDER BY GROUPING(category_name), category_name, GROUPING(product_name), product_name;