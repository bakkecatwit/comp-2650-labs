Use a EER Design tool that supports forward engineering and design a 3 table solutions with the following features:

Three Tables:

1. student
2. faculty
3. course

Fields:
A Faculty member has these attributes:

1. Id - Integer - AUTO INCREMENT - Primary Key
  1. FirstName - Varchar 255
  2. LastName - Varchar 255
  3. Email - Varchar 255
  4. Degree - Varchar 255
2. A student has these attributes:
  1. Id - Integer - AUTO INCREMENT - Primary Key
  2. FirstName - Varchar 255
  3. LastName - Varchar 255
  4. Email - Varchar 255
  5. Class - Char 2  (example JR)
3. A course has these attributes:
  1. Department - Char 4 (example COMP) - Primary Key
  2. Number - Char 4  (example 2650) - Primary Key
  3. Name - Varchar 255

Relationships:

1. Each student can have many courses
2. Each course can have many students
3. Each faculty can have many courses
4. Each course can have one faculty

Make sure you match the table and attribute names exactly to the specification above.  Generate SQL from your EER diagram and save the query as query.sql,  Make sure you are not generating the schema qualifiers in the object names. The individual labs will test each table.	

1. This lab tests your student table through the query.sql file.
2. This lab tests your course table through the query.sql file.
3. This lab tests your faculty table through the query.sql file.

