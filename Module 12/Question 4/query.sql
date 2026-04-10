/*
Create a view named best_products that uses the same table you used in in exercise 3. The view should have the same columns returned. The view should only return the five best selling products by order_total.
*/

CREATE VIEW best_products AS
SELECT
    p.product_name,
    COUNT(*) AS order_count,
    SUM((oi.item_price - oi.discount_amount) * oi.quantity) AS order_total
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY order_total DESC
LIMIT 5;
