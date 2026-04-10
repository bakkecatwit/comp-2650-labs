/*
Write a script that creates and calls a stored procedure named test. This stored procedure should create a cursor for a result set that consists of the product_name and list_price columns for each product with a list price that’s greater than $700. The rows in this result set should be sorted in descending sequence by list price. The procedure should return a 1 row, 1 column result set with a column named result.  The procedure should set the return value to a string variable that includes the product_name and list price for each product so it looks something like this:
*Gibson SG*,*2517.00*|*Gibson Les Paul*,*1199.00*|
Here, each value is enclosed in asterisk(*), each column is separated by a     comma (,) and each row is separated by a pipe character (|).
*/

DELIMITER //

CREATE PROCEDURE test()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE v_product_name VARCHAR(255);
    DECLARE v_list_price DECIMAL(10, 2);
    DECLARE output_text TEXT DEFAULT '';

    DECLARE product_cursor CURSOR FOR
        SELECT product_name, list_price
        FROM products
        WHERE list_price > 700
        ORDER BY list_price DESC;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN product_cursor;

    read_loop: LOOP
        FETCH product_cursor INTO v_product_name, v_list_price;

        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        SET output_text = CONCAT(
            output_text,
            '*', v_product_name, '*',
            ',',
            '*', v_list_price, '*',
            '|'
        );
    END LOOP;

    CLOSE product_cursor;

    SELECT output_text AS result;
END //

DELIMITER ;

CALL test();
