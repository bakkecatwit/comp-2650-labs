/*
Write a script that creates and calls a stored procedure named test. This stored procedure should create a cursor for a result set that consists of the product_name and list_price columns for each product with a list price that’s greater than $700. The rows in this result set should be sorted in descending sequence by list price. The procedure should return a 1 row, 1 column result set with a column named result.  The procedure should set the return value to a string variable that includes the product_name and list price for each product so it looks something like this:
*Gibson SG*,*2517.00*|*Gibson Les Paul*,*1199.00*|
Here, each value is enclosed in asterisk(*), each column is separated by a     comma (,) and each row is separated by a pipe character (|).
*/

