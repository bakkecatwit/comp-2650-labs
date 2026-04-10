USE my_guitar_shop;

DROP USER IF EXISTS 'section18usera'@'%';
CREATE USER 'section18usera'@'%' IDENTIFIED BY 'Section18UserA!123';

GRANT SELECT, INSERT, UPDATE, DELETE
ON my_guitar_shop.customers
TO 'section18usera'@'%';

GRANT SELECT, INSERT, UPDATE, DELETE
ON my_guitar_shop.addresses
TO 'section18usera'@'%';

GRANT SELECT, INSERT, UPDATE, DELETE
ON my_guitar_shop.orders
TO 'section18usera'@'%';

GRANT SELECT, INSERT, UPDATE, DELETE
ON my_guitar_shop.order_items
TO 'section18usera'@'%';

GRANT SELECT
ON my_guitar_shop.products
TO 'section18usera'@'%';

GRANT SELECT
ON my_guitar_shop.categories
TO 'section18usera'@'%';

SHOW GRANTS FOR 'section18usera'@'%';
