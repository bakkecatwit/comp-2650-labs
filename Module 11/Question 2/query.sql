/*
Write a script that adds an index to the my_guitar_shop database for the lastname and firstname fields in the Customers table.  You can name the index anything you like.
*/

CREATE INDEX idx_customers_last_first
ON customers (last_name, first_name);
