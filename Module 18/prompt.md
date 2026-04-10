In this exercise, you will create two users and a role. You will grant privileges directly to the first user, but you will grant privileges to the second user by granting privileges to the role and then assigning the user to that role. In addition, you will use MySQL Workbench to connect as the two users, check the privileges for the first user, and check the active roles for the second user.

1. Use MySQL Workbench to connect as the root user. Write and execute a script that creates a user with a username of ‘section18usera’ and a password of your choosing.
This user should be able to connect to MySQL from any computer. This user should have SELECT, INSERT, UPDATE, and DELETE privileges for the Customers, Addresses, Orders, and Order_Items tables of the My Guitar Shop database. However, this user should only have SELECT privileges for the Products and Categories tables. Also, this user should not have the right to grant privileges to other users.
Check the privileges for the user by using the SHOW GRANTS statement.
Upload the script to gradescope that creates the user.

2. Use MySQL Workbench to connect as the root user.
Write and execute a script that creates another user with a username of ‘section18userb’and password of your choice. This user should only be able to connect from the same computer as the computer that’s running the MySQL server.
Upload the script to gradescope that creates the user.

3. Write and execute a script that creates a role named clerk. The role should have the SELECT privilege for  the Customers, Addresses, Orders, and Line_Items tables of the My Guitar Shop database.
Assign the user created in exercise 2 to the new role.
Set the default role for the user to clerk.
Check the privileges for the role by using the SHOW GRANTS statement.
Use MySQL Workbench to create a connection for the user and then connect as that user. Write a SELECT statement to display the roles that are currently active.
Upload the script to gradescope that creates the role.