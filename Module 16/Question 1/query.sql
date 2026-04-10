/*
Create a trigger named products_before_update that checks the new value for the discount_percent column of the Products table. This trigger should raise an appropriate error if the discount percent is greater than 100 or less than 0.
If the new discount percent is between 0 and 1, this trigger should modify the new discount percent by multiplying it by 100. That way, a discount percent of .2 becomes 20.
Test this trigger with an appropriate UPDATE statement before uploading to gradescope in a separate query from what you submit.
*/

