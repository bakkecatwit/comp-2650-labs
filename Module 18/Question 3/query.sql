USE my_guitar_shop;

DROP ROLE IF EXISTS 'clerk';
CREATE ROLE 'clerk';

GRANT SELECT
ON my_guitar_shop.customers
TO 'clerk';

GRANT SELECT
ON my_guitar_shop.addresses
TO 'clerk';

GRANT SELECT
ON my_guitar_shop.orders
TO 'clerk';

GRANT SELECT
ON my_guitar_shop.order_items
TO 'clerk';

GRANT 'clerk'
TO 'section18userb'@'localhost';

SET DEFAULT ROLE 'clerk'
TO 'section18userb'@'localhost';

SHOW GRANTS FOR 'clerk';

-- Run this after connecting as section18userb.
SELECT CURRENT_ROLE();
