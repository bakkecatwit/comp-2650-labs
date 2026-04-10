/*
Write a SELECT statement that uses the ranking functions to rank products by the total quantity sold. Return these columns:
The product_name column from the Products table
A column named total_quantity that shows the sum of the quantity for each product in the Order_Items table
A column named ranking that uses the RANK function to rank the total quantity in descending sequence 
A column named dense_ranking that uses the DENSE_RANK function to rank the total quantity in descending sequence 
Sort the result set by the product_name column in ascending sequence.
*/

SELECT
    totals.product_name,
    totals.total_quantity,
    RANK() OVER (ORDER BY totals.total_quantity DESC) AS ranking,
    DENSE_RANK() OVER (ORDER BY totals.total_quantity DESC) AS dense_ranking
FROM
    (
        SELECT
            p.product_name,
            SUM(oi.quantity) AS total_quantity
        FROM
            products p
            JOIN order_items oi ON p.product_id = oi.product_id
        GROUP BY
            p.product_id,
            p.product_name
    ) AS totals
ORDER BY
    totals.product_name ASC;
