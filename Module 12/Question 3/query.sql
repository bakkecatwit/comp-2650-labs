/*
Create a view named product_summary that uses the same table you used in in exercise 2. This view should return summary information about each product.
Each row should include product_name, order_count (the number of times the product has been ordered) and order_total (the total sales for the product).
*/

CREATE VIEW product_summary AS
SELECT
    p.product_name,
    COUNT(*) AS order_count,
    SUM((oi.item_price - oi.discount_amount) * oi.quantity) AS order_total
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_name;
