/*
Write a script that creates a stored procedure named test. This procedure should attempt to insert a new category named “Guitars” into the Categories table. The procedure should return a 1 row, 1 column result set with a column named result.  If the insert is successful, the procedure should return the value:
1 row was inserted.
If the update is unsuccessful, the procedure should return the value:
Row was not inserted - duplicate entry.
*/

DELIMITER //

CREATE PROCEDURE test()
BEGIN
    DECLARE duplicate_entry TINYINT DEFAULT 0;

    DECLARE CONTINUE HANDLER FOR 1062
    SET duplicate_entry = 1;

    INSERT INTO categories (category_name)
    VALUES ('Guitars');

    IF duplicate_entry = 1 THEN
        SELECT 'Row was not inserted - duplicate entry.' AS result;
    ELSE
        SELECT '1 row was inserted.' AS result;
    END IF;
END //

DELIMITER ;

CALL test();