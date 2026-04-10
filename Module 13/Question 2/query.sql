/*
Write a script that creates and calls a stored procedure named test. This procedure should calculate the common factors of the numbers 10 and 20. To find a common factor, you can use the modulo operator (%) to check whether a number that’s less than 10 can be evenly divided into both numbers. The procedure should return a 1 row, 1 column result set with a column named result.  The return result should be a string that includes the common factors like this: 
Common factors of 10 and 20: 1 2 5
*/

DELIMITER //

CREATE PROCEDURE test()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE factors_text VARCHAR(255) DEFAULT 'Common factors of 10 and 20:';

    WHILE i <= 10 DO
        IF MOD(10, i) = 0 AND MOD(20, i) = 0 THEN
            SET factors_text = CONCAT(factors_text, ' ', i);
        END IF;
        SET i = i + 1;
    END WHILE;

    SELECT factors_text AS result;
END //

DELIMITER ;

CALL test();
