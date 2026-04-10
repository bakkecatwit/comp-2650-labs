/*
Create a table named Products_Audit. This table should have all columns of the Products table, except the description column. Also, it should have an audit_id column for its primary key, and the date_added column should be changed to date_updated.
Create a trigger named products_after_update. This trigger should insert the old data about the product into the Products_Audit table after the row is updated. Then, test this trigger with an appropriate UPDATE statement before uploading to gradescope in a separate query from what you submit.
*/

