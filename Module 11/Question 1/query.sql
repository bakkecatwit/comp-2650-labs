/*
Write a script that adds an index to the my_guitar_shop database for the zip code field in the addresses table.  You can name the index anything you like.
*/

CREATE INDEX idx_addresses_zip_code
ON addresses (zip_code);
