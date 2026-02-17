/*
Write an UPDATE statement that modifies the Customers table. Change the first_name column to “Al” for the customer with an email address of 'allan.sherwood@yahoo.com'.
*/

UPDATE customers
SET first_name = 'Al'
WHERE email_address = 'allan.sherwood@yahoo.com';